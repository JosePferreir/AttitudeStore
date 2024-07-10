package br.ufsm.csi.poowi.AttitudeStore.service;

import br.ufsm.csi.poowi.AttitudeStore.model.Roupa;
import java.util.ArrayList;

public class LoggingRoupaServiceDecorator extends RoupaServiceDecorator {

    public LoggingRoupaServiceDecorator(RoupaServiceInterface decoratedRoupaService) {
        super(decoratedRoupaService);
    }

    @Override
    public void cadastrarRoupa(Roupa r) {
        System.out.println("Logging: Cadastrando roupa");
        super.cadastrarRoupa(r);
    }

    @Override
    public void editarRoupa(Roupa r) {
        System.out.println("Logging: Editando roupa");
        super.editarRoupa(r);
    }

    @Override
    public void excluir(int id) {
        System.out.println("Logging: Excluindo roupa com ID " + id);
        super.excluir(id);
    }

    @Override
    public ArrayList<Roupa> getAllRoupas() {
        System.out.println("Logging: Obtendo todas as roupas");
        return super.getAllRoupas();
    }

    @Override
    public Roupa getRoupaById(int id) {
        System.out.println("Logging: Obtendo roupa com ID " + id);
        return super.getRoupaById(id);
    }
}
