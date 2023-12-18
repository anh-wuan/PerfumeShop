/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext {

    private CategoyDAO cd = new CategoyDAO();

    public List<Product> getProductsByCategoryid(int cid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products";
        if (cid != 0) {
            sql += " where CategoryID = ?";
        } else {
            sql += " where 0 = ?";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Product p = new Product(rs.getInt("ProductID"), rs.getString("ProductName"), rs.getString("image1"), rs.getString("image2"),
                        rs.getString("describe"), rs.getDate("releaseDate"), rs.getInt("QuantityPerUnit"), rs.getDouble("UnitPrice"), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductsByInYear(int year) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products WHERE releaseDate like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + year + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                System.out.println(c.toString());
                Product p = new Product(rs.getInt("ProductID"), rs.getString("ProductName"), rs.getString("image1"), rs.getString("image2"),
                        rs.getString("describe"), rs.getDate("releaseDate"), rs.getInt("QuantityPerUnit"), rs.getDouble("UnitPrice"), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        List<Product> list = p.getProductsByInYear(2013);
        System.out.println(list.get(0).getName());
    }
}
