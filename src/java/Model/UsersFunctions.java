/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.Countrytable;
import db.Gender;
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
    
    private   SessionFactory sf;
    Session ses;
    public UsersFunctions(){
        sf = conn.HibernateUtil.getSessionFactory();
        ses = sf.openSession();
    }
    
    public static void main(String[] args) {
        new UsersFunctions().selectUsers();
    }
    
    private List selectUsers(){ 
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
    
    public void InsertUser(Users usr) throws Exception{ 
        Transaction tr = ses.beginTransaction();      
        ses.save(usr);
        tr.commit();
    }

    public void InsertUser(Users u, int countryNo, int genderNo) throws Exception { 
        Countrytable cr = (Countrytable) ses.load(Countrytable.class, countryNo);
        Gender gn = (Gender) ses.load(Gender.class, genderNo);
        u.setCountrytable(cr);
        u.setGender(gn);
        InsertUser(u);
    }
    
    
}
