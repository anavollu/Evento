package eventedition;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EventServlet", urlPatterns = {"/eventos"})
public class EventServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("events.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String initials = request.getParameter("initials");
        String concArea = request.getParameter("concArea");
        String orgInstitution = request.getParameter("orgInstitution");

        Integer number = request.getParameter("number");
        String year = request.getParameter("year");
        Date startDate = request.getParameter("startDate");
        Date endDate = request.getParameter("endDate");
        String mainCity = request.getParameter("mainCity");
        String country = request.getParameter("country");
        
        request.setAttribute("name", name);
        request.setAttribute("initials", initials);
        request.setAttribute("concArea", concArea);
        request.setAttribute("orgInstitution", orgInstitution);
        
        request.setAttribute("number", number);
        request.setAttribute("year", year);
        request.setAttribute("startDate", startDate);
        request.setAttribute("endDate", endDate);
        request.setAttribute("mainCity", mainCity);
        request.setAttribute("country", country);
        
        request.getRequestDispatcher("events.jsp").forward(request, response);
    }
}
