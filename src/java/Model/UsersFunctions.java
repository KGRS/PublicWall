/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.Users;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author KGRS
 */
public class UsersFunctions {
    
    private final SessionFactory sf;
    
    public UsersFunctions(){
        sf = conn.HibernateUtil.getSessionFactory();
    }
    
    public static void main(String[] args) {
        new UsersFunctions().selectUsers();
    }
    
    private List selectUsers(){
        Session ses = sf.openSession();
        Criteria cr = ses.createCriteria(UsersFunctions.class);
        List<Users> u = cr.list();
//        for (Users u1 : u) {
//            System.out.println(u1.getUsername());
//        }        
        return u;
    }
    
    private Users selectUser(int userid) throws Exception{
        Session ses = sf.openSession();
        Criteria cr = ses.createCriteria(UsersFunctions.class);
        cr.add(Restrictions.eq("userd", userid));
        return (Users) cr.uniqueResult();        
    }
    
    public void InserttUser(Users usr) throws Exception{
        Session ses = sf.openSession();
        Transaction tr = ses.beginTransaction();      
        ses.save(usr);
        tr.commit();
        ses.flush();
    }
    
    
}
