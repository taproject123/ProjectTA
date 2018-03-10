/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.service;

import java.util.List;
import project.ta.elearning.dto.Tb_assignmentDto;

/**
 *
 * @author Sou
 */

public interface Tb_assignmentService {
    public List<Tb_assignmentDto> getData(); 
    public void saveData(Tb_assignmentDto dto);
    public void deleteData(Integer id);
    public void updateData(Tb_assignmentDto dto);
    public Tb_assignmentDto getDataById(Integer id);
}
