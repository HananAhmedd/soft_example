
package rentalcopy;

import java.util.Date;


public class Lettura {
    private int copieEffettuate;
    private int copieUltime;
    public Fotocopiatrice fotocopiatrice;
    private Date data;
    private int contatoreAttuale;
    /**
     * @return the copieEffettuate
     */
    public int getCopieEffettuate() {
        return copieEffettuate;
    }

    /**
     * @param copieEffettuate the copieEffettuate to set
     */
    public void setCopieEffettuate(int copieEffettuate) {
        this.copieEffettuate = copieEffettuate;
    }

    /**
     * @return the copieUltime
     */
    public int getCopieUltime() {
        return copieUltime;
    }

    /**
     * @param copieUltime the copieUltime to set
     */
    public void setCopieUltime(int copieUltime) {
        this.copieUltime = copieUltime;
    }

    /**
     * @return the data
     */
    public Date getData() {
        return data;
    }

    /**
     * @param data the data to set
     */
    public void setData(Date data) {
        this.data = data;
    }

    /**
     * @return the contatoreAttuale
     */
    public int getContatoreAttuale() {
        return contatoreAttuale;
    }

    /**
     * @param contatoreAttuale the contatoreAttuale to set
     */
    public void setContatoreAttuale(int contatoreAttuale) {
        this.contatoreAttuale = contatoreAttuale;
    }
    
    
    
}
