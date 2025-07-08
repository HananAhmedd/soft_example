

package rentalcopy;


public class Fotocopiatrice {
    
    private String modello;
    private String matricola;
    private String via;
    private boolean scanner;
    private boolean fax;
    private boolean print;
    private String citta;

    
    public Fotocopiatrice(String modello, String matricola, String via, boolean scanner, boolean fax, boolean print,String citta){
        this.setModello(modello);
        this.setMatricola(matricola);
        this.setVia(via);
        this.setScanner(scanner);
        this.setFax(fax);
        this.setPrint(print);
        this.setCitta(citta);
    }
    /**
     * @return the modello
     */
    public String getModello() {
        return modello;
    }

    /**
     * @param modello the modello to set
     */
    public void setModello(String modello) {
        this.modello = modello;
    }

    /**
     * @return the matricola
     */
    public String getMatricola() {
        return matricola;
    }

    /**
     * @param matricola the matricola to set
     */
    public void setMatricola(String matricola) {
        this.matricola = matricola;
    }

    /**
     * @return the via
     */
    public String getVia() {
        return via;
    }

    /**
     * @param via the via to set
     */
    public void setVia(String via) {
        this.via = via;
    }

    /**
     * @return the scanner
     */
    public boolean isScanner() {
        return scanner;
    }

    /**
     * @param scanner the scanner to set
     */
    public void setScanner(boolean scanner) {
        this.scanner = scanner;
    }

    /**
     * @return the fax
     */
    public boolean isFax() {
        return fax;
    }

    /**
     * @param fax the fax to set
     */
    public void setFax(boolean fax) {
        this.fax = fax;
    }

    /**
     * @return the print
     */
    public boolean isPrint() {
        return print;
    }

    /**
     * @param print the print to set
     */
    public void setPrint(boolean print) {
        this.print = print;
    }

    /**
     * @return the citta
     */
    public String getCitta() {
        return citta;
    }

    /**
     * @param citta the citta to set
     */
    public void setCitta(String citta) {
        this.citta = citta;
    }
    
}
