
package rentalcopy;
import javax.swing.*;

public class RentalCopy {
  
    public static Operatore operatore=null;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        // Attendo 5 secondi per caricare lo splash screeb
       try {
                Thread.sleep(5000);
            }
            catch(InterruptedException e) {
            }
        //Carico il Form di login
         java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new LoginRC().setVisible(true);
            }
        });
         
        
        /**/
    }
   public static void VerificaCredenziali(String nomeUtente,String password) {
        try {
            //Database db = new Database();
            Operatore op = new Operatore();
            //op = db.getUserPassword(nomeUtente, password);
             op.setAdmin(false);
            if (op!=null)
            {
                if(op.isAdmin()){
                    operatore = new Amministratore(op.getcFoperatore(),op.getNomeOperatore(),op.getCognomeOperatore());
                }
                else{
                    operatore=new Operatore(op.getcFoperatore(),op.getNomeOperatore(),op.getCognomeOperatore());
                }
                java.awt.EventQueue.invokeLater(new Runnable() {
                    public void run() {
                        new MenuRC().setVisible(true);
                    }
                });
            }
            else{
                JOptionPane.showMessageDialog(null, "Login non effettuato nome utente o password errati");
                System.exit(0);
            }} catch(Exception e)  {
                e.printStackTrace();
        }
   }  
}
