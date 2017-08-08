
package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import shop.service.ProductService;

@Controller
@RequestMapping("/home")
public class HomeController {
    
    @Autowired
    private ProductService productService;

    @RequestMapping(method = RequestMethod.GET)
    
    public String index(ModelMap modelMap) {
        modelMap.put("title", "Home");
        modelMap.put("action", "home");
        modelMap.put("productsLatest", productService.latest(3));
        modelMap.put("featuredProducts", productService.featured(2));
        return "home.index";
    }
}
