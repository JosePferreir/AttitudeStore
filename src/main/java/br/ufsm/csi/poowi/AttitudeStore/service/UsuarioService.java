package br.ufsm.csi.poowi.AttitudeStore.service;

import br.ufsm.csi.poowi.AttitudeStore.dao.UsuarioDAO;
import br.ufsm.csi.poowi.AttitudeStore.model.Usuario;

import java.util.ArrayList;

public class UsuarioService {

    public Usuario autenticar(String email, String senha){
        Usuario u = new UsuarioDAO().getUsuarioAutenticar(email);

        if(u.getPermissao() != null && u.getEmail().equals(email) && u.getSenha().equals(senha)){
            return u;
        }
        return null;
    }

    public void editarPerfil(Usuario u){
        new UsuarioDAO().editarUsuario(u);
    }

    public Usuario getUsuarioById(int id){
        return new UsuarioDAO().getUsuarioById(id);
    }

    public ArrayList<Usuario> getAllUsuarios(){
        return new UsuarioDAO().getAllUsuarios();
    }

    public void cadastrarUsuario(Usuario u){
        new UsuarioDAO().cadastrarUsuario(u);
    }

}
