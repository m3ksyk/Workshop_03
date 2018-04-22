package controller;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class DBUtil {
    private static DataSource ds;
    public static Connection getConnection() throws SQLException {
        return getInstance().getConnection();
    }
    private static DataSource getInstance() {
        if(ds == null) {
            try {
                Context ctx = new InitialContext();
                ds = (DataSource)ctx.lookup("java:comp/env/jdbc/school");
            } catch (NamingException e) {
                e.printStackTrace();}}
        return ds;}
}

//public class DBUtil {
//    private static String DB_URL =
//            "jdbc:mysql://localhost:3306/school?useSSL=false";
//
//    private static String DB_USER = "root";
//    private static String DB_PASS = "coderslab";
//
//    public static Connection getConnection() throws SQLException {
//        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
//    }
//}
