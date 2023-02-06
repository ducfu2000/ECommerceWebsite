/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DAO;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "SearchProductServlet", urlPatterns = {"/SearchProductServlet"})
public class SearchProductServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet SearchProductServlet</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet SearchProductServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        DAO dao = new DAO();
        String userIp = request.getParameter("userInput");
        List<Product> list = dao.searchProduct(userIp);
        out.println("    <div class=\"product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4\">\n"
                + "                                    <h3 class=\"heading-tittle text-center font-italic\"></h3>\n"
                + "                                    <div class=\"row\" id=\"rowww\">");
        for (Product o : list) {
            out.println(" <div class=\"col-md-4 product-men mt-5\">\n"
                    + "                                            <div class=\"men-pro-item simpleCart_shelfItem\">\n"
                    + "                                                <div class=\"men-thumb-item text-center\">\n"
                    + "                                                    <img width=\"200\" height=\"200\" src=\"" + o.getImage() + "\" alt=\"\">\n"
                    + "                                                    <div class=\"men-cart-pro\">\n"
                    + "                                                        <div class=\"inner-men-cart-pro\">\n"
                    + "                                                            <a href=\"single.html\" class=\"link-product-add-cart\">Xem Sản Phẩm</a>\n"
                    + "                                                        </div>\n"
                    + "                                                    </div>\n"
                    + "                                                </div>\n"
                    + "                                                <div class=\"item-info-product text-center border-top mt-4\">\n"
                    + "                                                    <h4 class=\"pt-1\">\n"
                    + "                                                        <a href=\"single.html\">" + o.getName() + "</a>\n"
                    + "                                                    </h4>\n"
                    + "                                                    <div class=\"info-product-price my-2\">\n"
                    + "                                                        <span class=\"item_price\">" + o.getpriceKMVND() + "</span>\n"
                    + "                                                        <del>" + o.getpriceVND() + "</del>\n"
                    + "                                                    </div>\n"
                    + "                                                    <div class=\"snipcart-details top_brand_home_details item_add single-item hvr-outline-out\">\n"
                    + "                                                        <form action=\"#\" method=\"post\">\n"
                    + "                                                            <fieldset>\n"
                    + "                                                                <input type=\"hidden\" name=\"cmd\" value=\"_cart\" />\n"
                    + "                                                                <input type=\"hidden\" name=\"add\" value=\"1\" />\n"
                    + "                                                                <input type=\"hidden\" name=\"business\" value=\" \" />\n"
                    + "                                                                <input type=\"hidden\" name=\"item_name\" value=\"Samsung Galaxy J7\" />\n"
                    + "                                                                <input type=\"hidden\" name=\"amount\" value=\"200.00\" />\n"
                    + "                                                                <input type=\"hidden\" name=\"discount_amount\" value=\"1.00\" />\n"
                    + "                                                                <input type=\"hidden\" name=\"currency_code\" value=\"USD\" />\n"
                    + "                                                                <input type=\"hidden\" name=\"return\" value=\" \" />\n"
                    + "                                                                <input type=\"hidden\" name=\"cancel_return\" value=\" \" />\n"
                    + "                                                                <input type=\"submit\" name=\"submit\" value=\"Thêm vào giỏ hàng\" class=\"button btn\" />\n"
                    + "                                                            </fieldset>\n"
                    + "                                                        </form>\n"
                    + "                                                    </div>\n"
                    + "                                                </div>\n"
                    + "                                            </div>\n"
                    + "                                        </div>");
        }
        out.println("             </div>\n"
                + "                            </div>");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
