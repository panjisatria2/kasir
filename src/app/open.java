/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app;

import java.awt.Frame;
import javax.swing.JFrame;

/**
 *
 * @author LENOVO
 */
public class open {

    public static void DataUser(JFrame parent) {
        parent.setVisible(false); // Menyembunyikan jendela sebelumnya
        DataUser u = new DataUser(); // Membuat instance DataUser
        u.setVisible(true); // Menampilkan DataUser
        u.setExtendedState(JFrame.MAXIMIZED_BOTH); // Mengatur tampilan penuh
    }

    public static void DataProduk(JFrame parent) {
        parent.setVisible(false); // Menyembunyikan jendela sebelumnya
        DataProdukk p = new DataProdukk(); // Membuat instance DataUser
        p.setVisible(true); // Menampilkan DataUser
        p.setExtendedState(JFrame.MAXIMIZED_BOTH); // Mengatur tampilan penuh
    }
    public static void DataTransaksi(JFrame parent) {
        parent.setVisible(false); // Menyembunyikan jendela sebelumnya
        DataTransaksi t = new DataTransaksi(); // Membuat instance DataUser
        t.setVisible(true); // Menampilkan DataUser
        t.setExtendedState(JFrame.MAXIMIZED_BOTH); // Mengatur tampilan penuh
    }
}
