package br.ufsm.csi.poowi.AttitudeStore.service;

import br.ufsm.csi.poowi.AttitudeStore.dao.RoupaDAO;
import br.ufsm.csi.poowi.AttitudeStore.model.Roupa;

import java.util.ArrayList;

public class RoupaService {

    public ArrayList<Roupa> getAllRoupas(){
        return new RoupaDAO().getAllRoupas();
    }

    public Roupa getRoupaById(int id){
        return new RoupaDAO().getRoupa(id);
    }

    public void excluir(int id){
        new RoupaDAO().excluirRoupa(id);
    }

    public void editarRoupa(Roupa r){
        new RoupaDAO().editarRoupa(r);
    }

    public void cadastrarRoupa(Roupa r){
        new RoupaDAO().cadastrarRoupa(r);
    }

}
