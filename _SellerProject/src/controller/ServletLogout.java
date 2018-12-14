package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletLogout")
public class ServletLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletLogout() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().invalidate();
		toDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		toDo(request, response);
	}
	
	private void toDo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		Cookie loginCookie = null;
		Cookie [] cookies= request.getCookies();
		if(cookies !=null) {
			for(Cookie cookie :cookies) {
				if(cookie.getName().equals("username")) {
					loginCookie = cookie;
					break;
				}
			}
		}
		if(loginCookie!=null) {
			loginCookie.setMaxAge(0);
			response.addCookie(loginCookie);
		}
		response.sendRedirect("/login.jsp");
		
	}

}
