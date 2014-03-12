package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.LinkedList;
import java.util.List;

import com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable;

public class Table_cart {
protected Hashtable table=new Hashtable();
public Table_cart(){
	table=new Hashtable();
}
public Enumeration getTable(){
	return table.elements();
}

public void addTable(String table_id,String zone,String status){
	String[] item={table_id,zone,status};
		table.put(table_id, item);	
	} 
public void close(){
	table=new Hashtable();
}
public void removeTable(String table_id){
	for(int i=0;i<table.size();i++){
		if(table.containsKey(table_id)){
			table.remove(table_id);
		}
	}
}
}
