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

public class Article extends Table
{
    private int codice;
    private String nomeArticolo;
    private String tipo;
    private String console;
    private String genere;
    private String descrizione;
    
    // <editor-fold desc="getters and setters">
    public int getCodice() {
        return codice;
    }

    public void setCodice(int codice) {
        this.codice = codice;
    }

    public String getNomeArticolo() {
        return nomeArticolo;
    }

    public void setNomeArticolo(String nomeArticolo) {
        this.nomeArticolo = nomeArticolo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getConsole() {
        return console;
    }

    public void setConsole(String console) {
        this.console = console;
    }

    public String getGenere() {
        return genere;
    }

    public void setGenere(String genere) {
        this.genere = genere;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }
    //</editor-fold>
    
    /*private Connection db;
    private Statement stmt;
    private ResultSet rs;
    
    private void InitSQL() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        db = DriverManager.getConnection("jdbc:mysql://localhost/se_proj?user=admin&password=admin");
        stmt =  (Statement) db.createStatement();
    }*/
    
    public Article() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException
    {
        //InitSQL();
        Globals.getStatement().executeUpdate("INSERT INTO articoli (NomeArticolo, Tipo, Console) VALUES (\"dummy\", \"dummy\", \"dummy\");");
        Globals.getStatement().executeQuery("SELECT * FROM articoli WHERE NomeArticolo = \"dummy\";");
        Globals.updateRS();
        while (Globals.getResultSet().next())
        {
            setInitialized(true);
            
            setCodice(Globals.getResultSet().getInt("Codice"));
            setNomeArticolo("");
            setTipo("");
            setConsole("");
            //setContratto(rs.getString("Contratto"));
            //setOrario(rs.getString("Orario"));
            //setStipendio(rs.getFloat("Stipendio"));
            //setRuolo(rs.getString("Ruolo"));
            Finalize();
            break;
        }
    }
    
    public Article(String filter) throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException
    {
        //InitSQL();
        Globals.getStatement().executeQuery("SELECT * FROM articoli WHERE " + filter);
        Globals.updateRS();
        while (Globals.getResultSet().next())
        {
            setInitialized(true);

            setCodice(Globals.getResultSet().getInt("Codice"));
            setNomeArticolo(Globals.getResultSet().getString("NomeArticolo"));
            setTipo(Globals.getResultSet().getString("Tipo"));
            setConsole(Globals.getResultSet().getString("Console"));
            setGenere(Globals.getResultSet().getString("Genere"));
            setDescrizione(Globals.getResultSet().getString("Descrizione"));
            break;
        }
    }
    
    public void Finalize() throws SQLException
    {
        Globals.getStatement().executeUpdate("UPDATE articoli SET NomeArticolo = \"" + getNomeArticolo() + "\" WHERE Codice = " + getCodice() + ";");
        Globals.getStatement().executeUpdate("UPDATE articoli SET Tipo = \"" + getTipo() + "\" WHERE Codice = " + getCodice() + ";");
        Globals.getStatement().executeUpdate("UPDATE articoli SET Console = \"" + getConsole() + "\" WHERE Codice = " + getCodice() + ";");
        Globals.getStatement().executeUpdate("UPDATE articoli SET Genere = \"" + getGenere() + "\" WHERE Codice = " + getCodice() + ";");
        Globals.getStatement().executeUpdate("UPDATE articoli SET Descrizione = \"" + getDescrizione() + "\" WHERE Codice = " + getCodice() + ";");
    }
}
