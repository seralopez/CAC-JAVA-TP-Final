package com.codoacodo.model;

import java.sql.Timestamp;

public class Orador extends Persona {

    private String tema;
    private String descripcion;
    private Timestamp fechaAlta;

    public Orador(Long i, String n, String a, String m, String t, String d, Timestamp ts) {
        super(i, n, a, m);
        this.tema = t;
        this.descripcion = d;
        this.fechaAlta = ts;
    }

    public Orador(int i, String n, String a, String m, String t, String d) {
        super(i, n, a, m);
        this.tema = t;
        this.descripcion = d;
    }

    public Orador(String n, String a, String m, String t, String d) {
        super(n, a, m);
        this.tema = t;
        this.descripcion = d;
    }

    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Timestamp getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(Timestamp fechaAlta) {
        this.fechaAlta = fechaAlta;
    }

    @Override
    public String toString() {
        return super.toString() + "Orador{" + "tema=" + tema + " - descripcion=" + descripcion + " - Fecha de Alta=" + fechaAlta + '}';
    }

}
