package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import pojo.CustMost;
import service.UserService;

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = -7820821330469179359L;
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
        String selectType = req.getParameter("selectType");
        String sortName = req.getParameter("sortName");
        String paraType = req.getParameter("paraType");
        UserService userService = new UserService();
		List<CustMost> lst = userService.loginValidStatement(prodId, selectType, sortName, paraType);
		Gson gson= new Gson();
        resp.getWriter().print(gson.toJson(lst));
	}
}