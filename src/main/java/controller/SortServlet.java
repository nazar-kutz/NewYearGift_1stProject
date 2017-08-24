package controller;

import model.entity.NewYearGift;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static model.entity.GiftConteiner.newYearGift;

@WebServlet("/sort servlet")
public class SortServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doSort(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doSort(request, response);
    }

    public void doSort(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sortBy = request.getParameter("sortBy");
        if(sortBy.equals("type")){
            newYearGift.sortByType();
        } else if(sortBy.equals("name")){
            newYearGift.sortByName();
        } else if(sortBy.equals("weight")){
            newYearGift.sortByWeight();
        } else if(sortBy.equals("warehouse")){
            newYearGift.sortBySugarWarehouse();
        }
        request.getRequestDispatcher("/NewYearGiftSheet.jsp").forward(request, response);
    }
}
