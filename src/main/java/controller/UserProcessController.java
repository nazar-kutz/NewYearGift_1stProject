package controller;

import model.entity.NewYearGift;
import model.entity.sweets.Sweets;
import model.entity.sweets.SweetsType;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user process")
public class UserProcessController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doUserProcess(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doUserProcess(request, response);
    }

    public void doUserProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SweetsType sweetsType = SweetsType.parseSweetsType(request.getParameter("type"));
        String name = request.getParameter("name");
        int weightInGrams = Integer.parseInt(request.getParameter("weight"));
        int sugarWarehouse = Integer.parseInt(request.getParameter("sugar"));

        NewYearGift newYearGift = NewYearGift.getInstance();

        newYearGift.addToGift(new Sweets(sweetsType, name, weightInGrams, sugarWarehouse));
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
