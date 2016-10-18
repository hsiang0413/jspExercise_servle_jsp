package iii.servletjsp;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShowPictureServlet
 */
@WebServlet("/00/showPicture.do")
public class ShowPictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowPictureServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	 protected void doGet(HttpServletRequest request, HttpServletResponse
	 response) throws ServletException, IOException {
	 String[] sa={"fs.jpg","m001.jpg","m12.jpg","m46.jpg","m536.jpg"};
	 int num=(int)(Math.random()*sa.length); //產生亂數0~陣列長度減1
	 String filename=sa[num]; //取出檔名
	 //↓取出檔案的真實路徑
	 String realPath=getServletContext().getRealPath("/images/"+filename);
	 //default.jsp的相對路徑
	 String mimeType=getServletContext().getMimeType(filename); //得到檔案的真實路徑
	 response.setContentType(mimeType); //得到圖檔的MIME型態
	 OutputStream os = response.getOutputStream();
	 InputStream is = new FileInputStream(realPath);
	 byte[] b = new byte[8192]; //512的整數倍都可以,8192的效果好
	 int len=0;
	 while((len=is.read(b))!=-1){
	 os.write(b,0,len);
	 }
	 is.close();
	 os.close();
	 }
	 
	 /*
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String[] sa = { "fs.jpg", "m001.jpg", "m12.jpg", "m46.jpg", "m536.jpg" };
		int num = (int) (Math.random() * sa.length); // 產生亂數0~陣列長度減1
		String filename = sa[num]; // 取出檔名
									// ↓取出檔案的真實路徑
		String realPath = getServletContext()
				.getRealPath("/images/" + filename); // default.jsp的相對路徑
		String mimeType = getServletContext().getMimeType(filename); // 得到檔案的真實路徑
		response.setContentType(mimeType); // 得到圖檔的MIME型態
		try (OutputStream os = response.getOutputStream();
				InputStream is = new FileInputStream(realPath);) {

			byte[] b = new byte[8192]; // 512的整數倍都可以,8192的效果好
			int len = 0;
			while ((len = is.read(b)) != -1) {
				os.write(b, 0, len);
			}
		}
	}
	*/
}
