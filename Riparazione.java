

package rentalcopy;


public class Riparazione {
    public Fotocopiatrice fotocopiatrice;
    public Tecnico tecnico;
    private float costoRiparazione;

    public Riparazione(Fotocopiatrice fotocopiatrice, Tecnico tecnico,float costoRiparazione){
        this.fotocopiatrice=fotocopiatrice;
        this.tecnico=tecnico;
        this.setCostoRiparazione(costoRiparazione);
           
    }
    /**
     * @return the costoRiparazione
     */
    public float getCostoRiparazione() {
        return costoRiparazione;
    }

    /**
     * @param costoRiparazione the costoRiparazione to set
     */
    public void setCostoRiparazione(float costoRiparazione) {
        this.costoRiparazione = costoRiparazione;
    }
    
    
}
