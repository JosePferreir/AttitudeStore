package br.ufsm.csi.poowi.AttitudeStore.service;

import br.ufsm.csi.poowi.AttitudeStore.dao.RoupaDAO;
import br.ufsm.csi.poowi.AttitudeStore.model.Roupa;

import java.util.ArrayList;

public class RoupaService {

    public ArrayList<Roupa> getAllRoupas(){
        return new RoupaDAO().getAllRoupas();
    }
}
