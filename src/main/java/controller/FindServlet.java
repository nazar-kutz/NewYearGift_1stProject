package controller;

import model.entity.NewYearGift;
import model.entity.sweets.Sweets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static model.entity.GiftConteiner.searchResults;

@WebServlet("/searching servlet")
public class FindServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        findSweetsBetweenSugarRange(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        findSweetsBetweenSugarRange(request, response);
    }

    public void findSweetsBetweenSugarRange(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int min = Integer.parseInt(request.getParameter("min"));
        int max = Integer.parseInt(request.getParameter("max"));

        NewYearGift newYearGift = NewYearGift.getInstance();

        searchResults = newYearGift.findSweetsWithSuchSugarWarehouse(min, max);
        request.getRequestDispatcher("foundSweets.jsp").forward(request, response);
    }
}
