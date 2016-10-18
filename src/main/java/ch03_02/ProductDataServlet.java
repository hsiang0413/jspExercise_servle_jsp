package ch03_02;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ch03_02/ProductDataServlet")

public class ProductDataServlet extends HttpServlet {	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    List<String> messageA = new ArrayList<String>();
	    messageA.add("現在要由ProductDataServlet產生一份資料，然後到Request Scope內，");
	    messageA.add("再由另外一個JSP程式透過Scripting的方式將這些訊息顯示在螢幕上");
	    int[]  payment = {100, 250, 92, 105};
	    int sum = 0 ;
	    for (int n = 0 ; n < payment.length; n++) {
	       sum += payment[n];
	    }
	    request.setAttribute("TotalPayment", sum);
	    RequestDispatcher rd = request.getRequestDispatcher("/ch03_02/DisplayMessage.jsp");   
	    rd.forward(request, response);
	    return ; 	    
	}
}