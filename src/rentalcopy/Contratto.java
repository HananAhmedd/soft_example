
package rentalcopy;

import java.util.Date;

public class Contratto {
    private Date data;
    private int idContratto;
    public Cliente cliente;
    public Fotocopiatrice fotocopiatrice;
    private Tipo tipoContratto;
    private int copieIncluse;
    private int costoFisso;
    private int costoCopia;

    //costruttore per contratto a costo fisso
    public Contratto(Cliente cliente, Fotocopiatrice fotocopiatrice, Tipo tipocontratto, int copieIncluse, int costoFisso){
        this.cliente=cliente;
        this.fotocopiatrice=fotocopiatrice;
        this.setTipoContratto(Tipo.COSTO_FISSO);
        this.setCopieIncluse(copieIncluse);
        this.setCostoFisso(costoFisso);
    }
    
    //costruttore per contratto a costo copia
     public Contratto(Cliente cliente, Fotocopiatrice fotocopiatrice, Tipo tipocontratto, int costoCopia){
        this.cliente=cliente;
        this.fotocopiatrice=fotocopiatrice;
        this.setTipoContratto(Tipo.COSTO_COPIA);
        this.setCostoCopia(costoCopia);
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
     * @return the idContratto
     */
    public int getIdContratto() {
        return idContratto;
    }

    /**
     * @param idContratto the idContratto to set
     */
    public void setIdContratto(int idContratto) {
        this.idContratto = idContratto;
    }

    /**
     * @return the tipoContratto
     */
    public Tipo getTipoContratto() {
        return tipoContratto;
    }

    /**
     * @param tipoContratto the tipoContratto to set
     */
    public void setTipoContratto(Tipo tipoContratto) {
        this.tipoContratto = tipoContratto;
    }

    /**
     * @return the copieIncluse
     */
    public int getCopieIncluse() {
        return copieIncluse;
    }

    /**
     * @param copieIncluse the copieIncluse to set
     */
    public void setCopieIncluse(int copieIncluse) {
        this.copieIncluse = copieIncluse;
    }

    /**
     * @return the costoFisso
     */
    public int getCostoFisso() {
        return costoFisso;
    }

    /**
     * @param costoFisso the costoFisso to set
     */
    public void setCostoFisso(int costoFisso) {
        this.costoFisso = costoFisso;
    }

    /**
     * @return the costoCopia
     */
    public int getCostoCopia() {
        return costoCopia;
    }

    /**
     * @param costoCopia the costoCopia to set
     */
    public void setCostoCopia(int costoCopia) {
        this.costoCopia = costoCopia;
    }

    
    

public enum Tipo{
    COSTO_FISSO, COSTO_COPIA
}
    }
    
    
    
    

