package food_manage;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/removefood")
public class Rev_food extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
       
    
    public Rev_food() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String we[]=request.getParameterValues("kindy");
			System.out.println(we[0]+we[1]);
			
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
