package com.exam.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.exam.db.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddExamServlet")
public class AddExamServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String examName = request.getParameter("examName");
        int totalMarks = Integer.parseInt(request.getParameter("totalMarks"));

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO exams(exam_name, total_marks) VALUES(?, ?)");

            ps.setString(1, examName);
            ps.setInt(2, totalMarks);

            int result = ps.executeUpdate();

            System.out.println("Rows inserted = " + result);

            if (result > 0) {
                response.sendRedirect("dashboard.jsp");
            } else {
                response.getWriter().println("Failed to add exam");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}