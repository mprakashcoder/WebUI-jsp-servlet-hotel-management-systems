package org.example.controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.model.Customer;
import org.example.services.CustomerService;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet({"/customer", "/customerRetrieveServlet"})
public class CustomerController extends HttpServlet {

    private CustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // list of Addresses for demonstration purposes
        List<Customer> customers;
        System.out.println("Inside / customers");
        customers = customerService.retrieveCustomer();
        // Set the list of Addresses as a request attribute
        request.setAttribute("customerList", customers);

        // Forward the request to the JSP page
        request.getRequestDispatcher("/displaycustomer.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("--------------- inside the doGet() method ---------------");
        String customertableId= request.getParameter("customertableId");
        String name = request.getParameter("name");
        String mobileNo = request.getParameter("mobileNo");
        String address = request.getParameter("address");

        Customer customer = new Customer();
        customer.setCustomertableId(Integer.parseInt(customertableId));
        customer.setName(name);
        customer.setMobileNo(Long.parseLong(mobileNo));
        customer.setAddress(address);


        try {
            boolean isInserted = customerService.insertCustomer(customer);
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            if (isInserted) {
                out.println("<h1> Customer object inserted to db</h1>");
            } else {
                out.println("<h1> Customer  object in NOT inserted to db</h1>");
            }
            out.println("</body></html>");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        request.getRequestDispatcher("confirmation.jsp").forward(request, response);
    }

}




