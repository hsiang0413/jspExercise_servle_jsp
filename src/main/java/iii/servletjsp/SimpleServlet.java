package iii.servletjsp;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns={"/00/FirstSimpleProgram","/50/*"})
public class SimpleServlet extends HttpServlet {
  
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
		resp.setContentType("text/html;charset=Utf-8");
		PrintWriter out=resp.getWriter();
		out.println("<html><head><title>");
		out.println("由Servlet來產生回應很累,</title");
		out.println("</head><body>");
		out.println("<h3>這是doGet()方法印出的訊息</h3>");
		out.println("<hr>");
		out.println("您的ip為"+req.getRemoteAddr()+"<br>");
		out.println("RequestURL"+req.getRequestURI()+"<br>");
		out.println("RequestURL"+req.getQueryString()+"<br>");
		out.println("<hr>");
		out.println("瀏覽器標頭投有:<br>");
		
		Enumeration<String> en = req.getHeaderNames();
		while(en.hasMoreElements()){
			String name=en.nextElement();
			out.println(name+"==>"+req.getHeader(name)+"<br>");
		}
		out.println("</body></html>");
		out.close();
     System.out.println("這是doGet()方法印出的訊息");
  }

  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
     System.out.println("這是doPost()方法印出的訊息");
  }
    
}
