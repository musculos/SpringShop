
package shop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import shop.entities.Account;
import shop.service.AccountService;


/**
 *
 * @author dnis
 */
@Controller
@RequestMapping("/account")
public class AccountController {
    
      @Autowired
    private AccountService accountService;
      
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(@ModelAttribute("account") Account account, ModelMap modelMap) {
        modelMap.put("title", "Register");
        modelMap.put("action", "register");
        try {
            accountService.create(account);
            return "account.myaccount";
        } catch (Exception e) {
            modelMap.put("error", "No puede registrar nueva cuenta");
            return "account.register";
        }
    }
      @RequestMapping(value="myaccount", method = RequestMethod.GET)
    public String myaccount(ModelMap modelMap) {
        modelMap.put("title", "MyAccount");
        modelMap.put("action", "account");
        return "account.myaccount";
    }
    
    @RequestMapping(value = "myaccount", method = RequestMethod.POST)
    public String myaccount(HttpServletRequest request, HttpSession session, ModelMap modelMap) {
        modelMap.put("title", "My Account");
        Account account = this.accountService.login(
                request.getParameter("username"),
                request.getParameter("password"));
        if (account != null) {
            session.setAttribute("username", request.getParameter("username"));
            return "account.welcome";
        } else {
            modelMap.put("error", "Cuenta inválida");
            return "account.myaccount";
        }
    }
    
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("username");
        return "redirect:/account/myaccount.htm";
    }
}
