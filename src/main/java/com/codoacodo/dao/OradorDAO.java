package com.codoacodo.dao;

import com.codoacodo.model.Orador;
import static com.codoacodo.dao.Conexion.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Timestamp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class OradorDAO {

    static Logger logger = LoggerFactory.getLogger(OradorDAO.class);

    private static final String SQL_SELECT = "SELECT * FROM oradores";
    private static final String SQL_SELECTID = "SELECT * FROM oradores WHERE orador_id = ?";
    private static final String SQL_INSERT = "INSERT INTO oradores(orador_nombre, orador_apellido, orador_mail, orador_temas, orador_tema_comentario) VALUES (?, ?, ?, ?, ?)";
    private static final String SQL_UPDATE = "UPDATE oradores SET orador_nombre = ?, orador_apellido = ?, orador_mail = ?, orador_temas = ?, orador_tema_comentario = ? WHERE orador_id = ?";
    private static final String SQL_DELETE = "DELETE FROM oradores WHERE orador_id = ?";

    public List<Orador> selectOradores() throws SQLException, NullPointerException, ClassNotFoundException, InstantiationException, IllegalAccessException {

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        Orador orador = null;
        List<Orador> oradores = new ArrayList();
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
        try {
            conn = getConexion();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(SQL_SELECT);

            while (rs.next()) {
                Long idOrador = rs.getLong(1);
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                String descripcion = rs.getString(6);
                Timestamp fechaAlta = rs.getTimestamp(7);

                orador = new Orador(idOrador, nombre, apellido, mail, tema, descripcion, fechaAlta);
                oradores.add(orador);
            }

        } catch (SQLException | NullPointerException ex) {
            ex.printStackTrace(System.out);
            ex.getMessage();
        } finally {
            try {
                close(rs);
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return oradores;
    }

    public Orador obtenerPorId(int i) throws SQLException, NullPointerException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        Connection conn = null;
        PreparedStatement stmt = null;

        ResultSet rs = null;
        Orador orador = null;

        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_SELECTID);
            stmt.setLong(1, i);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Long idOrador = rs.getLong(1);
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                String descripcion = rs.getString(6);
                Timestamp fechaAlta = rs.getTimestamp(7);

                orador = new Orador(idOrador, nombre, apellido, mail, tema, descripcion, fechaAlta);
            }
        } catch (SQLException | NullPointerException ex) {
            ex.printStackTrace(System.out);
            ex.getMessage();
        } finally {
            try {
                close(rs);
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return orador;
    }

    public int insertarOrador(Orador ora) throws SQLException, NullPointerException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, ora.getNombre());
            stmt.setString(2, ora.getApellido());
            stmt.setString(3, ora.getMail());
            stmt.setString(4, ora.getTema());
            stmt.setString(5, ora.getDescripcion());

            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.getMessage();
            }
        }
        return registros;
    }

    public int actualizarOrador(Orador ora) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;

        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE);

            stmt.setString(1, ora.getNombre());
            stmt.setString(2, ora.getApellido());
            stmt.setString(3, ora.getMail());
            stmt.setString(4, ora.getTema());
            stmt.setString(5, ora.getDescripcion());
            stmt.setLong(6, ora.getId());

            registros = stmt.executeUpdate();
        } catch (SQLException | NullPointerException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                stmt.close();
                conn.close();
            } catch (SQLException | NullPointerException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }

    public int eliminarOrador(Long i) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setLong(1, i);
            registros = stmt.executeUpdate();
        } catch (SQLException | NullPointerException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                stmt.close();
                conn.close();
            } catch (SQLException | NullPointerException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }
}
