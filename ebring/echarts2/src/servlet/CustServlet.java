package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import net.sf.json.JSONObject;
import pojo.CustInfo;
import service.CustService;

public class CustServlet extends HttpServlet {
	private static final long serialVersionUID = -7820821330469179358L;
	@Override
    public void init() throws ServletException {
        super.init();
    }
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        
        CustService custService = new CustService();
		List<CustInfo> lst = custService.findProdInfo();
		Gson gson= new Gson();
        resp.getWriter().print(gson.toJson(lst));
	}
}