/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserRegisterServerlet;

import Model.UsersFunctions;
import db.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KGRS
 */
@WebServlet(name = "AddUser", urlPatterns = {"/AddUser"})
public class AddUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private UsersFunctions uf;

    @Override
    public void init()
            throws ServletException {
        uf = new UsersFunctions();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {            

            String uname = request.getParameter("uname");
            String password = request.getParameter("password");
            String repassword = request.getParameter("repassword");
            String birthday = request.getParameter("birthday");
            
            DateFormat df = new SimpleDateFormat("mm/dd/yyyy");
            Date bdate = df.parse(birthday);
            
            String gender = request.getParameter("gender");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String country = request.getParameter("country");
            int countryNo = Integer.parseInt(country);
            
            //validate
            if (uname == null) {
                response.sendRedirect("index.jsp");
                return;
            } else if (!password.equals(repassword)) {
                response.sendRedirect("index.jsp");
                return;
            }

            Users u = new Users();
            u.setUsername(uname);
            u.setPassword(password);
            u.setBirthday(bdate);
            u.setGender(gender);
            u.setEmail(email);
            u.setAddress(address);
            u.setCounrtyid(countryNo);
            uf.InsertUser(u);
            response.sendRedirect("index.jsp");

        } catch (Exception er) {
            er.printStackTrace();
        } finally {
            out.close();
        }
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
        System.out.println("get wada");

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
        System.out.println("post wada");

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
