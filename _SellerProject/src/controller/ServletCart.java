package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProductDAO;
import com.model.Cart;
import com.model.Item;
import com.model.Product;

@WebServlet("/ServletCart")
public class ServletCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	final ProductDAO productDAO = new ProductDAO();

	public ServletCart() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		String command = request.getParameter("command");
		String productID = request.getParameter("id_product");
		Cart cart = (Cart) session.getAttribute("cart");
		try {
			long id_product = Long.parseLong(productID);
			Product product = productDAO.getProduct(id_product);
			switch (command) {
			case "plus":
				if (cart.getCartItems().containsKey(id_product)) {
					cart.addCart(id_product, new Item(product, cart.getCartItems().get(id_product).getQuantity()));
				} else {
					cart.addCart(id_product, new Item(product, 1));
				}
				break;
				

			case "remove":
				cart.removeToCart(id_product);
				break;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("./index.jsp");
		}
		session.setAttribute("cart", cart);
		response.sendRedirect("./index.jsp");
	}

}
