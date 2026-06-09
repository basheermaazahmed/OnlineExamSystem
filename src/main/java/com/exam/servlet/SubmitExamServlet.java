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

@WebServlet("/SubmitExamServlet")
public class SubmitExamServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int marks = 10; // Temporary score

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO results(student_name, score, total_questions) VALUES(?,?,?)"
            );

            ps.setString(1, "john");
            ps.setInt(2, marks);
            ps.setInt(3, 1);

            ps.executeUpdate();

            response.setContentType("text/html");

            response.getWriter().println("<html><body>");
            response.getWriter().println("<h1>Exam Submitted Successfully!</h1>");
            response.getWriter().println("<h2>Your Score: " + marks + "</h2>");
            response.getWriter().println("<a href='viewResults.jsp'>View Results</a>");
            response.getWriter().println("</body></html>");

        } catch (Exception e) {

            e.printStackTrace();
            response.getWriter().println(e.getMessage());

        }
    }
}