package com.codoacodo.controller;

import com.codoacodo.dao.OradorDAO;
import com.codoacodo.model.Orador;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/api/EditarController")
public class EditarController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String ids = req.getParameter("id");
        OradorDAO dao = new OradorDAO();
        Orador oradFromDb = null;

        try {
            oradFromDb = dao.obtenerPorId(Integer.valueOf(ids));
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            ex.printStackTrace(System.out);
        }

        req.setAttribute("listaOrador", oradFromDb);
        getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("input_id");
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

        Orador oraActualizado = new Orador(Integer.valueOf(id), nombre, apellido, email, tema.replace("null", ""), descripcion);
        dao.actualizarOrador(oraActualizado);

        resp.sendRedirect(req.getContextPath() + "/api/ListarController");
    }
}
