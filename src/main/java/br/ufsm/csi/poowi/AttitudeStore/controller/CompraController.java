package br.ufsm.csi.poowi.AttitudeStore.controller;

import br.ufsm.csi.poowi.AttitudeStore.model.Compra;
import br.ufsm.csi.poowi.AttitudeStore.model.Roupa;
import br.ufsm.csi.poowi.AttitudeStore.model.Usuario;
import br.ufsm.csi.poowi.AttitudeStore.service.CompraService;
import br.ufsm.csi.poowi.AttitudeStore.service.RoupaService;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

import java.lang.reflect.Array;
import java.util.ArrayList;

import static java.lang.Integer.parseInt;

@Controller
@RequestMapping("/compra")
public class CompraController {


    @GetMapping("/addItemCarrinho/{id}")
    public String adicionar(HttpSession session, @PathVariable("id") int id, Model model){
        boolean jaTem = false;

        Compra carrinho = (Compra) session.getAttribute("carrinho");

        for(int i = 0; i < carrinho.getRoupas().size(); i++){
            if(carrinho.getRoupas().get(i).getId() == id){
                carrinho.getRoupas().get(i).setQuantidade(1);
                carrinho.setTotalCompra(carrinho.getRoupas().get(i).getPreco());
                jaTem = true;
            }
        }
        if(jaTem == false){
            carrinho.setRoupas(new RoupaService().getRoupaById(id));
        }

        model.addAttribute("roupas", new RoupaService().getAllRoupas());

        return "clientes/principal";
    }

    @GetMapping("/verCarrinho")
    public String verCarrinho(HttpSession session, Model model){
        Compra carrinho = (Compra) session.getAttribute("carrinho");
        model.addAttribute("carrinho", carrinho);
        return "/clientes/verCarrinho";
    }

    @GetMapping("/principal")
    public String principal(Model model){
        model.addAttribute("roupas", new RoupaService().getAllRoupas());
        return "clientes/principal";
    }

    @GetMapping("/finalizarCompra")
    public String finalizarCompra(HttpSession session, Model model){
        Compra carrinho = (Compra) session.getAttribute("carrinho");
        Usuario user = (Usuario) session.getAttribute("user");

        new CompraService().cadastrarCompra(carrinho,user);
        session.setAttribute("carrinho", new Compra());

        model.addAttribute("roupas", new RoupaService().getAllRoupas());
        return "clientes/principal";
    }

    @GetMapping("historicoCompras")
    public String historicoCompras(HttpSession session, Model model){
        Usuario user = (Usuario) session.getAttribute("user") ;

        model.addAttribute("historico", new CompraService().getHistoricoUsuario(user.getId()));

        return "clientes/historicoCompras";
    }

    @GetMapping("/removerItemCarrinho/{id}")
    public String removerItemCarrinho(HttpSession session, @PathVariable("id") int id, Model model){
        Compra carrinho = (Compra) session.getAttribute("carrinho");

        Roupa remover = null;

        for(Roupa r : carrinho.getRoupas()){
            if(r.getId() == id){
                remover = r;
            }
        }
        carrinho.setTotalCompra(-(remover.getPreco()*remover.getQuantidade()));
        carrinho.getRoupas().remove((remover));

        model.addAttribute("carrinho", carrinho);
        return "/clientes/verCarrinho";
    }

    @GetMapping("/historicoAdmin")
    public String historicoVendasAdmin(Model model){;
        model.addAttribute("historico", new CompraService().getVendasAdmin());

        return "admin/vendas";
    }

    @GetMapping("/detalhesVenda/{id}")
    public String detalhesVenda(@PathVariable("id") int id, Model model){
        model.addAttribute("compra", new CompraService().getCompraById(id));

        return "admin/detalhesVenda";
    }
}
