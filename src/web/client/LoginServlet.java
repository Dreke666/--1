package web.client;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Category;
import domain.Page;
import domain.User;
import service.impl.BusinessServiceImpl;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		BusinessServiceImpl service = new BusinessServiceImpl();
		User user = service.userLogin(username, password);
		if(user == null){
			request.setAttribute("message", "用户名和密码不对");
			request.getRequestDispatcher("/books.jsp").forward(request, response);
			return;
		}
		request.getSession().setAttribute("user", user);
		List<Category> categories = service.getAllCategory();
		request.setAttribute("categories", categories);
		String pagenum = request.getParameter("pagenum");
		Page page = service.getBookPageData(pagenum);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/books.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
