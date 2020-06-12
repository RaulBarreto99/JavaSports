/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import java.util.List;

/**
 *
 * @author lucas
 */
public interface InterfaceDAO {
    
    public boolean insert(Object object);
    public boolean update(Object object);
    public boolean delete(int id);
    public List<Object> getAll();
}
