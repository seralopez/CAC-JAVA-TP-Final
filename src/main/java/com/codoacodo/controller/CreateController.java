package com.codoacodo.controller;

import com.codoacodo.model.Orador;
import com.codoacodo.dao.OradorDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

@WebServlet("/CreateController")
public class CreateController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nombre = req.getParameter("input_nombre");
        String apellido = req.getParameter("input_apellido");
        String email = req.getParameter("input_email");
        String tema = req.getParameter("input_j");
        tema += req.getParameter("input_r");
        tema += req.getParameter("input_n");
        tema += req.getParameter("input_s");
        tema += req.getParameter("input_o");

        String descripcion = req.getParameter("input_descripcion");

        OradorDAO dao = new OradorDAO();

        Orador ora = new Orador(nombre, apellido, email, tema.replace("null", ""), descripcion);

        try {
            dao.insertarOrador(ora);
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            ex.printStackTrace();
        }

        resp.sendRedirect(req.getContextPath());
    }
}
