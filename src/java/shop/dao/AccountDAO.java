
package shop.dao;

import shop.entities.Account;

/**
 *
 * @author dnis
 */
public interface AccountDAO {
 
   
    public void create(Account account);
    
    public Account login(String username, String password);
}
