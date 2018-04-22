package controller;

import pl.coderslab.models.Solution;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/")
public class HomePageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int limit = 5;
        try {
            Connection conn = DBUtil.getConnection();
            ArrayList<Solution> solutions = Solution.loadAllSolutions(conn, limit);
            request.setAttribute("solutions", solutions);
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
