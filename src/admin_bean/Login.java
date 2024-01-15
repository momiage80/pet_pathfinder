package admin_bean;

public class Login implements java.io.Serializable{
       private String id;
       private String password;

       public String getId(){
    	   return id;
       }

       public String getPassword(){
    	   return password;
       }

       public void setId(String id){
    	   this.id=id;
       }

       public void setPassword(String password){
    	   this.password=password;
       }

}

