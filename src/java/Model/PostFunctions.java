/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.Post;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author KGRS
 */
public class PostFunctions {
    
    private final SessionFactory sf;
    
    public PostFunctions(){
        sf = conn.HibernateUtil.getSessionFactory();
    }
    
    private List selectPost(){
        Session ses = sf.openSession();
        Criteria cr = ses.createCriteria(PostFunctions.class);
        List<Post> p = cr.list();
        return p;
    }
    
    
    
}
