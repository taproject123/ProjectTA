/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.dao.impl;

import java.util.List;
import org.hibernate.Query;
import project.ta.elearning.dao.Tb_userDao;
import project.ta.elearning.model.Tb_userModel;

/**
 *
 * @author Sou
 */
public class Tb_userDaoImpl extends HibernateUtil implements Tb_userDao{

    @Override
    public void saveData(Tb_userModel userModel) {
        try {
            getSession().save(userModel);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    @Override
    public List<Tb_userModel> loginUser(String username, String password) {
        List<Tb_userModel> listUser = null;
        String sql = "select model from Tb_userModel model where username=:uname and password= :pwd";
        Query q = null;
        q = createQuery(sql).setParameter("uname", username).setParameter("pwd", password);
        listUser = q.list();
        return listUser;
    }
    
}
