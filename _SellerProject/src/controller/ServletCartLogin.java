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
import com.tool.MD5_MaHoaPass;

/**
 * Servlet implementation class ServletCartLogin
 */
@WebServlet("/ServletCartLogin")
public class ServletCartLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDAO userDAO = new UserDAO();
    public ServletCartLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		toDo(request, response);
	}
	// xy ly dang nhap
	private void toDo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		// lay thong tin dang nhap
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		String err = "";

		if (userDAO._login(username, MD5_MaHoaPass.maHoaDuLieu(password)) == false) {
			err += "Tên đăng nhập hoặc mật khẩu không chính xác!";
		}

		if (err.length() > 0) {
			request.setAttribute("username", username);
			request.setAttribute("err", err);
		}

		String url = "/checkout-signin.jsp";
		try {
			if (err.length() == 0) {
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				// session.setAttribute("cart", cart);
				userDAO._login(username, MD5_MaHoaPass.maHoaDuLieu(password));
				Cookie loginCookie = new Cookie("username", username);
				// time reset cookie
				loginCookie.setMaxAge(30 * 60);
				response.addCookie(loginCookie);
				response.sendRedirect("checkout-address.jsp");
				url = "/checkout-address.jsp";
				System.out.println("Login success");
			} else {
				url = "/checkout-signin.jsp";
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
				System.out.println("Login fails");

			}

		} catch (ServletException e) {
			e.printStackTrace();
			response.sendRedirect("/checkout-signin.jsp");
		}
	}

}
