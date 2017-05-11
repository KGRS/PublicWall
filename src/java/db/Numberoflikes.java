package db;
// Generated May 11, 2017 9:09:59 PM by Hibernate Tools 3.6.0



/**
 * Numberoflikes generated by hbm2java
 */
public class Numberoflikes  implements java.io.Serializable {


     private Integer numberoflikesLogid;
     private Posttable posttable;
     private Users users;
     private String remarks;

    public Numberoflikes() {
    }

	
    public Numberoflikes(Posttable posttable, Users users) {
        this.posttable = posttable;
        this.users = users;
    }
    public Numberoflikes(Posttable posttable, Users users, String remarks) {
       this.posttable = posttable;
       this.users = users;
       this.remarks = remarks;
    }
   
    public Integer getNumberoflikesLogid() {
        return this.numberoflikesLogid;
    }
    
    public void setNumberoflikesLogid(Integer numberoflikesLogid) {
        this.numberoflikesLogid = numberoflikesLogid;
    }
    public Posttable getPosttable() {
        return this.posttable;
    }
    
    public void setPosttable(Posttable posttable) {
        this.posttable = posttable;
    }
    public Users getUsers() {
        return this.users;
    }
    
    public void setUsers(Users users) {
        this.users = users;
    }
    public String getRemarks() {
        return this.remarks;
    }
    
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }




}


