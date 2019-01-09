package com.model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
	HashMap<Long, Item> cartItems;

	public Cart() {
		cartItems = new HashMap<>();
	}

	public Cart(HashMap<Long, Item> cartItems) {
		super();
		this.cartItems = cartItems;
	}

	public HashMap<Long, Item> getCartItems() {
		return cartItems;
	}

	public void setCartItems(HashMap<Long, Item> cartItems) {
		this.cartItems = cartItems;
	}

	// add an item to Cart
	public void addCart(Long key, Item item) {
		boolean check = cartItems.containsKey(key);
		if (check) {
			int quantity_old = item.getQuantity();
			item.setQuantity(quantity_old + 1);
			cartItems.put(key, item);
		} else {
			cartItems.put(key, item);
		}
	}

	// Subject an item to Cart
	public void subToCart(Long key, Item item) {
		boolean check = cartItems.containsKey(key);
		if (check) {
			int quantity_old = item.getQuantity();
			if (quantity_old <= 1) {
				cartItems.remove(key);
			} else {
				item.setQuantity(quantity_old - 1);
				cartItems.put(key, item);
			}
		}
	}

	// Remove cart
	public void removeToCart(Long key) {
		boolean check = cartItems.containsKey(key);
		if (check) {
			cartItems.remove(key);
		}
	}

	// count item in cart
	public int countItem() {
		return cartItems.size();
	}

	public int countQuantity() {
		int count = 0;
		for (Map.Entry<Long, Item> list : cartItems.entrySet()) {
			count += list.getValue().getQuantity();
		}
		return count;
	}

	// total price of items
	public long totalCart() {
		long count = 0;
		// count = price * quantity
		for (Map.Entry<Long, Item> list : cartItems.entrySet()) {
			count += list.getValue().getProduct().getPrice() * (long) list.getValue().getQuantity();
		}
		return count;
	}

	/*
	 * public long totalPromotion() { long count = 0; for (Map.Entry<Long, Item>
	 * list : cartItems.entrySet()) { count +=
	 * (list.getValue().getProduct().getPrice() -
	 * (list.getValue().getProduct().getPrice()*list.getValue().getProduct().
	 * getPromotion()*0.01)) * list.getValue().getQuantity(); } return count; }
	 */
}
