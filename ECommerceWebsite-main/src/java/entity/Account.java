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
public class Account {

    private int id;
    private String name;
    private String username;
    private String password;
    private boolean isAdmin;
    private boolean isSeller;

    public Account() {
    }

    public Account(int id, String name, String username, String password, boolean isAdmin, boolean isSeller) {
        this.id = id;
        this.name = name;
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
        this.isSeller = isSeller;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public boolean isIsSeller() {
        return isSeller;
    }

    public void setIsSeller(boolean isSeller) {
        this.isSeller = isSeller;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", name=" + name + ", username=" + username + ", password=" + password + ", isAdmin=" + isAdmin + ", isSeller=" + isSeller + '}';
    }

}
