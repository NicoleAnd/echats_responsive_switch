package util;



import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class ResponseWriter {
	
	static PrintWriter out ;
	
	
	public  static  void  writer(HttpServletResponse response,boolean  boo){
		try {
			response.setContentType("application/json");
			response.setHeader("Cache-Control", "no-store");
			response.setCharacterEncoding("UTF-8");
			out =response.getWriter();
			out.write("{\"success\":"+boo+"}");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			out.flush();
			out.close();
		}
	}
	
	
	
	public  static  void  writer(HttpServletResponse response,String msg,boolean  boo){
		try {
			response.setContentType("application/json");
			response.setHeader("Cache-Control", "no-store");
			response.setCharacterEncoding("UTF-8");
			out =response.getWriter();
			out.write("{\"success\":"+boo+",\"msg\":\""+msg+"\"}");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			out.flush();
			out.close();
		}
	}
	
	
	public  static  void  writer(HttpServletResponse response,String msg){
		try {
			response.setContentType("application/json");
			response.setHeader("Cache-Control", "no-store");
			response.setCharacterEncoding("UTF-8");
			out =response.getWriter();
			out.write(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			out.flush();
			out.close();
		}
	}
	

}
