package br.ufsm.csi.poowi.AttitudeStore.controller;

import br.ufsm.csi.poowi.AttitudeStore.model.Roupa;
import br.ufsm.csi.poowi.AttitudeStore.model.Usuario;
import br.ufsm.csi.poowi.AttitudeStore.service.RoupaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/roupa")
public class RoupaController {

    @GetMapping("/roupasCadastradas")
    public String roupasCadastradas(Model model){
        model.addAttribute("roupas", new RoupaService().getAllRoupas());
        return "admin/roupasCadastradas";
    }

    @GetMapping("/excluir/{id}")
    public String excluir(HttpSession session, @PathVariable("id") int id, Model model){
        new RoupaService().excluir(id);

        model.addAttribute("roupas", new RoupaService().getAllRoupas());
        return "admin/roupasCadastradas";
    }

    @GetMapping("/editar/{id}")
    public String editar(HttpSession session, @PathVariable("id") int id, Model model){

        model.addAttribute("roupaEditar", new RoupaService().getRoupaById(id));
        return "admin/editarRoupa";
    }

    @PostMapping("confirmarEditar")
    public String confirmarEditar(Model model, HttpSession session,@ModelAttribute("roupaEditar") Roupa roupaEditar){
        new RoupaService().editarRoupa(roupaEditar);

        model.addAttribute("roupas", new RoupaService().getAllRoupas());
        return "admin/roupasCadastradas";
    }

    @GetMapping("/cadastrar")
    public String cadastrarRoupa(Model model){
        model.addAttribute("roupa", new Roupa());
        return "admin/cadastrarRoupa";
    }

    @PostMapping("/cadastrar")
    public String confirmarCadastrar(Model model, HttpSession session,@ModelAttribute("roupa") Roupa roupa){
        new RoupaService().cadastrarRoupa(roupa);

        return "admin/principalAdmin";
    }


}
