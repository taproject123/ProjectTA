/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.service;

import java.util.List;
import project.ta.elearning.dto.Tb_userDto;

/**
 *
 * @author Sou
 */
public interface Tb_userService {
//    public List<JenisKlinikDto> listJenisKlinik() throws Exception;
//
//    public JenisKlinikDto listJenisKlinikUpdate(Integer id) throws Exception;

    public void saveData(Tb_userDto userDto);
    public Integer loginUser(String username,String password);
    public Tb_userDto selectUser(String username,String password);
//
//    public void updateDataJenisKlinik(JenisKlinikDto jenisKlinikDto) throws Exception;
//
//    public void hapusJenisKlinik(Integer id);
}
