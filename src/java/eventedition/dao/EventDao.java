package eventedition.dao;

import eventedition.models.Event;
import java.util.List;

public class EventDao extends BaseDao {

    protected static EventDao instance;

    public static EventDao getInstance() {
        if (instance == null) {
            instance = new EventDao();
        }

        return instance;
    }

    public Event getById(final Long id) {
        return entityManager.find(Event.class, id);
    }

    public List<Event> findAll() {
        List resultList = entityManager.createNamedQuery("Event_FindAll").getResultList();
        return resultList;
    }

    public void persist(Event event) {
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(event);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            ex.printStackTrace();
            entityManager.getTransaction().rollback();
        }
    }

    public void remove(Event event) {
        try {
            entityManager.getTransaction().begin();
            event = entityManager.find(Event.class, event.getId());
            entityManager.remove(event);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            ex.printStackTrace();
            entityManager.getTransaction().rollback();
        }
    }

    public void removeById(final long id) {
        try {
            Event event = getById(id);
            remove(event);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
