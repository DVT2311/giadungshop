package com.tamkeyboard.giadungshop.domain;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<CartItem> items = new ArrayList<>();

    public void addItem(CartItem item) {
        // Nếu đã có sản phẩm thì chỉ cập nhật số lượng
        for (CartItem i : items) {
            if (i.getId() == item.getId()) {
                i.setQuantity(i.getQuantity() + item.getQuantity());
                return;
            }
        }
        items.add(item);
    }
    
    public void removeItem(int id) {
        items.removeIf(i -> i.getId() == id);
    }

    public List<CartItem> getItems() {
        return items;
    }
}

