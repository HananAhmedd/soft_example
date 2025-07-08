

package rentalcopy;
import java.sql.*;

public class Database {
   // variabili per la connessione
    private String driver;
    private String url;
    private Connection con;
    private ResultSet rs;
    private PreparedStatement stmt=null;
    
    
    private void connessioneDB()
    {
       try{
           driver = "sun.jdbc.odbc.JdbcOdbcDriver";
           Class.forName(driver);
           url = "jdbc:odbc:RentalCopyDB";
           con = DriverManager.getConnection (url, "root","rootpass");
           //abilito l'uso delle transazioni.
           con.setAutoCommit(false);
        } catch (SQLException e) {
                 e.printStackTrace();
        } catch (ClassNotFoundException e) {
                e.printStackTrace();
        }
    }
    private void chiudiConnessioneDB(){
        try{
            con.close();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
    }
    
// query sul db uso le transazioni. 
    
public Operatore getUserPassword(String nomeUtente, String password) throws SQLException{
    //creo un oggetto operatore
    Operatore op=new Operatore();
    //apro la connessione 
    this.connessioneDB();
    try {
         stmt = con.prepareStatement("SELECT * FROM Utente WHERE Nome_Utente = ? and Password = ?");
        //setto nome utente e password
        stmt.setString(1,nomeUtente);
        stmt.setString(2,password);
        //eseguo la query
        rs = stmt.executeQuery();
        
    }
    catch (SQLException e){
        e.printStackTrace();
    }
    finally{
        stmt.close();
        this.chiudiConnessioneDB();
        if(rs.wasNull())
        {
            rs.close();
            return null;
            
        }
        else
        {
            op.setCognomeOperatore(rs.getString("Cognome"));
            op.setNomeOperatore(rs.getString("Nome"));
            op.setcFoperatore(rs.getString("Codice_Fiscale"));
            op.setPasswordOperatore(rs.getString("Password"));
            op.setAdmin(rs.getBoolean("Amministratore"));
            rs.close();
            return op;
        }
    }
    }
    
public void salvaCliente(Cliente cliente) throws SQLException{
    this.connessioneDB();
    try {
        stmt = con.prepareStatement("INSERT INTO Clienti (Codice_Fiscale,Nome,Cognome,Ragione_Sociale,Via,Citta,email,Numero_Telefonico,PEC) VALUES(?,?,?,?,?,?,?,?,?)");
        //setto nome utente e password
        stmt.setString(1,cliente.getcFCliente());
        stmt.setString(2,cliente.getCognomeCliente());
        stmt.setString(3,cliente.getCognomeCliente());
        stmt.setString(4,cliente.getRagioneSociale());
        stmt.setString(5,cliente.getViaLegale());
        stmt.setString(6,cliente.getCittaLegale());
        stmt.setString(7,cliente.geteMail());
        stmt.setString(8,cliente.getNumeroTelefonico());
        stmt.setString(9,cliente.getPEC());
        //eseguo la query
        stmt.executeUpdate();
        con.commit();
    }
    catch (SQLException e){
        e.printStackTrace();
        try{
            con.rollback();
        }
        catch (SQLException ex){
            ex.printStackTrace();
        }
        
        }
    finally{
        stmt.close();
        this.chiudiConnessioneDB();
        
    }
        }
public void salvaFotocopiatrice(Fotocopiatrice fotocopiatrice) throws SQLException{
    this.connessioneDB();
    try {
        stmt = con.prepareStatement("INSERT INTO Fotocopiatrici (Matricola,Via,Citta,Scanner,Fax,Print) VALUES(?,?,?,?,?,?)");
        //setto nome utente e password
        stmt.setString(1,fotocopiatrice.getMatricola());
        stmt.setString(2,fotocopiatrice.getVia());
        stmt.setString(3,fotocopiatrice.getCitta());
        stmt.setBoolean(4,fotocopiatrice.isScanner());
        stmt.setBoolean(5,fotocopiatrice.isFax());
        stmt.setBoolean(6,fotocopiatrice.isPrint());
        //eseguo la query
        stmt.executeUpdate();
        con.commit();
    }
    catch (SQLException e){
        e.printStackTrace();
        try{
            con.rollback();
        }
        catch (SQLException ex){
            ex.printStackTrace();
        }
        
        }
    finally{
        stmt.close();
        this.chiudiConnessioneDB();
        
    }
        }
public void salvaContratto(Contratto contratto) throws SQLException{
    this.connessioneDB();
    try {
        stmt = con.prepareStatement("INSERT INTO Contratti (Cliente,Fotocopiatrice,Tipo_Contratto,Copie_Incluse,Costo_Fisso,Costo_Copia) VALUES(?,?,?,?,?,?)");
        //setto nome utente e password
        stmt.setString(1,contratto.cliente.getNomeCliente());
        stmt.setString(2,contratto.fotocopiatrice.getMatricola());
        stmt.setObject(3,contratto.getTipoContratto());
        stmt.setInt(4,contratto.getCopieIncluse());
        stmt.setInt(5,contratto.getCostoFisso());
        stmt.setInt(6,contratto.getCostoCopia());
        //eseguo la query
        stmt.executeUpdate();
        con.commit();
    }
    catch (SQLException e){
        e.printStackTrace();
        try{
            con.rollback();
        }
        catch (SQLException ex){
            ex.printStackTrace();
        }
        
        }
    finally{
        stmt.close();
        this.chiudiConnessioneDB();
        
    }
        }
public void salvaOperatore(Operatore operatore) throws SQLException{
    this.connessioneDB();
    try {
        stmt = con.prepareStatement("INSERT INTO Operatore (Codice_Fiscale,Nome,Cognome,Password,Amministratore) VALUES(?,?,?,?,?,?)");
        //setto nome utente e password
        stmt.setString(1,operatore.getcFoperatore());
        stmt.setString(2,operatore.getNomeOperatore());
        stmt.setString(3,operatore.getCognomeOperatore());
        stmt.setString(4,operatore.getPasswordOperatore());
        stmt.setBoolean(5,operatore.isAdmin());
        //eseguo la query
        stmt.executeUpdate();
        con.commit();
    }
    catch (SQLException e){
        e.printStackTrace();
        try{
            con.rollback();
        }
        catch (SQLException ex){
            ex.printStackTrace();
        }
        
        }
    finally{
        stmt.close();
        this.chiudiConnessioneDB();
        
    }
        }
public void salvaLettura(Lettura lettura) throws SQLException{
    this.connessioneDB();
    try {
        stmt = con.prepareStatement("INSERT INTO Lettura (Fotocopiatrice,Copie_Effettuate,Contatore,Data) VALUES(?,?,?,?)");
        //setto nome utente e password
        stmt.setString(1,lettura.fotocopiatrice.getMatricola());
        stmt.setInt(2,lettura.getCopieEffettuate());
        stmt.setInt(3,lettura.getContatoreAttuale());
        stmt.setDate(4, (Date) lettura.getData());
        //eseguo la query
        stmt.executeUpdate();
        con.commit();
    }
    catch (SQLException e){
        e.printStackTrace();
        try{
            con.rollback();
        }
        catch (SQLException ex){
            ex.printStackTrace();
        }
        
        }
    finally{
        stmt.close();
        this.chiudiConnessioneDB();
        
    }
        }
public void salvaRiparazione(Riparazione riparazione) throws SQLException{
    this.connessioneDB();
    try {
        stmt = con.prepareStatement("INSERT INTO Riparazione (Matricola_Fotocopiatrice,CF_Tecnico,Costo_Riparazione) VALUES(?,?,?)");
        //setto nome utente e password
        stmt.setString(1,riparazione.fotocopiatrice.getMatricola());
        stmt.setString(2,riparazione.tecnico.getcFTecnico());
        stmt.setFloat(3,riparazione.getCostoRiparazione());
        //eseguo la query
        stmt.executeUpdate();
        con.commit();
    }
    catch (SQLException e){
        e.printStackTrace();
        try{
            con.rollback();
        }
        catch (SQLException ex){
            ex.printStackTrace();
        }
        
        }
    finally{
        stmt.close();
        this.chiudiConnessioneDB();
        
    }
        }
public void salvaAssistenza(Assistenza assistenza) throws SQLException{
    this.connessioneDB();
    try {
        stmt = con.prepareStatement("INSERT INTO Assistenza (CF_Cliente,Matricola_Fotocopiatrice,Guasto) VALUES(?,?,?)");
        //setto nome utente e password
        stmt.setString(1,assistenza.cliente.getcFCliente());
        stmt.setString(2,assistenza.fotocopiatrice.getMatricola());
        stmt.setString(3,assistenza.getGuasto());
        //eseguo la query
        stmt.executeUpdate();
        con.commit();
    }
    catch (SQLException e){
        e.printStackTrace();
        try{
            con.rollback();
        }
        catch (SQLException ex){
            ex.printStackTrace();
        }
        
        }
    finally{
        stmt.close();
        this.chiudiConnessioneDB();
        
    }
        }
}

