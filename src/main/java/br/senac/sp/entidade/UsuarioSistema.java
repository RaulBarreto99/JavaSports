package br.senac.sp.entidade;

import at.favre.lib.crypto.bcrypt.BCrypt;
import br.senac.sp.utils.PerfilEnum;

public class UsuarioSistema {
    
    private long id;
    private String nome;
    private String usuario;
    private String senha;
    private PerfilEnum perfil;
    private boolean isAdmin;
    
    public String encodeSenha(String senhaAberta) {
        return BCrypt.withDefaults().hashToString(12, senhaAberta.toCharArray());
    }
    
    public boolean validarSenha(String senhaAberta) {
        BCrypt.Result result = BCrypt.verifyer().verify(senhaAberta.toCharArray(), this.getSenha());
        return result.verified;
    }
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public PerfilEnum getPerfil() {
        return perfil;
    }

    public void setPerfil(PerfilEnum perfil) {
        this.perfil = perfil;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public boolean isAdmin() {
        return PerfilEnum.admin.equals(this.getPerfil());
    }
    
    public boolean isFuncionario(){
        return PerfilEnum.funcionario.equals(this.getPerfil());
    }
    
    public boolean isGerente(){
        return PerfilEnum.gerente.equals(this.getPerfil());
    }
    
}