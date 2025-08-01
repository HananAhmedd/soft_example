/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package se_proj;
import java.sql.*;
import java.text.SimpleDateFormat;
import javax.swing.JOptionPane;

/**
 *
 * @author jinzo78
 */
public class ShopManagerForm extends javax.swing.JFrame {

    /**
     * Creates new form AdminForm
     */
    public ShopManagerForm() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        initComponents();
        String date = new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
        Globals.getStatement().executeQuery("SELECT * FROM prenotazioni WHERE DataConsegna = \"" + date + "\"");
        Globals.updateRS();
        if (Globals.getResultSet().next())
            jLabel1.setText("<html>Prenotazioni<br><br>Oggi hai delle prenotazioni da chiudere!</html>");        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnArticoli = new javax.swing.JButton();
        btnPrenotazioni = new javax.swing.JButton();
        btnNegozio = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        btnArticoli.setText("Database articoli");
        btnArticoli.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnArticoliActionPerformed(evt);
            }
        });

        btnPrenotazioni.setText("Gestione prenotazioni");
        btnPrenotazioni.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPrenotazioniActionPerformed(evt);
            }
        });

        btnNegozio.setText("Gestione negozio");
        btnNegozio.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNegozioActionPerformed(evt);
            }
        });

        jLabel1.setText("<html>\nPrenotazioni\n<br><br>\nOggi non hai nessuna prenotazione da chiudere.\n</html>");
        jLabel1.setVerticalAlignment(javax.swing.SwingConstants.TOP);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(51, 51, 51)
                        .addComponent(btnNegozio, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnPrenotazioni, javax.swing.GroupLayout.PREFERRED_SIZE, 162, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(133, 133, 133)
                        .addComponent(btnArticoli, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 252, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(11, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(82, 82, 82)
                .addComponent(btnArticoli, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnPrenotazioni, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnNegozio, javax.swing.GroupLayout.PREFERRED_SIZE, 61, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(90, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnArticoliActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnArticoliActionPerformed
        try
        {
            new ArticleManager(this, true).setVisible(true);
        }
        catch (java.sql.SQLException|ClassNotFoundException|InstantiationException|IllegalAccessException ex)
        { }
    }//GEN-LAST:event_btnArticoliActionPerformed

    private void btnNegozioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNegozioActionPerformed
        try
        {
            new ShopManager(this, true).setVisible(true);
        }
        catch (java.sql.SQLException|ClassNotFoundException|InstantiationException|IllegalAccessException ex)
        { }
    }//GEN-LAST:event_btnNegozioActionPerformed

    private void btnPrenotazioniActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPrenotazioniActionPerformed
        try
        {
            new ReservationsManager(this, true).setVisible(true);
        }
        catch (SQLException|ClassNotFoundException|InstantiationException|IllegalAccessException ex)
        { }
    }//GEN-LAST:event_btnPrenotazioniActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ShopManagerForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ShopManagerForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ShopManagerForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ShopManagerForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                try
                {
                    new ShopManagerForm().setVisible(true);
                } catch (SQLException|ClassNotFoundException|InstantiationException|IllegalAccessException e) {JOptionPane.showMessageDialog(null, e.getMessage());}
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnArticoli;
    private javax.swing.JButton btnNegozio;
    private javax.swing.JButton btnPrenotazioni;
    private javax.swing.JLabel jLabel1;
    // End of variables declaration//GEN-END:variables
}
