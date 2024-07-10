package br.ufsm.csi.poowi.AttitudeStore.service;

import br.ufsm.csi.poowi.AttitudeStore.dao.RoupaDAO;
import br.ufsm.csi.poowi.AttitudeStore.model.Roupa;
import java.util.ArrayList;

public class RoupaServiceConcrete implements RoupaServiceInterface {

    @Override
    public ArrayList<Roupa> getAllRoupas() {
        return new RoupaDAO().getAllRoupas();
    }

    @Override
    public Roupa getRoupaById(int id) {
        return new RoupaDAO().getRoupa(id);
    }

    @Override
    public void excluir(int id) {
        new RoupaDAO().excluirRoupa(id);
    }

    @Override
    public void editarRoupa(Roupa r) {
        new RoupaDAO().editarRoupa(r);
    }

    @Override
    public void cadastrarRoupa(Roupa r) {
        new RoupaDAO().cadastrarRoupa(r);
    }
}
