package com.example.casestudy.controller;

import com.example.casestudy.dto.EmployeeDTO;
import com.example.casestudy.model.Account;
import com.example.casestudy.model.Employee;
import com.example.casestudy.service.IAccountService;
import com.example.casestudy.service.IEmployeeService;
import com.example.casestudy.service.impl.AccountService;
import com.example.casestudy.service.impl.EmployeeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "EmployeeServlet", urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {
    private final IEmployeeService employeeService = new EmployeeService();
    private final IAccountService accountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        String mess = req.getParameter("mess");
        if(CheckAccount.checkAcount(req,resp)) {
            if (action == null) {
                action = "";
            }
            switch (action) {
                case "create":
                    showAddForm(req, resp);
                    break;
                case "edit":
                    showEditForm(req, resp);
                    break;
                case "delete":
                    deleteEmployees(req, resp);
                    break;
                case "search":
                    break;
                case "order":
                    break;
                default:
                    listEmployee(req, resp);
                    break;
            }
        }else {
            resp.sendRedirect("/home?action=login");
        }
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Employee employee = employeeService.selectEmployee(id);
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/employee/edit.jsp");
        req.setAttribute("employee", employee);
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAddForm(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/employee/create.jsp");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listEmployee(HttpServletRequest req, HttpServletResponse resp) {
        List<EmployeeDTO> allEmployees = employeeService.getAllEmployees();
        req.setAttribute("listEmployee", allEmployees);
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/employee/list.jsp");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                insertNewEmployee(req, resp);
                break;
            case "edit":
                updateEmployees(req, resp);
                break;

        }
    }

    private void deleteEmployees(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        employeeService.deleteEmployee(id);
        try {
            resp.sendRedirect("/employee");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void updateEmployees(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        Date birthday = Date.valueOf(req.getParameter("birthday"));
        String phoneNumber = req.getParameter("phoneNumber");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String identificationCard = req.getParameter("identificationCard");
        int salary = Integer.parseInt(req.getParameter("salary"));
        employeeService.updateEmployee(new Employee(id, name, birthday, phoneNumber, email, address, identificationCard, salary));
        try {
            resp.sendRedirect("/employee");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void insertNewEmployee(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        int role = Integer.parseInt(req.getParameter("role"));
        Account account = new Account(username,password,role);
        accountService.insertAccount(account);
        int id_account = accountService.selectIdAccount(username);
        String name = req.getParameter("name");
        Date birthday = Date.valueOf(req.getParameter("birthday"));
        String phoneNumber = req.getParameter("phoneNumber");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String identificationCard = req.getParameter("identificationCard");
        int salary = Integer.parseInt(req.getParameter("salary"));
        employeeService.insertEmployee(new Employee(name, birthday, phoneNumber, email, address, identificationCard, salary, id_account));
        String mess = "Thêm mới thành công";
        resp.sendRedirect("/employee");
    }
}
