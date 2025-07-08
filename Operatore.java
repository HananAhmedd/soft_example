

package rentalcopy;

public class Operatore {
    private String cFoperatore;
    private String nomeOperatore;
    private String cognomeOperatore;
    private String passwordOperatore;
    private boolean admin=false;

   public Operatore(){
   //costruttore vuoto 
   }
     public Operatore(String cFOperatore,String nomeOperatore, String cognomeOperatore){
            this.setcFoperatore(cFOperatore);
            this.setNomeOperatore(nomeOperatore);
            this.setCognomeOperatore(cognomeOperatore);
            this.setAdmin(false);
        }
      /**
     * @return the cFoperatore
     */
    public String getcFoperatore() {
        return cFoperatore;
    }

    /**
     * @param cFoperatore the cFoperatore to set
     */
    public void setcFoperatore(String cFoperatore) {
        this.cFoperatore = cFoperatore;
    }

    /**
     * @return the nomeOperatore
     */
    public String getNomeOperatore() {
        return nomeOperatore;
    }

    /**
     * @param nomeOperatore the nomeOperatore to set
     */
    public void setNomeOperatore(String nomeOperatore) {
        this.nomeOperatore = nomeOperatore;
    }

    /**
     * @return the cognomeOperatore
     */
    public String getCognomeOperatore() {
        return cognomeOperatore;
    }

    /**
     * @param cognomeOperatore the cognomeOperatore to set
     */
    public void setCognomeOperatore(String cognomeOperatore) {
        this.cognomeOperatore = cognomeOperatore;
    }

    /**
     * @return the passwordOperatore
     */
    public String getPasswordOperatore() {
        return passwordOperatore;
    }

    /**
     * @param passwordOperatore the passwordOperatore to set
     */
    public void setPasswordOperatore(String passwordOperatore) {
        this.passwordOperatore = passwordOperatore;
    }

    /**
     * @return the admin
     */
    public boolean isAdmin() {
        return admin;
    }

    /**
     * @param admin the admin to set
     */
    public void setAdmin(boolean admin) {
        this.admin = admin;
    }
    
    
}
