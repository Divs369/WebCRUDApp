package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Employee;
import com.util.EmployeeUtil;

public class EmployeeDao {

	public static void insertEmployee(Employee e) {
		
		try {
			Connection conn = EmployeeUtil.createConnection();
			String sql = "insert into employee (fname,lname,email,mobile,gender,address) values (?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, e.getFname());
			pst.setString(2, e.getLname());
			pst.setString(3, e.getEmail());
			pst.setLong(4, e.getMobile());
			pst.setString(5, e.getGender());
			pst.setString(6, e.getAddress());
			pst.executeUpdate();
			
		} catch (Exception e2) {
			System.out.println(e2);
		}	
	}
	
	public static List<Employee> getAllEmployee() {
		
		List<Employee> list = new ArrayList<Employee>();
		
		Employee e = null;
		
		try {
			Connection conn = EmployeeUtil.createConnection();
			String sql = "select * from employee";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				
				e = new Employee();
				e.setId(rs.getInt("id"));
				e.setFname(rs.getString("fname"));
				e.setLname(rs.getString("lname"));
				e.setEmail(rs.getString("email"));
				e.setMobile(rs.getLong("mobile"));
				e.setGender(rs.getString("gender"));
				e.setAddress(rs.getString("address"));
				list.add(e);
			}
			
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return list;
	}
	
	public static Employee getEmployeeById(int id) {
		Employee e = null;
		
		try {
			Connection conn = EmployeeUtil.createConnection();
			String sql = "select * from Employee where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				e = new Employee();
				e.setId(rs.getInt("id"));
				e.setFname(rs.getString("fname"));
				e.setLname(rs.getString("lname"));
				e.setEmail(rs.getString("email"));
				e.setMobile(rs.getLong("mobile"));
				e.setGender(rs.getString("gender"));
				e.setAddress(rs.getString("address"));
			}
			
		} catch (Exception e2) {
			// TODO: handle exception
		}
		
		return e;
	}
	
	public static void updateEmployee(Employee e) {
		
		try {
			Connection conn = EmployeeUtil.createConnection();
			String sql = "update employee set fname=?,lname=?,email=?,mobile=?,gender=?,address=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, e.getFname());
			pst.setString(2, e.getLname());
			pst.setString(3, e.getEmail());
			pst.setLong(4, e.getMobile());
			pst.setString(5, e.getGender());
			pst.setString(6, e.getAddress());
			pst.setInt(7, e.getId());
			pst.executeUpdate();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	
	public static void deleteEmployee(int id) {
		
		try {
			Connection conn = EmployeeUtil.createConnection();
			String sql = "delete from employee where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
					
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
