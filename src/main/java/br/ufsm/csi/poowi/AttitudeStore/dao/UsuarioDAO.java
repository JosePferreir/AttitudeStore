package br.ufsm.csi.poowi.AttitudeStore.dao;

import br.ufsm.csi.poowi.AttitudeStore.model.Permissao;
import br.ufsm.csi.poowi.AttitudeStore.model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UsuarioDAO {

    private String sql;
    private Statement stmt;
    private ResultSet rs;
    private String status;
    private PreparedStatement preparedStatement;

    public Usuario getUsuarioAutenticar(String email){
        Usuario u = new Usuario();
        try(Connection conn = new ConectaDB().getConexao()){
            this.sql = "SELECT * FROM usuario, permissao, usuario_permissao " +
                    "WHERE usuario.usuario_id = usuario_permissao.usuario_id and " +
                    "permissao.permissao_id = usuario_permissao.permissao_id and " +
                    "usuario.email = ?";
            this.preparedStatement = conn.prepareStatement(this.sql);
            preparedStatement.setString(1,email);
            this.rs = this.preparedStatement.executeQuery();

            while(this.rs.next()){
                u.setId(this.rs.getInt("usuario_id"));
                u.setNome(this.rs.getString("nome"));
                u.setCpf(this.rs.getString("cpf"));
                u.setIdade(this.rs.getInt("idade"));
                u.setEmail(this.rs.getString("email"));
                u.setSenha((this.rs.getString(("senha"))));

                Permissao p = new Permissao();
                p.setId(rs.getInt("permissao_id"));
                p.setNome(rs.getString("nome_permissao"));
                u.setPermissao(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return u;
    }

}
