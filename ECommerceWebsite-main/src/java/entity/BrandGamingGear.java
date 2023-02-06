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
public class BrandGamingGear {
    private String name;

    public BrandGamingGear() {
    }

    public BrandGamingGear(String name) {
        this.name = name;
    }

    public String getName() {
        return name.toUpperCase();
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
}
