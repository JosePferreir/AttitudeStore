package br.ufsm.csi.poowi.AttitudeStore.controller;

import br.ufsm.csi.poowi.AttitudeStore.model.Roupa;
import br.ufsm.csi.poowi.AttitudeStore.model.Usuario;
import br.ufsm.csi.poowi.AttitudeStore.service.LoggingRoupaServiceDecorator;
import br.ufsm.csi.poowi.AttitudeStore.service.RoupaService;
import br.ufsm.csi.poowi.AttitudeStore.service.RoupaServiceConcrete;
import br.ufsm.csi.poowi.AttitudeStore.service.RoupaServiceInterface;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/roupa")
public class RoupaController {

    private final RoupaServiceInterface roupaService;

    public RoupaController() {
        this.roupaService = new LoggingRoupaServiceDecorator(new RoupaServiceConcrete());
    }

    @GetMapping("/roupasCadastradas")
    public String roupasCadastradas(Model model) {
        model.addAttribute("roupas", roupaService.getAllRoupas());
        return "admin/roupasCadastradas";
    }

    @GetMapping("/excluir/{id}")
    public String excluir(@PathVariable("id") int id, Model model) {
        roupaService.excluir(id);
        model.addAttribute("roupas", roupaService.getAllRoupas());
        return "admin/roupasCadastradas";
    }

    @GetMapping("/editar/{id}")
    public String editar(@PathVariable("id") int id, Model model) {
        model.addAttribute("roupaEditar", roupaService.getRoupaById(id));
        return "admin/editarRoupa";
    }

    @PostMapping("/confirmarEditar")
    public String confirmarEditar(Model model, @ModelAttribute("roupaEditar") Roupa roupaEditar) {
        roupaService.editarRoupa(roupaEditar);
        model.addAttribute("roupas", roupaService.getAllRoupas());
        return "admin/roupasCadastradas";
    }

    @GetMapping("/cadastrar")
    public String cadastrarRoupa(Model model) {
        model.addAttribute("roupa", new Roupa());
        return "admin/cadastrarRoupa";
    }

    @PostMapping("/cadastrar")
    public String confirmarCadastrar(@ModelAttribute("roupa") Roupa roupa) {
        roupaService.cadastrarRoupa(roupa);
        return "admin/principalAdmin";
    }


}
