/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package se_proj;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author jinzo78
 */
public class User extends Table
{
    private int id;
    private String nome;
    private String cognome;
    private String email;
    private String password;
    private String contratto;
    private String orario;
    private float stipendio;
    private String ruolo;

    // <editor-fold desc="setters and getters">
    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) throws SQLException {
        this.nome = nome;
    }

    public void setCognome(String cognome) throws SQLException {
        this.cognome = cognome;
    }

    public void setEmail(String email) throws SQLException {
        this.email = email;
    }

    public void setPassword(String password) throws SQLException {
        this.password = password;
    }

    public void setContratto(String contratto) throws SQLException {
        this.contratto = contratto;
    }

    public void setOrario(String orario) throws SQLException {
        this.orario = orario;
    }

    public void setStipendio(float stipendio) throws SQLException {
        this.stipendio = stipendio;
    }

    public void setRuolo(String ruolo) throws SQLException {
        this.ruolo = ruolo;
    }
    
    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getCognome() {
        return cognome;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getContratto() {
        return contratto;
    }

    public String getOrario() {
        return orario;
    }

    public float getStipendio() {
        return stipendio;
    }

    public String getRuolo() {
        return ruolo;
    }
    // </editor-fold>
    
    /*private Connection db;
    private Statement stmt;
    private ResultSet rs;
    
    private void InitSQL() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        db = DriverManager.getConnection("jdbc:mysql://localhost/se_proj?user=login&password=login");
        stmt =  (Statement) db.createStatement();
    }*/
    
    public User() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException
    {
        //InitSQL();
        Globals.getStatement().executeUpdate("INSERT INTO utenti (Nome, Cognome, Email, Password) VALUES (\"dummy\", \"dummy\", \"dummy@dummy.dummy\", \"dummy\");");
        Globals.getStatement().executeQuery("SELECT * FROM utenti WHERE Nome = \"dummy\";");
        Globals.updateRS();
        while (Globals.getResultSet().next())
        {
            setInitialized(true);
            
            setId(Globals.getResultSet().getInt("ID"));
            setNome("");
            setCognome("");
            setEmail("");
            setPassword("");
            //setContratto(rs.getString("Contratto"));
            //setOrario(rs.getString("Orario"));
            //setStipendio(rs.getFloat("Stipendio"));
            //setRuolo(rs.getString("Ruolo"));
            Finalize();
            break;
        }
    }
    
    public User(String filter) throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException
    {
        //InitSQL();
        Globals.getStatement().executeQuery("SELECT * FROM utenti WHERE " + filter);
        Globals.updateRS();
        while (Globals.getResultSet().next())
        {
            setInitialized(true);

            setId(Globals.getResultSet().getInt("ID"));
            setNome(Globals.getResultSet().getString("Nome"));
            setCognome(Globals.getResultSet().getString("Cognome"));
            setEmail(Globals.getResultSet().getString("Email"));
            setPassword(Globals.getResultSet().getString("Password"));
            setContratto(Globals.getResultSet().getString("Contratto"));
            setOrario(Globals.getResultSet().getString("Orario"));
            setStipendio(Globals.getResultSet().getFloat("Stipendio"));
            setRuolo(Globals.getResultSet().getString("Ruolo"));
            break;
        }
    }
    
    public void Finalize() throws SQLException
    {
        Globals.getStatement().executeUpdate("UPDATE utenti SET Nome = \"" + getNome() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE utenti SET Cognome = \"" + getCognome() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE utenti SET Email = \"" + getEmail() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE utenti SET Password = \"" + getPassword() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE utenti SET Contratto = \"" + getContratto() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE utenti SET Orario = \"" + getOrario() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE utenti SET Stipendio = " + getStipendio() + " WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE utenti SET Ruolo = \"" + getRuolo() + "\" WHERE ID = " + getId() + ";");
    }
    
    public void Delete() throws SQLException
    {
        Globals.getStatement().executeUpdate("DELETE FROM utenti WHERE ID = " + getId() + ";");
    }
}
