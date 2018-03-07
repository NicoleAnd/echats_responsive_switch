package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import pojo.CustSim;
import service.CustSimService;
import util.ResponseWriter;

public class CustSimServlet extends HttpServlet {
	private static final long serialVersionUID = -7820821330469111158L;
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
        
        String prodId = req.getParameter("prodId");
        String custNo = req.getParameter("custNo");
        String type = req.getParameter("type");
        
        CustSimService custSimService = new CustSimService();
		List<CustSim> lst = custSimService.findCustSim(prodId, custNo, type);
		Gson gson= new Gson();
        resp.getWriter().print(gson.toJson(lst));
	}
}