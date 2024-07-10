package br.ufsm.csi.poowi.AttitudeStore.service;

import br.ufsm.csi.poowi.AttitudeStore.model.Roupa;
import java.util.ArrayList;

public abstract class RoupaServiceDecorator implements RoupaServiceInterface {
    protected RoupaServiceInterface decoratedRoupaService;

    public RoupaServiceDecorator(RoupaServiceInterface decoratedRoupaService) {
        this.decoratedRoupaService = decoratedRoupaService;
    }

    @Override
    public ArrayList<Roupa> getAllRoupas() {
        return decoratedRoupaService.getAllRoupas();
    }

    @Override
    public Roupa getRoupaById(int id) {
        return decoratedRoupaService.getRoupaById(id);
    }

    @Override
    public void excluir(int id) {
        decoratedRoupaService.excluir(id);
    }

    @Override
    public void editarRoupa(Roupa r) {
        decoratedRoupaService.editarRoupa(r);
    }

    @Override
    public void cadastrarRoupa(Roupa r) {
        decoratedRoupaService.cadastrarRoupa(r);
    }
}
