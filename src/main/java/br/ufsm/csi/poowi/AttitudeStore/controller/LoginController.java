package br.ufsm.csi.poowi.AttitudeStore.controller;

import br.ufsm.csi.poowi.AttitudeStore.model.Compra;
import br.ufsm.csi.poowi.AttitudeStore.model.Usuario;
import br.ufsm.csi.poowi.AttitudeStore.service.RoupaService;
import br.ufsm.csi.poowi.AttitudeStore.service.UsuarioService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/login")
public class LoginController {

    @PostMapping("/logar")
    public String logar(Model model, HttpSession session,@ModelAttribute("usuario") Usuario usuarioLogando) {


        Usuario u = new UsuarioService().autenticar(usuarioLogando.getEmail(), usuarioLogando.getSenha());

        if(u != null){
            if(u.getPermissao().getNome().equals("CLIENTE")){

                session.setAttribute("user", u);
                session.setAttribute("carrinho", new Compra());

                model.addAttribute("roupas", new RoupaService().getAllRoupas());

                return "clientes/principal";
            } else if (u.getPermissao().getNome().equals("ADMIN")){
                session.setAttribute("user", u);

                return "admin/principalAdmin";
            }
        }
        return "login";
    }
    @GetMapping("/sair")
    public String sair(HttpSession session, Model model){
        session.invalidate();

        model.addAttribute("usuario", new Usuario());
        return "login";
    }
}
