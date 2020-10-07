package eventedition.servlets;

import eventedition.dao.EditionDao;
import eventedition.dao.EventDao;
import eventedition.models.Edition;
import eventedition.models.Event;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("a");

        Long eventId = Long.parseLong(request.getParameter("eventId"));

        EditionDao editionDao = EditionDao.getInstance();
        EventDao eventDao = EventDao.getInstance();

        if ("edit".equals(action)) {
            editHandler(request, editionDao, response);
        } else if ("create".equals(action)) {
            createHandler(eventDao, eventId, request, response);
        }  else if ("remove".equals(action)) {
            removeHandler(request, editionDao, response, eventDao, eventId);
        } else {
            listHandler(request, response, eventDao, editionDao, eventId);
        }

    }

    protected void removeHandler(HttpServletRequest request, EditionDao editionDao, HttpServletResponse response, EventDao eventDao, Long eventId) throws IOException, NumberFormatException, ServletException {
        String edtionId = request.getParameter("editionId");
        Edition edition = editionDao.getById(Long.parseLong(edtionId));
        editionDao.remove(edition);
        listHandler(request, response, eventDao, editionDao, eventId);
    }

    protected void createHandler(EventDao eventDao, Long eventId, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Event event = eventDao.getById(eventId);
        request.setAttribute("event", event);
        request.getRequestDispatcher("editions/create.jsp").forward(request, response);
    }

    protected void editHandler(HttpServletRequest request, EditionDao editionDao, HttpServletResponse response) throws NumberFormatException, IOException, ServletException {
        String edtionId = request.getParameter("editionId");
        Edition edition = editionDao.getById(Long.parseLong(edtionId));
        request.setAttribute("edition", edition);
        request.getRequestDispatcher("editions/edit.jsp").forward(request, response);
    }

    protected void listHandler(HttpServletRequest request,
            HttpServletResponse response,
            EventDao eventDao,
            EditionDao editionDao,
            Long eventId
    ) throws IOException, ServletException, NumberFormatException {

        Event event = eventDao.getById(eventId);
        List<Edition> editions = editionDao.findAllFromEvent(eventId);

        request.setAttribute("event", event);
        request.setAttribute("editions", editions);

        request.getRequestDispatcher("editions/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        EditionDao editionDao = EditionDao.getInstance();
        EventDao eventDao = EventDao.getInstance();

        String editionId = request.getParameter("id");

        Edition edition;
        if (editionId == null) {
            edition = new Edition();
            Long eventId = Long.parseLong(request.getParameter("eventId"));
            Event event = eventDao.getById(eventId);
            edition.setEvent(event);
        } else {
            edition = editionDao.getById(Long.parseLong(editionId));
        }

        edition.setCountry(request.getParameter("country"));
        edition.setStartDate(stringToDate(request.getParameter("startDate")));
        edition.setEndDate(stringToDate(request.getParameter("endDate")));
        edition.setMainCity(request.getParameter("mainCity"));
        edition.setYear(request.getParameter("year"));
        edition.setNumber(Integer.parseInt(request.getParameter("number")));
        editionDao.persist(edition);

        listHandler(request, response, eventDao, editionDao, edition.getEvent().getId());
    }

    protected Date stringToDate(String dateString) {
        String[] split = dateString.split("-");
        Date date = new Date(Integer.parseInt(split[0]) - 1900, Integer.parseInt(split[1]) - 1, Integer.parseInt(split[2]));
        return date;
    }
}
