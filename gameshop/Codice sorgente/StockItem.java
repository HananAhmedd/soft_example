/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package se_proj;

import java.sql.SQLException;

/**
 *
 * @author jinzo78
 */
public class StockItem extends Table
{
    private int codice;
    private String nomeArticolo;
    private String console;
    private int quantita;
    
    // <editor-fold desc="getters and setters">
    
    public int getCodice()
    {
        return codice;
    }

    private void setCodice(int codice) {
        this.codice = codice;
    }

    public String getNomeArticolo() {
        return nomeArticolo;
    }

    private void setNomeArticolo(String nomeArticolo) {
        this.nomeArticolo = nomeArticolo;
    }

    public String getConsole() {
        return console;
    }

    private void setConsole(String console) {
        this.console = console;
    }

    public int getQuantita() {
        return quantita;
    }

    public void setQuantita(int quantita) {
        this.quantita = quantita;
    }

    // </editor-fold>
    
    /*public StockItem() throws SQLException, InstantiationException, ClassNotFoundException, IllegalAccessException
    {
        Globals.getStatement().executeUpdate("INSERT INTO magazzino (Quantita) VALUES (-1)");
        Globals.getStatement().execute
    }*/
    
    public StockItem(String filter) throws SQLException, InstantiationException, ClassNotFoundException, IllegalAccessException {
        Globals.getStatement().executeQuery("SELECT magazzino.Codice, articoli.NomeArticolo, articoli.Console, magazzino.Quantita FROM articoli, magazzino WHERE articoli.Codice = magazzino.Codice AND " + filter + ";");
        Globals.updateRS();
        while (Globals.getResultSet().next())
        {
            setInitialized(true);
            
            setCodice(Globals.getResultSet().getInt("Codice"));
            setNomeArticolo(Globals.getResultSet().getString("NomeArticolo"));
            setConsole(Globals.getResultSet().getString("Console"));
            setQuantita(Globals.getResultSet().getInt("Quantita"));
            break;
        }
    }
    
    public void Finalize() throws SQLException
    {
        Globals.getStatement().executeUpdate("UPDATE magazzino SET Quantita = " + getQuantita() + " WHERE Codice = " + getCodice());
    }
}
