import java.sql.*;
import java.util.Scanner;
import java.io.*;

public class Main {
	
	public static void printCli() {
		System.out.println("=====================================");
		System.out.println("(0) 종료");
		System.out.println("(1) 릴레이션 생성 및 데이터 추가");
		System.out.println("(2) 제목을 이용한 검색");
		System.out.println("(3) 관객수를 이용한 검색");
		System.out.println("(4) 개봉일을 이용한 검색");
		System.out.println("=====================================");
		System.out.printf("원하는 번호를 입력하세요: ");
	}
	
	public static void main(String[] args){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Scanner sc = new Scanner(System.in);
		
		try {
			//Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			//Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");

			//Execute a query
			stmt = conn.createStatement();
			System.out.println(stmt);
			
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		while(true) {
			printCli();
			int option = sc.nextInt();
			
			
			if(option == 0) break;
			else if(option == 1) { // 릴레이션 생성 및 데이터 추가
				try {
					
					DatabaseMetaData dbm = conn.getMetaData();
					ResultSet tables = dbm.getTables("mydb", null, "movie", null);
					if(tables.next()) { // mydb database에 movie Relation이 이미 존재하는 경우 movie Relation을 삭제한다.	
						stmt.executeUpdate("drop table movie");
					}
		
					
					stmt.executeUpdate("create table movie (\r\n"
							+ "    id           char(3), \r\n"
							+ "    title        varchar (100), \r\n"
							+ "    company      varchar (50),\r\n"
							+ "    releasedate  date,\r\n"
							+ "    country      varchar (10),  \r\n"
							+ "    totalscreen  int,\r\n"
							+ "    profit       numeric (15,2),\r\n"
							+ "    totalnum     int,\r\n"
							+ "    grade        varchar (50),\r\n"
							+ "    primary key (id))"
							); // movie Relation을 정의한다.
					
					
					//파일로부터 Data를 읽어와 tuple을 추가
					Scanner	fileScanner = new Scanner(new File("./movie_data.txt"));
					while(fileScanner.hasNextLine()) {
						String row = fileScanner.nextLine();
						String[] splitedRow = row.split("\\|");
						stmt.executeUpdate("insert into movie values (\""+splitedRow[1]+"\", \""+splitedRow[2]+"\", \""+splitedRow[3]+"\", \""
						+splitedRow[4]+"\", \""+splitedRow[5]+"\", \""+splitedRow[6]+"\", \""+splitedRow[7]+"\", \""+splitedRow[8]+"\", \""+splitedRow[9]+"\")");
					}
					
					
					
				} catch(SQLException e) {
					e.printStackTrace();
				} catch(Exception e) {
					e.printStackTrace();
				}
				
			} else if(option == 2) { // 제목을 이용한 검색
				try {
					System.out.printf("사용자 입력: ");
					String title = sc.next();
					rs = stmt.executeQuery("Select * from movie where title like \"%"+title+"%\"");
					while(rs.next()) {
						System.out.println();
		            	System.out.println(rs.getString("id") + "|" + rs.getString("title") + "|" + rs.getString("company") + "|" + rs.getDate("releasedate") + "|" 
						+ rs.getString("country") + "|" + rs.getInt("totalscreen") + "|" + String.format("%.2f", rs.getDouble("profit")) + "|" + rs.getInt("totalnum") + "|" + rs.getString("grade"));	
		            }
					
				} catch(SQLException e) {
					e.printStackTrace();
				} catch(Exception e) {
					e.printStackTrace();
				}
			} else if(option == 3) {
				try {
					System.out.printf("사용자 입력: ");
					int totalnum = sc.nextInt();
					rs = stmt.executeQuery("Select * from movie where totalnum > "+totalnum);
					while(rs.next()) {
						System.out.println();	
		            	System.out.println(rs.getString("id") + "|" + rs.getString("title") + "|" + rs.getString("company") + "|" + rs.getDate("releasedate") + "|" 
						+ rs.getString("country") + "|" + rs.getInt("totalscreen") + "|" + String.format("%.2f", rs.getDouble("profit")) + "|" + rs.getInt("totalnum") + "|" + rs.getString("grade"));	
		            }
					
				} catch(SQLException e) {
					e.printStackTrace();
				} catch(Exception e) {
					e.printStackTrace();
				}
			} else if(option == 4) {
				try {
					System.out.printf("사용자 입력: ");
					Scanner strScanner = new Scanner(System.in);
					String input = strScanner.nextLine();
					String[] d = input.split(",");
					
					rs = stmt.executeQuery("Select * from movie where (releasedate >= \""+d[0].trim()+"\" and releasedate <=\""
					+d[1].trim()+"\") or (releasedate >= \""+d[1].trim()+"\" and releasedate <=\""+d[0].trim()+"\")");
					while(rs.next()) {
						System.out.println();
		            	System.out.println(rs.getString("id") + "|" + rs.getString("title") + "|" + rs.getString("company") + "|" + rs.getDate("releasedate") + "|" + rs.getString("country") 
		            	+ "|" + rs.getInt("totalscreen") + "|" + String.format("%.2f", rs.getDouble("profit")) + "|" + rs.getInt("totalnum") + "|" + rs.getString("grade"));	
		            }
					
				} catch(SQLException e) {
					e.printStackTrace();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			
		}
		
	}

}
