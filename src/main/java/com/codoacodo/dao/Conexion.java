package com.codoacodo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/integrador_cac";
    private static final String JDBC_USR = "root";
    private static final String JDBC_PASS = "a1s2d3f4";

    public static Connection getConexion() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USR, JDBC_PASS);
    }

    public static void close(ResultSet rs) throws SQLException {
        rs.close();
    }

    public static void close(Statement st) throws SQLException {
        st.close();
    }

    public static void close(Connection cn) throws SQLException {
        cn.close();
    }
}
