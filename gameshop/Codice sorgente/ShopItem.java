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
public class ShopItem extends Table
{
    private int id;
    private String nomeArticolo;
    private String console;
    private int quantita;
    private int usato;
    private float prezzo;
    private int codice;

    // <editor-fold desc="getters and setters">
    public int getId() {
        return id;
    }

    private void setId(int id) {
        this.id = id;
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

    public int getUsato() {
        return usato;
    }

    public void setUsato(int usato) {
        this.usato = usato;
    }

    public float getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(float prezzo) {
        this.prezzo = prezzo;
    }

    public int getCodice() {
        return codice;
    }

    private void setCodice(int codice) {
        this.codice = codice;
    }
    // </editor-fold>   
    
    /*public ShopItem() throws SQLException, InstantiationException, ClassNotFoundException, IllegalAccessException
    {
        Globals.getStatement().executeUpdate("INSERT INTO negozio (Quantita, Usato, Prezzo) VALUES (0, 2, 0);");
        Globals.getStatement().executeQuery("SELECT * FROM negozio WHERE Usato = 2;");
        Globals.updateRS();
        while (Globals.getResultSet().next())
        {
            setInitialized(true);
            
            setId(Globals.getResultSet().getInt("ID"));
            setNomeArticolo("");
            setConsole("");
            setQuantita(0);
            setUsato(0);
            setPrezzo(0);

            break;
        }
    }*/
    
    public ShopItem(String filter) throws SQLException, InstantiationException, ClassNotFoundException, IllegalAccessException
    {
        Globals.getStatement().executeQuery("SELECT negozio.ID, negozio.Codice, articoli.NomeArticolo, articoli.Console, negozio.Quantita, negozio.Usato, negozio.Prezzo FROM negozio, articoli WHERE negozio.Codice = articoli.Codice AND " + filter + ";");
        Globals.updateRS();
        while (Globals.getResultSet().next())
        {
            setInitialized(true);
            
            setId(Globals.getResultSet().getInt("ID"));
            setNomeArticolo(Globals.getResultSet().getString("NomeArticolo"));
            setConsole(Globals.getResultSet().getString("Console"));
            setQuantita(Globals.getResultSet().getInt("Quantita"));
            setUsato(Globals.getResultSet().getInt("Usato"));
            setPrezzo(Globals.getResultSet().getFloat("Prezzo"));
            setCodice(Globals.getResultSet().getInt("Codice"));
            break;
        }
    }
    
    public void Finalize() throws SQLException
    {
        Globals.getStatement().executeUpdate("UPDATE negozio SET Codice = " + getCodice() + " WHERE ID = " + getId());
        Globals.getStatement().executeUpdate("UPDATE negozio SET Quantita = " + getQuantita() + " WHERE ID = " + getId());
        Globals.getStatement().executeUpdate("UPDATE negozio SET Usato = " + getUsato() + " WHERE ID = " + getId());
        Globals.getStatement().executeUpdate("UPDATE negozio SET Prezzo = " + getPrezzo() + " WHERE ID = " + getId());
    }
    
    public void Delete() throws SQLException
    {
        Globals.getStatement().executeUpdate("DELETE FROM negozio WHERE ID = " + getId());
    }
}
