import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/employees")
public class EmployeeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee("John Doe", "HR"));
        employees.add(new Employee("Jane Smith", "IT"));
        employees.add(new Employee("Mike Johnson", "Finance"));

        request.setAttribute("employeeList", employees);
        request.getRequestDispatcher("que4.jsp").forward(request, response);
    }
}

 