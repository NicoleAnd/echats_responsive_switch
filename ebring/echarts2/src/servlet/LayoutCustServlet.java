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

public class LayoutCustServlet extends HttpServlet {
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
        
        String selTyp = req.getParameter("selTyp");
        String value = req.getParameter("value");
        if(value != null){
        	value = String.valueOf(Integer.parseInt(value)+1);
        }
        if(selTyp != null){
        	if(selTyp.equals("OPEN_AREA") || selTyp.equals("CENSUS_REGISTER")){
        		switch(value){
        		case "1": value="6101";break;
        		case "2": value="6102";break;
        		case "3": value="6103";break;
        		case "4": value="6104";break;
        		case "5": value="6105";break;
        		case "6": value="6106";break;
        		case "7": value="6107";break;
        		case "8": value="6108";break;
        		case "9": value="6109";break;
        		case "10": value="6110";break;
        		}
        	}
        }
        CustService custService = new CustService();
		List<CustInfo> lst = custService.findCustInfo(selTyp, value);
		Gson gson= new Gson();
        resp.getWriter().print(gson.toJson(lst));
	}
}