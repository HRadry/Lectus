/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webapp.lectus.models;

/**
 *
 * @author herna
 */
public class Area implements java.io.Serializable {

    private Integer idArea;
    private String edificio;
    private String telefono;

    public Area() {
    }

    public Area(Integer idArea, String edificio, String telefono) {
        this.idArea = idArea;
        this.edificio = edificio;
        this.telefono = telefono;
    }

    public Integer getIdArea() {
        return idArea;
    }

    public void setIdArea(Integer idArea) {
        this.idArea = idArea;
    }

    public String getEdificio() {
        return edificio;
    }

    public void setEdificio(String edificio) {
        this.edificio = edificio;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

        
}
