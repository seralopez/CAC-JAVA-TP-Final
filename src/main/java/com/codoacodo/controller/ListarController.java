package com.codoacodo.controller;

import com.codoacodo.dao.OradorDAO;
import com.codoacodo.model.Orador;

import java.io.IOException;
import java.util.List;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/api/ListarController")
public class ListarController extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Orador> oradores = null;
        OradorDAO dao = new OradorDAO();

        try {
            oradores = dao.selectOradores();
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            ex.printStackTrace(System.out);
        }
        req.setAttribute("listaOradores", oradores);
        getServletContext().getRequestDispatcher("/oradores.jsp").forward(req, resp);
    }
}
