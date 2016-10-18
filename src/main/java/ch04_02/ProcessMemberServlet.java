package ch04_02;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcessMemberServlet
 */
@WebServlet("/ch04_02/member.do")
public class ProcessMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Collection<String> errorMessage=new ArrayList<String>();
		request.setAttribute("ErrorMsg", errorMessage);
		
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("mId");
			if(id==null || id.trim().length()==0){
				errorMessage.add("帳號欄必須輸入");
			}
		String password=request.getParameter("pswd");
			if(password==null || password.trim().length()==0){
				errorMessage.add("密碼欄必須輸入");
			}
		String name=request.getParameter("mName");
			if(name==null ||name.trim().length()==0){
				errorMessage.add("姓名欄必須輸入");
			}
		String address=request.getParameter("mAddress");
			if(address==null || address.trim().length()==0){
				errorMessage.add("地址欄必須輸入");
			}
		String phone=request.getParameter("mPhone");
		String bday= request.getParameter("mBirthday");
		java.sql.Date date=null;
		if(bday!=null && bday.trim().length()>0){
			try{
				date=java.sql.Date.valueOf(bday);
			}catch(IllegalArgumentException e){
				errorMessage.add("生日欄格式錯誤");
			}
		}
		
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		String weight=request.getParameter("mWeight");
		double dWeight=-1;
		
		if(weight!=null && weight.trim().length()>0){
			try{
				dWeight = Double.parseDouble(weight.trim());
			}catch(NumberFormatException e){
				errorMessage.add("體重欄必須為數值");
			}
		}
		
		if(!errorMessage.isEmpty()){
			RequestDispatcher rd = request.getRequestDispatcher("/ch04_02/InsertMemberError.jsp");
			rd.forward(request, response);
			return;
		}

		
		MemberBean mb = new MemberBean(id,name,password,address,phone,date,ts,dWeight);
		try{
			MemberDAO mfio = new MemberDAO();
			mfio.insertMember(mb);
			request.setAttribute("memberBean",mb);
			RequestDispatcher rd=request.getRequestDispatcher("/ch04_02/InsertMemberSuccess.jsp");
			rd.forward(request,response);
			return;
		} catch (SQLException e) {
			if(e.getMessage().indexOf("重複的索引鍵")!=-1 ||
			   e.getMessage().indexOf("Duplicate entry") !=-1){
				errorMessage.add("帳號重複，請重新輸入帳號");
			}else{
				errorMessage.add("資料庫存取錯誤:"+ e.getMessage());
			}
			RequestDispatcher rd = request.getRequestDispatcher("/ch04_02/InsertMemberError.jsp");
			rd.forward(request, response);
			return;
		}
	}
	
	

}
