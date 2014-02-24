package model;

public class table_reserve {
	String table_id,zone,seat_amount,status;
	public String getSeat_amount() {
		return seat_amount;
	}
	public void setSeat_amount(String seat_amount) {
		this.seat_amount = seat_amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTable_id() {
		return table_id;
	}
	public void setTable_id(String table_id) {
		this.table_id = table_id;
	}
	public String getZone() {
		return zone;
	}
	public void setZone(String zone) {
		this.zone = zone;
	}
	public table_reserve() {
		// TODO Auto-generated constructor stub
	}

}
