package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CardsServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        Integer count = Integer.parseInt(request.getParameter("number"));
        List<Cards> cardsList = new ArrayList<Cards>();
        for (int i=0; i< count; i++){
            Cards card = new Cards();
            cardsList.add(card);
        }
        request.setAttribute("cards", cardsList);
        getServletContext().getRequestDispatcher("/cards.jsp").forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    }
}
