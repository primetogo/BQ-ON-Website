package model;

import java.util.Enumeration;

import com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable;



public class Food_Cart {
protected Hashtable items=new Hashtable();
public Food_Cart(){
	items=new Hashtable();
}
public Enumeration getItem(){
	return items.elements();
}
public void setQuantity(String food_id,String quantity){
	try{
		if(Integer.parseInt(quantity)<=0){
			quantity="1";
		}
	}
	catch(NumberFormatException e){quantity="1";}
	if(items.containsKey(food_id)){
		String[] tmpfr=(String[]) items.get(food_id);
		tmpfr[2]=quantity;
	}
}
public void addFood(String food_id,String food_name,int quantity,String food_price){
	String[] item={food_id,food_name,Integer.toString(quantity),food_price};
	if(items.containsKey(food_id)){
		String[] tmpfr=(String[]) items.get(food_id);
		int tmpNum=Integer.parseInt(tmpfr[2]);
		quantity+=tmpNum;
		tmpfr[2]=Integer.toString(quantity);
	}
	else
	{
		items.put(food_id, item);
	}
		
	} 
public void close(){
	items=new Hashtable();
}
public void removeFood(String food_id){
	for(int i=0;i<items.size();i++){
		if(items.containsKey(food_id)){
			items.remove(food_id);
		}
	}
}
}

