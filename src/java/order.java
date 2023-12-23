///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
///**
// *
// * @author SKS
// */
//@WebServlet(urlPatterns = {"/order"})
//public class order extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet order</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet order at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/order")
public class order extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Read data from the request
        PrintWriter out = response.getWriter();
//        BufferedReader reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
//        StringBuilder dataStringBuilder = new StringBuilder();
//        String line;
//        while ((line = reader.readLine()) != null) {
//            dataStringBuilder.append(line);
//        }
//        reader.close();
//        out.print("Connected \n");
//        // Convert JSON string to a Java object or process it as needed
//        String jsonData = dataStringBuilder.toString();
//        
//        // TODO: Perform database operations to store the data
        // This is a placeholder, replace it with your actual database code
        BufferedReader reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
        StringBuilder dataStringBuilder = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            dataStringBuilder.append(line);
        }
        reader.close();

        // Convert JSON string to a Java array or process it as needed
//      Sring data = dataStringBuilder.toString();
        String data = dataStringBuilder.toString();
        String[] dataArray = data.substring(1, data.length() - 1).split("},\\{");

        // Process each JSON object individually
        for (String jsonData : dataArray) {
            // Handle each JSON object (insert into the database, for example)
            System.out.println("Processing JSON object: " + "{" + jsonData + "}");
            
            // TODO: Perform database operations to store the individual data
            // This is a placeholder, replace it with your actual database code
        }
        // Send a response back to the client
        response.setContentType("text/plain");
        response.getWriter().write(data);
        
        
        // Handle the actual database storage and response based on your requirements
    }
}
