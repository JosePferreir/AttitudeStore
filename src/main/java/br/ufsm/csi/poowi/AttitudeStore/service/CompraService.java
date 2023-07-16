package br.ufsm.csi.poowi.AttitudeStore.service;

import br.ufsm.csi.poowi.AttitudeStore.dao.CompraDAO;
import br.ufsm.csi.poowi.AttitudeStore.model.Compra;
import br.ufsm.csi.poowi.AttitudeStore.model.Usuario;

import java.util.ArrayList;

public class CompraService {
    public void cadastrarCompra(Compra carrinho, Usuario user){
        new CompraDAO().cadastrarCompra(carrinho,user);
    }

    public ArrayList<Compra> getHistoricoUsuario(int id){
        return new CompraDAO().getHistoricoUsuario(id);
    }

    public ArrayList<Compra> getVendasAdmin(){
        return new CompraDAO().getHistoricoAdmin();
    }
}
