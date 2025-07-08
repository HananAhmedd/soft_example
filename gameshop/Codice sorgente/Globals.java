/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package se_proj;

import java.sql.*;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author jinzo78
 */
public class Globals
{
    private static User user;
    private static boolean userSetted = false;
    
    Globals() throws InstantiationException, ClassNotFoundException, IllegalAccessException
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
    }
    
    public static User getUser()
    {
        return user;
    }
    
    public static void setUser(User user) throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException
    {
        if (userSetted) return;
        Globals.user = user;
        userSetted = true;
        if (user.getRuolo().equals("Amministratore"))
        {
            db = DriverManager.getConnection("jdbc:mysql://localhost/se_proj?user=admin&password=admin");
            stmt = (Statement) db.createStatement();
            new AdminForm().setVisible(true);
        }
        else if (user.getRuolo().equals("Negoziante"))
        {
            db = DriverManager.getConnection("jdbc:mysql://localhost/se_proj?user=shopper&password=shopper");
            stmt = (Statement) db.createStatement();
            new ShopManagerForm().setVisible(true);
        }
        else
        {
            db = DriverManager.getConnection("jdbc:mysql://localhost/se_proj?user=stockman&password=stockman");
            stmt = (Statement) db.createStatement();
            new StockManagerForm().setVisible(true);
        }
        loadArticles();
        if (user.getRuolo().equals("Amministratore") || user.getRuolo().equals("Negoziante"))
        {
            loadShop();
            loadReservations();
        }
        else
            loadStock();
    }
    
    private static Connection db;
    private static Statement stmt;
    
    public static Statement getStatement()
    {
        return stmt;
    }
    
    private static ResultSet rs;

    public static ResultSet getResultSet() {
        return rs;
    }

    public static void setResultSet(ResultSet rs) {
        Globals.rs = rs;
    }
    
    public static void updateRS() throws SQLException
    {
        Globals.rs = Globals.stmt.getResultSet();
    }
    
    public static void prepareToVerifyUser() throws SQLException
    {
        db = DriverManager.getConnection("jdbc:mysql://localhost/se_proj?user=login&password=login");
        stmt = (Statement) db.createStatement();
    }
    
    public static void closeVerifyConnection() throws SQLException
    {
        db.close();
    }
    
    private static HashMap<Integer, Article> articles;
    public static HashMap<Integer, Article> getArticles()
    {
        return articles;
    }
    public static void loadArticles() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException
    {
        ArrayList ids = new ArrayList();
        stmt.executeQuery("SELECT * FROM articoli;");
        updateRS();
        while (rs.next())
            ids.add(rs.getInt("Codice"));
        articles = new HashMap<>();
        for (Object id : ids)
            articles.put((Integer)id, new Article("Codice = " + id.toString()));
    }
    
    private static HashMap<Integer, ShopItem> shopItems;
    public static HashMap<Integer, ShopItem> getShopItems()
    {
        return shopItems;
    }
    public static void loadShop() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException
    {
        ArrayList ids = new ArrayList();
        stmt.executeQuery("SELECT * FROM negozio;");
        updateRS();
        while (rs.next())
            ids.add(rs.getInt("ID"));
        shopItems = new HashMap<>();
        for (Object id : ids)
            shopItems.put((Integer)id, new ShopItem("ID = " + id.toString()));
    }

    private static HashMap<Integer, StockItem> stockItems;
    public static HashMap<Integer, StockItem> getStockItems()
    {
        return stockItems;
    }
    public static void loadStock() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException
    {
        ArrayList ids = new ArrayList();
        stmt.executeQuery("SELECT * FROM magazzino;");
        updateRS();
        while (rs.next())
            ids.add(rs.getInt("Codice"));
        stockItems = new HashMap<>();
        for (Object id : ids)
            stockItems.put((Integer)id, new StockItem("magazzino.Codice = " + id.toString()));
    }

    private static HashMap<Integer, Reservation> reservations;
    public static HashMap<Integer, Reservation> getReservations()
    {
        return reservations;
    }
    public static void loadReservations() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException
    {
        ArrayList ids = new ArrayList();
        stmt.executeQuery("SELECT * FROM prenotazioni;");
        updateRS();
        while (rs.next())
            ids.add(rs.getInt("ID"));
        reservations = new HashMap<>();
        for (Object id : ids)
            reservations.put((Integer)id, new Reservation("ID = " + id.toString()));
    }
}
