package com.demo.control;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.service.EnterService;
import com.demo.service.EnterServiceImpl;
import com.demo.service.IUserService;
import com.demo.service.UserServiceImpl;
import com.demo.vo.Enter;
import com.demo.vo.User;

/**
 * Servlet implementation class UserControl
 */
@WebServlet(name="/EnterControl",urlPatterns={"/enter"})
public class EnterControl extends HttpServlet{
	private static final long serialVersionUID = 1L;
    private EnterService service = new EnterServiceImpl();
    private RequestDispatcher dispatcher = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnterControl() {
        super();
        // TODO Auto-generated constructor stub
    }
   @Override
   public void init(ServletConfig config) throws ServletException {
	   // TODO Auto-generated method stub
	   super.init(config);
   }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action1=request.getParameter("action1");
		EnterService service=new EnterServiceImpl();
		
			switch(action1){
			case "Submit":
				String Enter = request.getParameter("Enter");
				String type = request.getParameter("type");
				String scope = request.getParameter("scope");
				String start_time = request.getParameter("start_time");
				boolean flag=service.Submit(Enter, type, scope, start_time);
				if(flag) {
					System.out.println("ok");
					dispatcher = request.getRequestDispatcher("join.jsp");
				}else{
					dispatcher = request.getRequestDispatcher("index.jsp");
				}
				break;
			default:
				break;
			}
		
		
		dispatcher.forward(request, response);
	}
	

}
