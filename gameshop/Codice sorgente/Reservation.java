/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package se_proj;

/**
 *
 * @author jinzo78
 */
import java.sql.*;
import java.text.SimpleDateFormat;

public class Reservation extends Table
{
    private int id;
    private String nome;
    private String cognome;
    private String telefono;
    private String dataConsegna;
    private float acconto;
    private float totale;
    private int codiceProdotto;
    private String nomeArticolo;
    private Boolean initialized;

    // <editor-fold desc="getters and setters">
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDataConsegna() {
        return dataConsegna;
    }

    public void setDataConsegna(String dataConsegna) {
        this.dataConsegna = dataConsegna;
    }

    public float getAcconto() {
        return acconto;
    }

    public void setAcconto(float acconto) {
        this.acconto = acconto;
    }

    public float getTotale() {
        return totale;
    }

    public void setTotale(float totale) {
        this.totale = totale;
    }

    public int getCodiceProdotto() {
        return codiceProdotto;
    }

    public void setCodiceProdotto(int codiceProdotto) {
        this.codiceProdotto = codiceProdotto;
    }
    
    public Boolean getInitialized() {
        return this.initialized;
    }
    
    public void setInitialized(Boolean initialized) {
        this.initialized = initialized;
    }
    
    public String getNomeArticolo()
    {
        return this.nomeArticolo;
    }
    
    private void setNomeArticolo(String nomeArticolo)
    {
        this.nomeArticolo = nomeArticolo;
    }
    // </editor-fold>

    /*private Connection db;
    private Statement stmt;
    private ResultSet rs;
    
    private void InitSQL() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        db = DriverManager.getConnection("jdbc:mysql://localhost/se_proj?user=reserver&password=reserver");
        stmt =  (Statement) db.createStatement();
    }*/
    
    public Reservation() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException
    {
        //InitSQL();
        Globals.getStatement().executeUpdate("INSERT INTO prenotazioni (Nome, Cognome, Telefono, Acconto, Totale) VALUES (\"dummy\", \"dummy\", \"dummy\", 0, 0);");
        Globals.getStatement().executeQuery("SELECT * FROM prenotazioni WHERE Nome = \"dummy\";");
        Globals.updateRS();
        while (Globals.getResultSet().next())
        {
            setInitialized(true);
            
            setId(Globals.getResultSet().getInt("ID"));
            setNome("");
            setCognome("");
            setTelefono("");
            setAcconto(0);
            setTotale(0);
            //setCodiceProdotto(0);
            //Finalize();
            break;
        }
    }
    
    public Reservation(String filter) throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException
    {
        //InitSQL();
        Globals.getStatement().executeQuery("SELECT prenotazioni.ID, prenotazioni.Nome, prenotazioni.Cognome, prenotazioni.Telefono, prenotazioni.DataConsegna, prenotazioni.Acconto, prenotazioni.Totale, prenotazioni.CodiceProdotto, articoli.NomeArticolo FROM prenotazioni, articoli WHERE prenotazioni.CodiceProdotto = articoli.Codice AND " + filter + ";");
        Globals.updateRS();
        while (Globals.getResultSet().next())
        {
            setInitialized(true);

            setId(Globals.getResultSet().getInt("ID"));
            setNome(Globals.getResultSet().getString("Nome"));
            setCognome(Globals.getResultSet().getString("Cognome"));
            setTelefono(Globals.getResultSet().getString("Telefono"));
            setDataConsegna(Globals.getResultSet().getString("DataConsegna"));
            setAcconto(Globals.getResultSet().getFloat("Acconto"));
            setTotale(Globals.getResultSet().getFloat("Totale"));
            setCodiceProdotto(Globals.getResultSet().getInt("CodiceProdotto"));
            setNomeArticolo(Globals.getResultSet().getString("NomeArticolo"));
            break;
        }
    }
    
    public void Finalize() throws SQLException
    {
        Globals.getStatement().executeUpdate("UPDATE prenotazioni SET Nome = \"" + getNome() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE prenotazioni SET Cognome = \"" + getCognome() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE prenotazioni SET Telefono = \"" + getTelefono() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE prenotazioni SET DataConsegna = \"" + getDataConsegna() + "\" WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE prenotazioni SET Acconto = " + getAcconto() + " WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE prenotazioni SET Totale = " + getTotale() + " WHERE ID = " + getId() + ";");
        Globals.getStatement().executeUpdate("UPDATE prenotazioni SET CodiceProdotto = " + getCodiceProdotto() + " WHERE ID = " + getId() + ";");
    }
    
    public void Delete() throws SQLException
    {
        Globals.getStatement().executeUpdate("DELETE FROM prenotazioni WHERE ID = " + getId() + ";");
    }
}
