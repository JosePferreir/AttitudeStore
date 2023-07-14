package br.ufsm.csi.poowi.AttitudeStore.controller;

import br.ufsm.csi.poowi.AttitudeStore.model.Usuario;
import br.ufsm.csi.poowi.AttitudeStore.service.RoupaService;
import br.ufsm.csi.poowi.AttitudeStore.service.UsuarioService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

    @GetMapping("/editarPerfil")
    public String editarperfil(HttpSession session, Model model){
        Usuario user = (Usuario) session.getAttribute("user");
        model.addAttribute("u", user);

        return "clientes/editarPerfil";
    }

    @PostMapping("/confirmarEditar")
    public String confirmarEditar(Model model, HttpSession session,@ModelAttribute("u") Usuario usuarioEditar){
        new UsuarioService().editarPerfil(usuarioEditar);

        Usuario user = (Usuario) session.getAttribute("user");

        if(user.getPermissao().getNome().equals("CLIENTE")){
            System.out.println(usuarioEditar.getId());
            session.setAttribute("user",new UsuarioService().getUsuarioById(usuarioEditar.getId()));
            model.addAttribute("roupas", new RoupaService().getAllRoupas());
            return "clientes/principal";
        }else{
            model.addAttribute("usuarios", new UsuarioService().getAllUsuarios());

            return "admin/verUsuarios";
        }
    }

    @GetMapping("verUsuarios")
    public String verUsuarios(Model model){
        model.addAttribute("usuarios", new UsuarioService().getAllUsuarios());

        return "admin/verUsuarios";
    }
}
