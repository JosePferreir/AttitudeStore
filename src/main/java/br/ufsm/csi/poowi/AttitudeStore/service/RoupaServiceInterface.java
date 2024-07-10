package br.ufsm.csi.poowi.AttitudeStore.service;

import br.ufsm.csi.poowi.AttitudeStore.model.Roupa;
import java.util.ArrayList;

public interface RoupaServiceInterface {
    ArrayList<Roupa> getAllRoupas();
    Roupa getRoupaById(int id);
    void excluir(int id);
    void editarRoupa(Roupa r);
    void cadastrarRoupa(Roupa r);
}
