package vo;

import java.sql.Timestamp;

public class ReservationVo {
	private int resNum;
	private int menuNum;
	private int resSum;
	private Timestamp resTime;
	private String resDate;
	private String userName;
	private int userNum;
	private String userTel;	
	private String userEmail;
	
	private String menuTitle;
	private int menuPrice;
	private String color;
	
	public int getResNum() {
		return resNum;
	}
	public void setResNum(int resNum) {
		this.resNum = resNum;
	}
	public int getmenuNum() {
		return menuNum;
	}
	public void setmenuNum(int menuNum) {
		this.menuNum = menuNum;
	}
	public int getResSum() {
		return resSum;
	}
	public void setResSum(int resSum) {
		this.resSum = resSum;
	}
	public Timestamp getResTime() {
		return resTime;
	}
	public void setResTime(Timestamp resTime) {
		this.resTime = resTime;
	}
	public String getResDate() {
		return resDate;
	}
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}
	public String getmenuTitle() {
		return menuTitle;
	}
	public void setmenuTitle(String menuTitle) {
		this.menuTitle = menuTitle;
	}
	public int getmenuPrice() {
		return menuPrice;
	}
	public void setmenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	@Override
	public String toString() {
		return "ReservationVo [resNum=" + resNum + ", menuNum=" + menuNum
				+ ", resSum=" + resSum + ", resTime=" + resTime + ", resDate="
				+ resDate + ", userName=" + userName + ", userNum=" + userNum
				+ ", userTel=" + userTel + ", userEmail=" + userEmail
				+ ", menuTitle=" + menuTitle + ", menuPrice=" + menuPrice
				+ ", color=" + color + "]";
	}
	
}
