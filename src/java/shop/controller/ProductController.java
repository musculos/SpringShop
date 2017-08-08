
package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import shop.entities.Category;
import shop.service.CategoryService;
import shop.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired     
    private CategoryService categoryService;
    @Autowired
    private ProductService productService;
     
    @RequestMapping(value="list", method = RequestMethod.GET)
    public String list(ModelMap modelMap) {
        modelMap.put("title", "Category Product");
        modelMap.put("action", "list");
        return "product.list";
    }
    @RequestMapping(value="specials", method = RequestMethod.GET)
    public String Specials(ModelMap modelMap) {
        modelMap.put("title", "Specials gifts");
        modelMap.put("action", "specials");
        modelMap.put("product", productService.specials());
        return "product.specials";
    }
    @RequestMapping(value = "category/{id}", method = RequestMethod.GET)
    public String category(@PathVariable("id") Integer id, ModelMap modelMap) { 
        Category category = categoryService.find(id);
        modelMap.put("title", "Category products");
        modelMap.put("category", category);
        modelMap.put("product", category.getProducts());
        modelMap.put("action", "list");
        return "product.category";
    }
    
    @RequestMapping(value = "details/{id}", method = RequestMethod.GET)
    public String details(@PathVariable("id") Integer id, ModelMap modelMap) {
        modelMap.put("title", "Product details");
        modelMap.put("product", productService.find(id));
        return "product.details";
    }
}