package br.ufsm.csi.poowi.AttitudeStore.controller;

import br.ufsm.csi.poowi.AttitudeStore.service.RoupaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/compra")
public class CompraController {

    @PostMapping("/addItemCarrinho/{id}")
    public String adicionar(HttpSession session, @PathVariable("id") int id, Model model){
        boolean jaTem = false;
        System.out.println(id);

        model.addAttribute("roupas", new RoupaService().getAllRoupas());

        return "clientes/principal";
    }

}
