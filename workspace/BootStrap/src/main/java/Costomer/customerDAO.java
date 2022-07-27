package Costomer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


	public class customerDAO {


	
		private Connection conn;//자바 와 MYSQL 데이터베이스 연결
		private PreparedStatement pstmt;//쿼리문 대기 및 설정
		private ResultSet rs;//결과값 받아오기
		private PreparedStatement pstmt2;
		private PreparedStatement pstmt3;
		private PreparedStatement pstmt4;
		private ResultSet rs2;
		
	
		//기본 생성자
		//UserDAO 가 실행되면 자동으로 생성되는 부분
		//메소드마다 반복되는 코드를 이곳에넣으면 코드간소화 가능!
	
		public customerDAO(){
		
			try {
				String dbURL = "jdbc:mysql://localhost:3306/Bank";
				String dbID = "root";
				String dbPassword = "mysql";
				Class.forName ("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
			}catch (Exception e) {
				e.printStackTrace();
			}
		
		}
		public int login(String ID, String PW){
			String sql = "select PW from userInfo where ID = ?";
			
			try {
				pstmt = conn.prepareStatement(sql);//sql커리문 대기
				pstmt.setString(1, ID);//1번째 "?"에 매개변수로 받아온 ID를 넣어준다./
				rs = pstmt.executeQuery();//쿼리실행결과를 rs에저장
				if(rs.next()) {
					if(rs.getString(1).equals(PW)) {
						return 1;//로그인성공
					}else
						return 0;//비밀번호 틀림
				
				}
				return -1;//아이디 없음
			
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -2;//오류
		}
	
		public int join(customer CUSTOMER) {
			String sql = "insert into userinfo values(?,?,?,?,0)";
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, CUSTOMER.getUname());
				pstmt.setString(2, CUSTOMER.getID());
				pstmt.setString(3, CUSTOMER.getPW());
				pstmt.setString(4, CUSTOMER.getBankNumber());
				pstmt.executeUpdate();
				
				return 1;
			}catch (Exception e){
				e.printStackTrace();
			}
			return -1;
		}
		
		public void FindUserInfo(customer cus) {
			String sql = "select * from userInfo where ID = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,cus.getID());
				rs = pstmt.executeQuery();
				rs.next();
				String name = rs.getString(1);
				String id = rs.getString(2);
				String pw = rs.getString(3);
				String banknum = rs.getString(4);
				int money = rs.getInt(5);
//				System.out.println(name);
//				System.out.println(id);
//				System.out.println(pw);
//				System.out.println(banknum);
				cus.setBankNumber(banknum);
				cus.setID(id);
				cus.setMoney(money);
				cus.setPW(pw);
				cus.setUname(name);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		public int InputMoney(customer cus) {
			String sql = "select money from userinfo where id = ?;";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cus.getID());
				System.out.println(cus.getID());
				rs = pstmt.executeQuery();
				rs.next();
				int money = rs.getInt(1);
				String sql1 = "update userinfo set money = ? where id = ?";
				pstmt = conn.prepareStatement(sql1);
				pstmt.setInt(1, money + cus.getMoney());
				pstmt.setString(2,cus.getID());
				pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
				return -1;
			}
			return 1;
		}
		
		public int CheckMoney(customer cus) {
			String sql = "select money from userinfo where id = ?";
			int money = 0;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cus.getID());
				System.out.println(cus.getID());
				rs = pstmt.executeQuery();
				rs.next();
				money = rs.getInt(1);
				System.out.println(money);
			
			}catch (Exception e) {
				e.printStackTrace();
			}
			return money;
		}
		
		public int SendMoney(customer  cus) {
			String sql = "select money from userInfo where id = ?";
			int money = 0;
			try {
				System.out.println(cus.getID());
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,cus.getID());
				
				rs = pstmt.executeQuery();
				while(rs.next()) {
					System.out.println(rs.getInt(1));	
					money = rs.getInt(1);
				}
				String sql2 = "select money from userInfo where id = ?";
				int money2 = 0;
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setString(1, cus.getUID());
				rs2 = pstmt2.executeQuery();
				while(rs2.next()) {
					System.out.println(rs2.getInt(1));
					money2 = rs2.getInt(1);
				}
				money = money - cus.getUMONEY();
				money2 = money2 + cus.getUMONEY();
				System.out.println(money);
				System.out.println(money2);
				
				String sql3 = "update userinfo set money = ? where id = ?";
				pstmt3 = conn.prepareStatement(sql3);
				pstmt3.setInt(1, money);
				pstmt3.setString(2, cus.getID());
				pstmt3.executeUpdate();
				
				String sql4 = "update userinfo set money = ? where id = ?";
				pstmt4 = conn.prepareStatement(sql4);
				pstmt4.setInt(1, money2);
				pstmt4.setString(2, cus.getUID());
				pstmt4.executeUpdate();
			
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return 1;
		}
		
	}


