package in.co.online.food.delivery.ctl;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class LoginCtl extends BaseCtl {

	@GetMapping("/login")
	public String display(@ModelAttribute("form") HttpSession session, Model model) {

		return "login";
	}

}
