
package shop.dao;

import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import shop.entities.Account;

/**
 *
 * @author dnis
 */
@Repository("AccountDAO")
@Transactional
public class AccountDAOImp implements AccountDAO{
    
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public void create(Account account) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(account);
        transaction.commit();
        session.close();
    }

    @Override
    public Account login(String username, String password) {
        return (Account) sessionFactory.getCurrentSession()
                .createQuery("from Account "
                        + "where username = :username and "
                        + "password = :password")
                .setString("username", username)
                .setString("password", password)
                .uniqueResult();
    }
}
