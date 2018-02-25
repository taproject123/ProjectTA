/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.dao;

import java.util.List;
import project.ta.elearning.model.Tb_userModel;

/**
 *
 * @author Sou
 */
public interface Tb_userDao {
//    public List<JenisKlinikModel> listJenisKlinik() throws Exception;
//
//    public List<JenisKlinikModel> listJenisKlinikUpdate(Integer id) throws Exception;
//
//    public JenisKlinikModel getJenisKlinikById(Integer id) throws Exception;
    public List<Tb_userModel> loginUser (String username,String password);
    public void saveData(Tb_userModel userModel);
//
//    public void updateDataJenisKlinik(JenisKlinikModel jenisKlinikModel) throws Exception;
//
//    public void hapusJenisKlinik(Integer id);   
}
