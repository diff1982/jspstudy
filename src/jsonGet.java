
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.alibaba.fastjson.*;

/**
 * Servlet implementation class jsonGet
 */
public class jsonGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public jsonGet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("<html>"); 
		//输出 html 元素 
		System.out.println("<head><title>MLDNJAVA</title></head>");
		//输出 html 元素 
		System.out.println("<body>");//输出 html 元素 
		System.out. println("<h1> HELLO WORLD</h1>");

		System.out.println("</body>");//输出 html 元素 
		System.out.println("</html>");//输出 html 元素 
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		StringBuffer jb = new StringBuffer();
		String line = null;
		String result = "";
		
		try {
			BufferedReader reader = request.getReader();
			while((line=reader.readLine())!=null) {
				jb.append(line);
			}
		}catch(Exception e) {}
		
		try{JSONObject jsonObject = JSONObject.parseObject(jb.toString());
		result= jsonObject.toJSONString();		
		}catch(Exception e) {
			throw new IOException("Error parsing JSON request string");
		}
		
		PrintStream out = new PrintStream(response.getOutputStream());
		//FileOutputStream file =new FileOutputStream("d:/temp.txt");
		out.println(jb.toString());
		out.println(result);
		//file.write((jb.toString().getBytes()));
		//file.close();
		
	}

}
