/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.Posttable;
import db.Users;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author KGRS
 */
public class PostFunctions {
    
    private final SessionFactory sf;
    Session ses;
    
    public PostFunctions(){
        sf = conn.HibernateUtil.getSessionFactory();
        ses = sf.openSession();
    }
    
    private List selectPost(){
        Session ses = sf.openSession();
        Criteria cr = ses.createCriteria(PostFunctions.class);
        List<Posttable> p = cr.list();
        return p;
    }
    
    public void InsertPost(Posttable pos) throws Exception{ 
        Transaction tr = ses.beginTransaction();      
        ses.save(pos);
        tr.commit();
    }

//    public void InsertPost(Users u, int countryNo, int genderNo) throws Exception { 
//        Countrytable cr = (Countrytable) ses.load(Countrytable.class, countryNo);
//        Gender gn = (Gender) ses.load(Gender.class, genderNo);
//        u.setCountrytable(cr);
//        u.setGender(gn);
//        InsertUser(u);
//    }
//https://grails.org/
    public void InsertPost(Posttable po, int uid) throws Exception {
        Users us = (Users) ses.load(Users.class,uid);
        po.setUsers(us);
     InsertPost(po); 
    }
    
    
}
