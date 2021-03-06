package controller;

import pl.coderslab.models.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/editgroup")
public class EditGroupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("groupName");
        Group groupToUpDate = new Group();
        groupToUpDate.setId(id);
        groupToUpDate.setName(name);
        try {
            groupToUpDate.saveToDB(DBUtil.getConnection());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
