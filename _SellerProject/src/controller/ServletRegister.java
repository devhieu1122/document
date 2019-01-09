package controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.model.User;
import com.tool.MD5_MaHoaPass;

@WebServlet("/ServletRegister")
public class ServletRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO = new UserDAO();

	public ServletRegister() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String rpass = request.getParameter("re-password");
		Date birth = null;

		try {
			birth = new Date((new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("birth"))).getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}

		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");

		System.out.println(username);

		String err = "";
		String url = "/register.jsp";
		if (name.equals("") || username.equals("") || password.equals("") || rpass.equals("") || email.equals("")
				|| phone.equals("")) {
			err += "Phải nhập đầy đủ thông tin!";
		} else {
			if (userDAO._checkUser(username) == true) {
				err += "Tài khoản đã tồn tại!";

			} else {
				Pattern pattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
						+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
				Matcher matcher = pattern.matcher(email);
				if (!matcher.matches()) {
					err += "Email sai định dạng!";
				} else {
					if (userDAO._checkEmail(email) == true) {
						err += "Email đã tồn tại!";
					}
				}
			}
		}
		if (err.length() > 0) {
			request.setAttribute("err", err);
		}
		try {
			if (err.length() == 0) {

				int i = 0;
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				/* session.setAttribute("cart", cart); */
				userDAO._addUser(new User(i++, username, name, MD5_MaHoaPass.maHoaDuLieu(password), birth, gender,
						email, phone, address, 2));
				userDAO._login(username, password);
				Cookie loginCookie = new Cookie("username", username);
				loginCookie.setMaxAge(30 * 60);
				response.addCookie(loginCookie);
				response.sendRedirect("index.jsp");

			} else {
				url = "/register.jsp";
				RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("/register.jsp");
		}

	}

}
