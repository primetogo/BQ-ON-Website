package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class Table_cart {
List <table_reserve> table_reserve;
Connection conn;
public void addTable(String table_id){
	try{
		Statement table_add=conn.createStatement();
		String sql="SELECT * from resnew.table where table_id='" + table_id + "'";
		ResultSet rs = table_add.executeQuery(sql);
		while (rs.next()) {
			table_reserve tr = new table_reserve();
			tr.setTable_id(table_id);
			tr.setZone(rs.getString("Zone"));
			tr.setSeat_amount(rs.getString("Seat_amount"));
			tr.setStatus(rs.getString("Table_Status"));
			table_reserve.add(tr);
			}
			} catch (SQLException ex) {
			ex.printStackTrace();
			}
	}
public List<table_reserve> gettable_reserve() {
return table_reserve;
}
public Table_cart(Connection conn) {
this.conn = conn;
table_reserve = new LinkedList<table_reserve>();
}
public void removeItem(String table_id) {
	table_reserve.remove(table_id);
}
	public Table_cart() {
		// TODO Auto-generated constructor stub
	}

}
