package getPath;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Get {
    public String getPath (int num){
        String str = "";
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "2423");
            String quary = "select * from picture where ID = " + num;
            Statement statement = conn.createStatement();
            ResultSet resSet = statement.executeQuery(quary);
            resSet.next();
            str = resSet.getString(3);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return str;
    }

    public int getRandomNum (int num){
        return (int)(Math.random()*num) + 1;
    }
}