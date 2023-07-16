package br.ufsm.csi.poowi.AttitudeStore.controller;

import br.ufsm.csi.poowi.AttitudeStore.model.Permissao;
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

    @GetMapping("editar/{id}")
    public String editarUsuario(@PathVariable("id") int id, Model model){
        model.addAttribute("usuarioEditar", new UsuarioService().getUsuarioById(id));

        return "admin/editarUsuario";
    }

    @GetMapping("/cadastrar")
    public String cadastrarUsuario(Model model){
        model.addAttribute("usuario", new Usuario());

        return "cadastrar";
    }

    @PostMapping("/confirmarCadastro")
    public String confirmarCadastro(Model model, @ModelAttribute("usuario") Usuario usuario){
        Permissao p = new Permissao(2);
        usuario.setPermissao(p);
        new UsuarioService().cadastrarUsuario(usuario);

        model.addAttribute("usuario", new Usuario());

        return "login";
    }
}
