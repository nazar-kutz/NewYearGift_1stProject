package controller;

import model.entity.NewYearGift;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
        NewYearGift newYearGift = NewYearGift.getInstance();

        if("type".equals(sortBy)){
            newYearGift.sortByType();
        } else if("name".equals(sortBy)){
            newYearGift.sortByName();
        } else if("weight".equals(sortBy)){
            newYearGift.sortByWeight();
        } else if("warehouse".equals(sortBy)){
            newYearGift.sortBySugarWarehouse();
        }
        request.getRequestDispatcher("/NewYearGiftSheet.jsp").forward(request, response);
    }
}
