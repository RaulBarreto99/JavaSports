package br.senac.sp.entidade;

import at.favre.lib.crypto.bcrypt.BCrypt;
import br.senac.sp.utils.PerfilEnum;

public class Usuario {
    
    private long id;
    private String nome;
    private String login;
    private String senha;
    private PerfilEnum perfil;
    private boolean isAdmin;

    public Usuario() {
        
    }
    
    
    public Usuario(String nome, String login,String senha,String perfil) {
        this.nome = nome;
        this.login = login;
        this.senha = encodeSenha(senha);
        this.perfil = PerfilEnum.valueOf(perfil);
    }
    
    public String encodeSenha(String senhaAberta) {
        return BCrypt.withDefaults().hashToString(12, senhaAberta.toCharArray());
    }
    
    public boolean validarSenha(String senhaAberta) {
        BCrypt.Result result = BCrypt.verifyer().verify(senhaAberta.toCharArray(), this.getSenha());
        return result.verified;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
    
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public String getLogin() {
        return login;
    }

    public void setLogin(String usuario) {
        this.login = usuario;
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