
package shop.dao;

import java.util.List;
import shop.entities.Category;

/**
 *
 * @author dnis
 */
public interface CategoryDAO {
  public List<Category> findAll(); 
  
  public Category find(Integer id);
}
