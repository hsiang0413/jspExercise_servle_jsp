package ch02;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcessMemberServlet
 */
@WebServlet("/ch02/member.do")
public class ProcessMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("mId");
		String password=request.getParameter("pswd");
		String name=request.getParameter("mName");
		String address=request.getParameter("mAddress");
		String phone=request.getParameter("mPhone");
		String bday= request.getParameter("mBirthday");
		java.sql.Date date=null;
		try{
			date=java.sql.Date.valueOf(bday); //把使用者輸入的資料轉成sql.Date型別
//			System.out.println("bday="+bday);
//			System.out.println("date="+date);
		}catch(Exception e){
			;
		}
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		System.out.println("System.currentTimeMillis()="+System.currentTimeMillis());  
														//↑ =1462677663745 ;得到現在到1911年的毫秒數
		System.out.println("Timestamp(System.currentTimeMillis()="+ts); 
							//↑ =2016-05-08 11:21:03.744 ; Timestamp(毫秒數)轉成日期時間格式
		String weight=request.getParameter("mWeight");
		double dWeight=-1;
		try{
			dWeight=Double.parseDouble(weight.trim()); //把使用者輸入的資料去掉前後空白然後轉成Double型別
//			System.out.println("weight="+weight);
//			System.out.println("dWeight="+dWeight);
			
		}catch(NumberFormatException e){
			;
		}catch(NullPointerException e){
			;
		}
		MemberBean mb = new MemberBean(id,name,password,address,phone,date,ts,dWeight);
		try{
			MemberFileIO mfio = new MemberFileIO("c:\\data\\member.dat");
			mfio.insertMember(mb);
			request.setAttribute("memberBean",mb);
			RequestDispatcher rd=request.getRequestDispatcher("/ch02/InsertMemberSuccess.jsp");
			rd.forward(request,response);
			return;
		}catch(IOException e){
			RequestDispatcher rd = request.getRequestDispatcher("/ch02/InsertMemberError.jsp");
			rd.forward(request, response);
			return;
		}
	}
	
	

}
