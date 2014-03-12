package model;

public class MENUBEAN {
	int Fmenu;
	int Emenu;
	int Pageno;
	int rNumRow;
	int Tpage;
	int Trow;
	String action;
	public int getFmenu() {
		return Fmenu;
	}
	public int getEmenu() {
		return Emenu;
	}
	public int getPageno() {
		return Pageno;
	}
	public void setPageno(int pageno) {
		Pageno = pageno;
	}
	public int getTpage() {
		return Tpage;
	}
	public void setTpage(int tpage) {
		Tpage = tpage;
	}
	public int getTrow() {
		return Trow;
	}
	public void setTrow(int trow) {
		Trow = trow;
	}
	public MENUBEAN() {
		Pageno=1;
		rNumRow=15;
		action=new String();
	}
public void actionPage(String action,int rNumRow){
	Tpage=(int)Math.ceil((float)Trow/rNumRow);
	if(action.equals("first")){
		Pageno=1;
	}
	if(action.equals("next")){
		Pageno+=1;
		if(Pageno>Tpage){
			Pageno=Tpage;
		}}
		if(action.equals("previous")){
			Pageno-=1;
			if(Pageno<1){
				Pageno=1;
			}
		}
		if(action.equals("last")){
			Pageno=Tpage;
		}
	if(action.equals("Pageno")){
	if(Pageno<1){
		Pageno=1;}	
	}
	else if(Pageno>Tpage){
		Pageno=Tpage;
	}
	else{
		Pageno=Pageno;
	}
	
	Fmenu=(((Pageno-1)*rNumRow)+1);
	Emenu=((Pageno)*rNumRow);
}
}
