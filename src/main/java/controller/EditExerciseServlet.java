package controller;

import pl.coderslab.models.Exercise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/editExercise")
public class EditExerciseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        Exercise exerciseToUpDate = new Exercise();
        exerciseToUpDate.setTitle(title);
        exerciseToUpDate.setId(id);
        exerciseToUpDate.setDescription(description);
        try {
            exerciseToUpDate.saveToDB(DBUtil.getConnection());
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
