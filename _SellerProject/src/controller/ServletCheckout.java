package controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BillDAO;
import com.DAO.DetailBillDAO;
import com.model.Bill;
import com.model.BillDetail;
import com.model.Cart;
import com.model.Item;
import com.model.User;

/**
 * Servlet implementation class ServletCheckout
 */
@WebServlet("/ServletCheckout")
public class ServletCheckout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final BillDAO billDAO = new BillDAO();
	private final DetailBillDAO billDetailDAO = new DetailBillDAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletCheckout() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String payment = request.getParameter("payment");
		String address = request.getParameter("address");
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		User users = (User) session.getAttribute("user");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		try {
			long id = new Date().getTime();
			Bill bill = new Bill();
			bill.setId_bill(id);
			bill.setAddress(address);
			bill.setPayment(payment);
			bill.setId_user(users.get_userId());
			bill.setDate(new Timestamp(new Date().getTime()));
			bill.setTotal(cart.totalCart());
			bill.setName(name);
			bill.setPhone(phone);
			billDAO.insertBill(bill);
			for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
				billDetailDAO.insertBillDetail(
						new BillDetail(new Date().getTime(), id, list.getValue().getProduct().getId_product(),
								list.getValue().getProduct().getPrice(), list.getValue().getQuantity()));

			}
			cart = new Cart();
			session.setAttribute("cart", cart);
		} catch (Exception e) {

		}
		response.sendRedirect("/checkoutSuccess.jsp");

	}

}
