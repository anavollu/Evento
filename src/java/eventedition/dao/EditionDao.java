package eventedition.dao;

import eventedition.models.Edition;
import java.util.List;

public class EditionDao extends BaseDao {

    protected static EditionDao instance;

    public static EditionDao getInstance() {
        if (instance == null) {
            instance = new EditionDao();
        }

        return instance;
    }

    public Edition getById(final Long id) {
        return entityManager.find(Edition.class, id);
    }

    public List<Edition> findAll() {
        List resultList = entityManager.createNamedQuery("Edition_FindAll").getResultList();
        return resultList;
    }

    public List<Edition> findAllFromEvent(Long eventId) {
        List resultList = entityManager
            .createNamedQuery("Edition_FindAllFromEvent")
            .setParameter("eventId", eventId)
            .getResultList();
        return resultList;
    }

    public void persist(Edition edition) {
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(edition);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            ex.printStackTrace();
            entityManager.getTransaction().rollback();
        }
    }

    public void remove(Edition edition) {
        try {
            entityManager.getTransaction().begin();
            edition = entityManager.find(Edition.class, edition.getId());
            entityManager.remove(edition);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            ex.printStackTrace();
            entityManager.getTransaction().rollback();
        }
    }

    public void removeById(final long id) {
        try {
            Edition edition = getById(id);
            remove(edition);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
