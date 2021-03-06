package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.model.Cart;
import com.tool.MD5_MaHoaPass;

@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDAO userDAO = new UserDAO();
//	 private List<Cart> cart = new ArrayList<Cart>();

	public ServletLogin() {
		super();
	}

	// xu ly dang xuat
	// xoa session bang invalidate
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//// toDo(request, response);
		/*
		 * String command = request.getParameter("command"); String url =
		 * request.getScheme() + "://" + request.getServerName() + ":" +
		 * request.getServerPort() + request.getContextPath(); if
		 * (command.equals("dangxuat")) { HttpSession session = request.getSession();
		 * session.invalidate(); response.sendRedirect("index.jsp"); }
		 */

		/*
		 * HttpSession session = request.getSession();
		 * session.removeAttribute("username"); response.sendRedirect("login.jsp");
		 */

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		toDo(request, response);
	}

	// xy ly dang nhap
	private void toDo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		// lay thong tin dang nhap
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();

		String err = "";

		if (userDAO._login(username, MD5_MaHoaPass.maHoaDuLieu(password)) == false) {
			err += "Tên đăng nhập hoặc mật khẩu không chính xác!";
		}

		if (err.length() > 0) {
			request.setAttribute("username", username);
			request.setAttribute("err", err);
		}

		String url = "/login.jsp";
		try {
			if (err.length() == 0) {
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
//				 session.setAttribute("cart", cart);
				if (userDAO._login(username, MD5_MaHoaPass.maHoaDuLieu(password)) == true
						&& userDAO.getUser(username).get_role() == 2) {
					Cookie loginCookie = new Cookie("username", username);
					// time reset cookie
					loginCookie.setMaxAge(1 * 60);
					response.addCookie(loginCookie);
					response.sendRedirect("index.jsp");
					/*url = "/index.jsp";*/
					System.out.println("Login success");
				} else {
					Cookie loginCookie = new Cookie("username", username);
					// time reset cookie
					loginCookie.setMaxAge(30 * 60);
					response.addCookie(loginCookie);
					response.sendRedirect("./admin/header.jsp");
					/*url = "/index.jsp";*/
					System.out.println("Login success");
				}
			} else {
				url = "/login.jsp";
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
				System.out.println("Login fails");

			}

		} catch (ServletException e) {
			e.printStackTrace();
			response.sendRedirect("/login.jsp");
		}
	}
}
