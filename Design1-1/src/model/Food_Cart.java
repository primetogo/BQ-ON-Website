package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;


public class Food_Cart {
List <Food_reserve> Food_reserve;
Connection conn;
public void addFood(String Food_id){
	try{
	Statement food_add=conn.createStatement();
	String sql="SELECT * from resnew.food where Food_id='" + Food_id + "'";
	ResultSet rs = food_add.executeQuery(sql);
	while (rs.next()) {
		Food_reserve fr = new Food_reserve();
		fr.setFood_id(Food_id);
		fr.setFood_name(rs.getString("Food_name"));
		fr.setFood_price(rs.getInt("Food_price"));
		fr.setFood_type(rs.getString("Food_type"));
		Food_reserve.add(fr);
		}
		} catch (SQLException ex) {
		ex.printStackTrace();
		}
	
}
public List<Food_reserve> getFood_reserve() {
return Food_reserve;
}
public Food_Cart(Connection conn) {
this.conn = conn;
Food_reserve = new LinkedList<Food_reserve>();
}
public void removeFood(String Food_id) {
	Food_reserve.remove(Food_id);
}
	public Food_Cart() {
		// TODO Auto-generated constructor stub
	}

}
