/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app;

import javax.swing.JFrame;

/**
 *
 * @author LENOVO
 */
public class open {

    public static void DataUser(JFrame parent) {
        parent.setVisible(false); 
        DataUser u = new DataUser(); 
        u.setVisible(true); 
        u.setExtendedState(JFrame.MAXIMIZED_BOTH); 
    }

    public static void DataProduk(JFrame parent) {
        parent.setVisible(false); 
        DataProdukk p = new DataProdukk(); 
        p.setVisible(true); 
        p.setExtendedState(JFrame.MAXIMIZED_BOTH); 
    }
    public static void DataTransaksi(JFrame parent) {
        parent.setVisible(false); 
        DataTransaksi t = new DataTransaksi(); 
        t.setVisible(true); 
        t.setExtendedState(JFrame.MAXIMIZED_BOTH); 
    }
}
