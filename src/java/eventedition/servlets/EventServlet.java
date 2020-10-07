package eventedition.servlets;

import eventedition.dao.EditionDao;
import eventedition.dao.EventDao;
import eventedition.models.Edition;
import eventedition.models.Event;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EventServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("a");

        EventDao eventDao = EventDao.getInstance();

        if ("create".equals(action)) {
            request.getRequestDispatcher("events/create.jsp").forward(request, response);
        } else if ("edit".equals(action)) {
            Long eventId = Long.parseLong(request.getParameter("eventId"));
            editHandler(eventDao, eventId, request, response);
        }  else if ("remove".equals(action)) {
            Long eventId = Long.parseLong(request.getParameter("eventId"));
            removeHandler(eventId, eventDao, request, response);
        } else {
            listHandler(eventDao, request, response);
        }

    }

    protected void removeHandler(Long eventId, EventDao eventDao, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        EditionDao editionDao = EditionDao.getInstance();
        List<Edition> editions = editionDao.findAllFromEvent(eventId);
        if (editions != null) {
            for (int i = 0; i < editions.size(); i++) {
                Edition event = editions.get(i);
                editionDao.removeById(event.getId());
            }
        }
        eventDao.removeById(eventId);
        listHandler(eventDao, request, response);
    }

    protected void editHandler(EventDao eventDao, Long eventId, HttpServletRequest request, HttpServletResponse response) throws ServletException, NumberFormatException, IOException {
        Event event = eventDao.getById(eventId);
        request.setAttribute("event", event);
        request.getRequestDispatcher("events/edit.jsp").forward(request, response);
    }

    protected void listHandler(EventDao eventDao, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Event> events = eventDao.findAll();
        request.setAttribute("events", events);
        request.getRequestDispatcher("events/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        EventDao eventDao = EventDao.getInstance();

        Event event;

        String eventId = request.getParameter("eventId");

        if (eventId == null) {
            event = new Event();
        } else {
            event = eventDao.getById(Long.parseLong(eventId));
        }

        event.setName(request.getParameter("name"));
        event.setInitials(request.getParameter("initials"));
        event.setConcArea(request.getParameter("concArea"));
        event.setOrgInstitution(request.getParameter("orgInstitution"));

        eventDao.persist(event);

        listHandler(eventDao, request, response);
    }
}
