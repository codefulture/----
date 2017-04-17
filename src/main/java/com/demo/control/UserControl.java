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
import javax.servlet.http.HttpSession;

import com.demo.service.IUserService;
import com.demo.service.UserServiceImpl;
import com.demo.vo.User;

/**
 * Servlet implementation class UserControl
 */
@WebServlet(name="/UserControl",urlPatterns={"/user"})
public class UserControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IUserService service = new UserServiceImpl();
    private RequestDispatcher dispatcher = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserControl() {
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
		String action = request.getParameter("action");
		switch (action) {
		case "login": {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			User user = service.login(username, password);
			if(user != null) {
				request.getSession().setAttribute("user", user);
				List<User> userList = service.queryAll(); 
				request.setAttribute("user_list", userList);
				request.getSession().setAttribute("error", "登录成功");
				request.getSession().setAttribute("user_session", user);
				dispatcher = request.getRequestDispatcher("index.jsp");
			}else{
				dispatcher = request.getRequestDispatcher("index.jsp");
			}
			break;
		}
		case "register": {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String telephone = request.getParameter("telephone");
			
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setTelephone(telephone);
			
			if(service.register(user)) {
				request.getSession().setAttribute("error", "注册成功，请登录");
			}else {
				request.getSession().setAttribute("error", "注册失败，请重新注册");
			}
			dispatcher = request.getRequestDispatcher("index.jsp");
			break;
		}
		case "edit": {
			/*
			 * 编辑用户信息
			 */
			User u = (User) request.getSession().getAttribute("user");
			
			break;
		}
		case "delete": {
			User u = (User) request.getSession().getAttribute("user");
			if(service.delete(u)) {
				List<User> userList = service.queryAll(); 
				request.setAttribute("user_list", userList);
				dispatcher = request.getRequestDispatcher("index.jsp");
			}else{
				dispatcher = request.getRequestDispatcher("show.jsp");
			}
			break;
		}
		default:
			break;
		}
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
