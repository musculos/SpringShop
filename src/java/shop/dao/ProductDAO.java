
package shop.dao;

import java.util.*;
import shop.entities.Product;

/**
 *
 * @author dnis
 */
public interface ProductDAO {
    public Product find(Integer id); 
    
    public List<Product> latest(int n);
    
    public List<Product> featured(int n);   
    
    public List<Product> specials();
}
