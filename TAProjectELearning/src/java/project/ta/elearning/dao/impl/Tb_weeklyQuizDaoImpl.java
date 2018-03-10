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
import project.ta.elearning.dao.Tb_weeklyQuizDao;
import project.ta.elearning.model.Tb_weeklyQuizModel;

/**
 *
 * @author Sou
 */
@Repository
public class Tb_weeklyQuizDaoImpl extends HibernateUtil implements Tb_weeklyQuizDao{

    @Override
    public List<Tb_weeklyQuizModel> getData() {
        List<Tb_weeklyQuizModel> listData = new ArrayList<>();
        String sql = "select model from Tb_weeklyQuizModel model";
        Query query = createQuery(sql);
        listData = query.list();
        return listData;
    }

    @Override
    public void saveData(Tb_weeklyQuizModel model) {
        try {
            getSession().save(model);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteData(Integer id) {
        try {
            Tb_weeklyQuizModel model = new Tb_weeklyQuizModel();
            model.setId(id);
            getSession().delete(model);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateData(Tb_weeklyQuizModel model) {
        try {
            getSession().update(model);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Tb_weeklyQuizModel> getDataById(Integer id) {
        List<Tb_weeklyQuizModel> listData = new ArrayList<>();
        try {
            String sql = "select model from Tb_weeklyQuizModel model where id = :id";
            Query query = createQuery(sql).setParameter("id", id);
            listData = query.list();
            
        } catch (Exception e) {
            e.printStackTrace();;
        }
            
    return listData;
    }
    
}
