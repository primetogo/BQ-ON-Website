package database.listener;

import java.sql.Connection;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;


@WebListener
public class Init implements ServletContextListener {
	
	@Resource(name="jdbc/resnew")
	private DataSource jdbcTest;
	
	private Connection conn;

    public Init() {
       
    }

	
    public void contextInitialized(ServletContextEvent arg0) {
    	try{
    		conn = jdbcTest.getConnection();
    		arg0.getServletContext().setAttribute("connection", conn);
    	}catch(SQLException e){
    		System.out.println(e);
    	}
        
    }

	
    public void contextDestroyed(ServletContextEvent arg0) {
        try{
        	conn.close();
        }catch(SQLException e){
        	System.out.println(e);
        }
    }
	
}
