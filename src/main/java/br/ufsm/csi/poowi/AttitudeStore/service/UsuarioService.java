package br.ufsm.csi.poowi.AttitudeStore.service;

import br.ufsm.csi.poowi.AttitudeStore.dao.UsuarioDAO;
import br.ufsm.csi.poowi.AttitudeStore.model.Usuario;

public class UsuarioService {

    public Usuario autenticar(String email, String senha){
        Usuario u = new UsuarioDAO().getUsuarioAutenticar(email);

        if(u.getPermissao() != null && u.getEmail().equals(email) && u.getSenha().equals(senha)){
            return u;
        }
        return null;
    }

}
