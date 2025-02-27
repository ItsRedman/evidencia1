/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author Fer
 */
import java.util.Date;

public class ResultadoIAC {
    private int id;
    private int usuarioId;
    private double iac;
    private Date fecha;

    // Constructor vacío
    public ResultadoIAC() {}

    // Constructor con parámetros
    public ResultadoIAC(int usuarioId, double iac, Date fecha) {
        this.usuarioId = usuarioId;
        this.iac = iac;
        this.fecha = fecha;
    }

    // Getters y Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getUsuarioId() { return usuarioId; }
    public void setUsuarioId(int usuarioId) { this.usuarioId = usuarioId; }

    public double getIAC() { return iac; }
    public void setIAC(double iac) { this.iac = iac; }

    public Date getFecha() { return fecha; }
    public void setFecha(Date fecha) { this.fecha = fecha; }
}

