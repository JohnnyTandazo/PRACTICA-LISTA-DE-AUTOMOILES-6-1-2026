package model;

public class Automovil {
    private String fabricante;
    private String modelo;
    private String color;

    public Automovil(String fabricante, String modelo, String color) {
        this.fabricante = fabricante;
        this.modelo = modelo;
        this.color = color;
    }

    public String getFabricante() { return fabricante; }
    public String getModelo() { return modelo; }
    public String getColor() { return color; }
}