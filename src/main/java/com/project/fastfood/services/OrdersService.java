package com.project.fastfood.services;

import com.project.fastfood.entities.Cart;
import com.project.fastfood.entities.OrderDetailEntity;
import com.project.fastfood.entities.OrdersEntity;
import com.project.fastfood.entities.ProductsEntity;
import com.project.fastfood.repositories.OrdersRepository;
import com.project.fastfood.repositories.ShopRepository;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

@Service
public class OrdersService {
    @Autowired
    OrdersRepository ordersRepository;
    @Autowired
    ShopService shopService;
    @Autowired
    OrderDetailService orderDetailService;

    public double getShippingTax(String destinations) {
        Double result = 0.0;
        try {
            String orgins = shopService.findShop().getAddress();
            String url = "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=" + orgins + "&destinations=" + destinations + "&key=AIzaSyCGU0PK5ks0K4jqqAZ6l2A6FKWUknklPkM";
            url = url.replaceAll(" ", "+");
            System.out.println(url);
            URL obj = new URL(url);
            HttpURLConnection con = (HttpURLConnection) obj.openConnection();
            con.setRequestMethod("GET");
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();
            JSONObject json = new JSONObject(response.toString());
            JSONObject rowFirst = json.getJSONArray("rows").getJSONObject(0);
            JSONObject elementFirst = rowFirst.getJSONArray("elements").getJSONObject(0);
            result = elementFirst.getJSONObject("distance").getDouble("value") / 1000 * shopService.findShop().getAverageShopCost();
        } catch (Exception e) {
            return result;
        }
        return result;
    }

    public void saveOrder(OrdersEntity ordersEntity, Cart cart) {
        List<OrderDetailEntity> list = new ArrayList<>();
        int itemSize = cart.getCartItems().size();
        for(int i = 0; i < itemSize; i++) {
            double price = cart.getCartItems().get(i).getProduct().getPrice() * cart.getCartItems().get(i).getQuantity();
            int quantity = cart.getCartItems().get(i).getQuantity();
            ProductsEntity p = cart.getCartItems().get(i).getProduct();
            OrderDetailEntity orderDetailEntity = new OrderDetailEntity(price, quantity, ordersEntity, p);
            list.add(orderDetailEntity);
        }
        ordersEntity.setOrderDetails(list);
        ordersRepository.save(ordersEntity);
        orderDetailService.saveOrderDetail(list);

    }
}
