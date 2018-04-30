package controller;

import pl.coderslab.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/edituser")
public class EditUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        int user_group_id = Integer.parseInt(request.getParameter("user_group_id"));


        User userToUpDate = new User();
        userToUpDate.setId(id);
        userToUpDate.setUsername(name);
        userToUpDate.setEmail(email);
        userToUpDate.setPassword(password);
        userToUpDate.setUser_group_id(user_group_id);
        try {
            userToUpDate.saveToDB(DBUtil.getConnection());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
