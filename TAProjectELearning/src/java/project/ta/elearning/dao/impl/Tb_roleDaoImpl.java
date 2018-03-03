/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.dao.impl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import project.ta.elearning.dao.Tb_roleDao;
import project.ta.elearning.model.Tb_roleModel;

/**
 *
 * @author Sou
 */
public class Tb_roleDaoImpl extends HibernateUtil implements Tb_roleDao{

    @Override
    public List<Tb_roleModel> getData() {
        List<Tb_roleModel> listData = new ArrayList<>();
        String sql = "select model from Tb_roleModel model";
        Query query = createQuery(sql);
        listData = query.list();
        return listData;
    }
    
}
