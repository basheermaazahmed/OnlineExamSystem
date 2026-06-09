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

@WebServlet("/AddQuestionServlet")
public class AddQuestionServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int examId =
                Integer.parseInt(request.getParameter("examId"));

        String question =
                request.getParameter("question");

        String option1 =
                request.getParameter("option1");

        String option2 =
                request.getParameter("option2");

        String option3 =
                request.getParameter("option3");

        String option4 =
                request.getParameter("option4");

        String correctAnswer =
                request.getParameter("correctAnswer");

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(
                    "INSERT INTO questions(exam_id,question_text,option1,option2,option3,option4,correct_answer) VALUES(?,?,?,?,?,?,?)");

            ps.setInt(1, examId);
            ps.setString(2, question);
            ps.setString(3, option1);
            ps.setString(4, option2);
            ps.setString(5, option3);
            ps.setString(6, option4);
            ps.setString(7, correctAnswer);

            ps.executeUpdate();

            response.getWriter().println("Question Added Successfully");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}