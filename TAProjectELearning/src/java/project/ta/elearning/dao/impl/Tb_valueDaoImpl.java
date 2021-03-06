/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.dao.impl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import project.ta.elearning.dao.Tb_valueDao;
import project.ta.elearning.model.Tb_valueModel;

/**
 *
 * @author Sou
 */
@Repository
public class Tb_valueDaoImpl extends HibernateUtil implements Tb_valueDao{

    @Override
    public List<Tb_valueModel> getData() {
        List<Tb_valueModel> listData = new ArrayList<>();
        String sql = "select model from Tb_valueModel model";
        Query query = createQuery(sql);
        listData = query.list();
        return listData;
    }

    @Override
    public void saveData(Tb_valueModel model) {
        try {
            getSession().save(model);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteData(Integer id) {
        try {
            Tb_valueModel model = new Tb_valueModel();
            model.setId(id);
            getSession().delete(model);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateData(Tb_valueModel model) {
        try {
            getSession().update(model);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Tb_valueModel> getDataById(Integer id) {
        List<Tb_valueModel> listData = new ArrayList<>();
        try {
            String sql = "select model from Tb_valueModel model where id = :id";
            Query query = createQuery(sql).setParameter("id", id);
            listData = query.list();
            
        } catch (Exception e) {
            e.printStackTrace();;
        }
            
    return listData;
    }
    
}
