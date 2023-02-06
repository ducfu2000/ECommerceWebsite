/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author ADMIN
 */
public class LinhKien {

    private int id;
    private String name;
    private double  price;
    private double  priceKM;
    private String cauHinh;
    private String moTa;
    private int soLuong;
    private int DanhMucSP;
    private String hangSX;
    private String image;

    public LinhKien() {
    }

    public LinhKien(int id, String name, double price, double priceKM, String cauHinh, String moTa, int soLuong, int DanhMucSP, String hangSX, String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.priceKM = priceKM;
        this.cauHinh = cauHinh;
        this.moTa = moTa;
        this.soLuong = soLuong;
        this.DanhMucSP = DanhMucSP;
        this.hangSX = hangSX;
        this.image = image;
    }

    public String getpriceVND() {
        return String.format("%,.0f", price);
    }

    public String getpriceKMVND() {
        return String.format("%,.0f", priceKM);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public double getPriceKM() {
        return priceKM;
    }

    public void setPriceKM(int priceKM) {
        this.priceKM = priceKM;
    }

    public String getCauHinh() {
        return cauHinh;
    }

    public void setCauHinh(String cauHinh) {
        this.cauHinh = cauHinh;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public int getDanhMucSP() {
        return DanhMucSP;
    }

    public void setDanhMucSP(int DanhMucSP) {
        this.DanhMucSP = DanhMucSP;
    }

    public String getHangSX() {
        return hangSX;
    }

    public void setHangSX(String hangSX) {
        this.hangSX = hangSX;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}
