/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import context.*;
import entity.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAO {

    Connection conn = null;//mo ket noi 
    PreparedStatement ps = null;//nem cau lenh query
    ResultSet rs = null; //nhan ket qua tra ve

    public List<DanhMucSP> getAllDanhMucSP() {
        String sql = "SELECT * FROM dbo.DanhMucSP";
        List<DanhMucSP> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DanhMucSP(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDate(4), rs.getBoolean(5)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<Laptop> getBrandNewLaptop() {
        String sql = "SELECT TOP 3 * FROM dbo.Product WHERE DanhMucSP = 1";
        List<Laptop> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Laptop(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<ManHinh> getBrandNewManHinh() {
        String sql = "SELECT TOP 3 * FROM dbo.Product WHERE DanhMucSP = 3";
        List<ManHinh> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ManHinh(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<PC> getBrandNewPC() {
        String sql = "SELECT TOP 3 * FROM dbo.Product WHERE DanhMucSP = 2";
        List<PC> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PC(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<Laptop> getTop10Laptop() {
        String sql = "SELECT TOP 9 * FROM dbo.Product WHERE DanhMucSP = 1";
        List<Laptop> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Laptop(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<PC> getTop10PC() {
        String sql = "SELECT TOP 9 * FROM dbo.Product WHERE DanhMucSP = 2";
        List<PC> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PC(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<ManHinh> getTop10ManHinh() {
        String sql = "SELECT TOP 9 * FROM dbo.Product WHERE DanhMucSP = 3";
        List<ManHinh> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ManHinh(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<LinhKien> getTop10LinhKien() {
        String sql = "SELECT TOP 9 * FROM dbo.Product WHERE DanhMucSP = 4";
        List<LinhKien> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new LinhKien(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<GamingGear> getTop10GamingGears() {
        String sql = "SELECT TOP 9 * FROM dbo.Product WHERE DanhMucSP = 5";
        List<GamingGear> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new GamingGear(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public Account checkLogin(String user, String pass) {
        String sql = "SELECT * FROM dbo.Account WHERE Username =? AND Password =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5), rs.getBoolean(6));
            }
        } catch (Exception ex) {
        }
        return null;
    }

    public List<Product> searchProduct(String userInput) {
        String sql = "SELECT * FROM dbo.Product WHERE TenSP LIKE ?";
        List<Product> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + userInput + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<Product> searchLaptopByBrand(String userInput) {
        String sql = "SELECT * FROM dbo.Product WHERE TenSP LIKE ?";
        List<Product> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + userInput + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<Laptop> getAllLaptop() {
        String sql = "SELECT * FROM dbo.Product WHERE DanhMucSP = 1";
        List<Laptop> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Laptop(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public List<Laptop> pagingLaptop(int index) {
        List<Laptop> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 1 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Laptop(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getToltalLaptop() {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE DanhMucSP = 1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<PC> pagingPC(int index) {
        List<PC> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 2 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PC(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getToltalPC() {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE DanhMucSP = 2";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<ManHinh> pagingManHinh(int index) {
        List<ManHinh> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 3 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ManHinh(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getToltalManHinh() {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE DanhMucSP = 3";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<LinhKien> pagingLinhKien(int index) {
        List<LinhKien> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 4 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new LinhKien(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getToltalLinhKien() {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE DanhMucSP = 4";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<GamingGear> pagingGamingGear(int index) {
        List<GamingGear> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 5 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new GamingGear(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getToltalGamingGear() {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE DanhMucSP = 5";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void registerAccount(String name, String username, String password) {
        String query = "INSERT INTO [dbo].[Account] ([Name] ,[Username] ,[Password]) VALUES (? ,? ,? )";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Product viewProduct(String productId) {
        String query = "SELECT * FROM dbo.Product WHERE Id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getTop5HangMoiVe() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT TOP 3 * FROM dbo.Product ORDER BY Id DESC";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<BrandLaptop> getAllBrandLaptop() {
        List<BrandLaptop> list = new ArrayList<>();
        String query = "SELECT DISTINCT HangSanXuat FROM dbo.Product WHERE DanhMucSP = 1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BrandLaptop(rs.getString(1)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getLaptopByBrand(String brand) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE HangSanXuat = ? AND DanhMucSP = 1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, brand);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getToltalLaptopByBrand(String brand) {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE HangSanXuat = ? AND DanhMucSP = 1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, brand);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingLaptopByBrand(int index, String brand) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 1 AND HangSanXuat=? ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, brand);
            ps.setInt(2, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getToltalLaptopByPrice(String price) {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE DanhMucSP = 1";
        if (price.equalsIgnoreCase("phankhuc1")) {
            query += " AND GiaKhuyenMai <= 1000";
        } else if (price.equalsIgnoreCase("phankhuc2")) {
            query += " AND GiaKhuyenMai >= 1000 AND GiaKhuyenMai <= 1500";
        } else if (price.equalsIgnoreCase("phankhuc3")) {
            query += " AND GiaKhuyenMai >= 1500 AND GiaKhuyenMai <= 2000";
        } else if (price.equalsIgnoreCase("phankhuc4")) {
            query += " AND GiaKhuyenMai >= 2000 AND GiaKhuyenMai <= 2500";
        } else if (price.equalsIgnoreCase("phankhuc5")) {
            query += " AND GiaKhuyenMai >= 2500 AND GiaKhuyenMai <= 3000";
        } else {
            query += " AND GiaKhuyenMai >= 3000";
        }
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingLaptopByPrice(int index, String price) {
        List<Product> list = new ArrayList<>();
        String query = "";
        if (price.equalsIgnoreCase("phankhuc1")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 1 AND GiaKhuyenMai <= 1000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc2")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 1 AND GiaKhuyenMai >= 1000 AND GiaKhuyenMai <= 1500 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc3")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 1 AND GiaKhuyenMai >= 1500 AND GiaKhuyenMai <= 2000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc4")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 1 AND GiaKhuyenMai >= 2000 AND GiaKhuyenMai <= 2500 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc5")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 1 AND GiaKhuyenMai >= 2500 AND GiaKhuyenMai <= 3000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 1 AND GiaKhuyenMai >= 3000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        }
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getAllProduct(int index) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product ORDER BY Id OFFSET ? ROWS FETCH NEXT 10 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 10);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getTotalProduct() {
        String query = "SELECT COUNT(*) FROM dbo.Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void deleteProduct(int id) {
        String query = "DELETE FROM dbo.Product WHERE Id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addProduct(String name, double price, double priceKM, String cauHinh, String moTa, int soLuong, int danhMucSp, String hangSX, String image) {
        String query = "INSERT INTO [dbo].[Product] ([TenSP] ,[Gia] ,[GiaKhuyenMai] ,[CauHinh] ,[MoTa] ,[SoLuong] ,[DanhMucSP] ,[HangSanXuat] ,[HinhAnh]) VALUES "
                + "(? ,? ,? ,?,? ,? ,? ,? ,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setDouble(2, price);
            ps.setDouble(3, priceKM);
            ps.setString(4, cauHinh);
            ps.setString(5, moTa);
            ps.setInt(6, soLuong);
            ps.setInt(7, danhMucSp);
            ps.setString(8, hangSX);
            ps.setString(9, image);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateProduct(int id, String name, double price, double priceKM, String cauHinh, String moTa, int soLuong, int danhMucSp, String hangSX, String image) {
        String query = "UPDATE [dbo].[Product]\n"
                + "   SET [TenSP] = ?\n"
                + "      ,[Gia] = ?\n"
                + "      ,[GiaKhuyenMai] = ?\n"
                + "      ,[CauHinh] = ?\n"
                + "      ,[MoTa] = ?\n"
                + "      ,[SoLuong] = ?\n"
                + "      ,[DanhMucSP] = ?\n"
                + "      ,[HangSanXuat] = ?\n"
                + "      ,[HinhAnh] = ?\n"
                + " WHERE Id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setDouble(2, price);
            ps.setDouble(3, priceKM);
            ps.setString(4, cauHinh);
            ps.setString(5, moTa);
            ps.setInt(6, soLuong);
            ps.setInt(7, danhMucSp);
            ps.setString(8, hangSX);
            ps.setString(9, image);
            ps.setInt(10, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.Account";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5), rs.getBoolean(6)));
            }
        } catch (Exception ex) {
        }
        return list;
    }

    public int getTotalAccount() {
        String query = "SELECT COUNT(*) FROM dbo.Account";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void setRoleSeller(boolean isSeller, int id) {
        String query = "UPDATE [dbo].[Account] SET [IsSeller] = ? WHERE ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setBoolean(1, isSeller);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> pagingPcByPrice(int index, String price) {
        List<Product> list = new ArrayList<>();
        String query = "";
        if (price.equalsIgnoreCase("phankhuc1")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 2 AND GiaKhuyenMai <= 1000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc2")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 2 AND GiaKhuyenMai >= 1000 AND GiaKhuyenMai <= 1500 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc3")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 2 AND GiaKhuyenMai >= 1500 AND GiaKhuyenMai <= 2000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc4")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 2 AND GiaKhuyenMai >= 2000 AND GiaKhuyenMai <= 2500 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc5")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 2 AND GiaKhuyenMai >= 2500 AND GiaKhuyenMai <= 3000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 2 AND GiaKhuyenMai >= 3000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        }
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getTotalPcByPrice(String price) {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE DanhMucSP = 2";
        if (price.equalsIgnoreCase("phankhuc1")) {
            query += " AND GiaKhuyenMai <= 1000";
        } else if (price.equalsIgnoreCase("phankhuc2")) {
            query += " AND GiaKhuyenMai >= 1000 AND GiaKhuyenMai <= 1500";
        } else if (price.equalsIgnoreCase("phankhuc3")) {
            query += " AND GiaKhuyenMai >= 1500 AND GiaKhuyenMai <= 2000";
        } else if (price.equalsIgnoreCase("phankhuc4")) {
            query += " AND GiaKhuyenMai >= 2000 AND GiaKhuyenMai <= 2500";
        } else if (price.equalsIgnoreCase("phankhuc5")) {
            query += " AND GiaKhuyenMai >= 2500 AND GiaKhuyenMai <= 3000";
        } else {
            query += " AND GiaKhuyenMai >= 3000";
        }
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<BrandManHinh> getAllBrandManHinh() {
        String sql = "SELECT DISTINCT HangSanXuat FROM dbo.Product WHERE DanhMucSP = 3";
        List<BrandManHinh> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BrandManHinh(rs.getString(1)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<TypeLinhKien> getAllTypeLinhKien() {
        String sql = "SELECT DISTINCT HangSanXuat FROM dbo.Product WHERE DanhMucSP=4";
        List<TypeLinhKien> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new TypeLinhKien(rs.getString(1)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getToltalManHinhByBrand(String brand) {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE HangSanXuat = ? AND DanhMucSP = 3";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, brand);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingManHinhByBrand(int index, String brand) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 3 AND HangSanXuat= ? ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, brand);
            ps.setInt(2, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getToltalManHinhByPrice(String price) {
        String query = "SELECT COUNT(*) FROM dbo.Product WHERE DanhMucSP = 3";
        if (price.equalsIgnoreCase("phankhuc1")) {
            query += " AND GiaKhuyenMai <= 1000";
        } else if (price.equalsIgnoreCase("phankhuc2")) {
            query += " AND GiaKhuyenMai >= 1000 AND GiaKhuyenMai <= 1500";
        } else if (price.equalsIgnoreCase("phankhuc3")) {
            query += " AND GiaKhuyenMai >= 1500 AND GiaKhuyenMai <= 2000";
        } else if (price.equalsIgnoreCase("phankhuc4")) {
            query += " AND GiaKhuyenMai >= 2000 AND GiaKhuyenMai <= 2500";
        } else if (price.equalsIgnoreCase("phankhuc5")) {
            query += " AND GiaKhuyenMai >= 2500 AND GiaKhuyenMai <= 3000";
        } else {
            query += " AND GiaKhuyenMai >= 3000";
        }
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingManHinhByPrice(int index, String price) {
        List<Product> list = new ArrayList<>();
        String query = "";
        if (price.equalsIgnoreCase("phankhuc1")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 3 AND GiaKhuyenMai <= 1000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc2")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 3 AND GiaKhuyenMai >= 1000 AND GiaKhuyenMai <= 1500 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc3")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 3 AND GiaKhuyenMai >= 1500 AND GiaKhuyenMai <= 2000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc4")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 3 AND GiaKhuyenMai >= 2000 AND GiaKhuyenMai <= 2500 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else if (price.equalsIgnoreCase("phankhuc5")) {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 3 AND GiaKhuyenMai >= 2500 AND GiaKhuyenMai <= 3000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        } else {
            query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 3 AND GiaKhuyenMai >= 3000 ORDER BY Id OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        }
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getLinhKienByBrand(String brand) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 4 AND HangSanXuat = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, brand);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<BrandGamingGear> getAllBrandGamingGear() {
        List<BrandGamingGear> list = new ArrayList<>();
        String query = "SELECT DISTINCT HangSanXuat FROM dbo.Product WHERE DanhMucSP = 5";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BrandGamingGear(rs.getString(1)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getGamingGearByBrand(String brand) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Product WHERE DanhMucSP = 5 AND HangSanXuat = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, brand);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public boolean checkExistId(int id, int aid) {
        String query = "SELECT * FROM dbo.Cart WHERE Product_ID = ? AND Account_ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setInt(2, aid);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public void addToCart(int productId, int quantity, String pname, double price, int accountID) {
        String query = "";
        if (!checkExistId(productId, accountID)) {
            query = "INSERT INTO [dbo].[Cart] ([Product_ID] ,[Product_Quantity] ,[Product_Name] ,[Product_Price] ,[Account_ID],[Total_Price]) VALUES (? , ? ,? ,? , ?, ?)";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                ps.setInt(1, productId);
                ps.setInt(2, 1);
                ps.setString(3, pname);
                ps.setDouble(4, price);
                ps.setInt(5, accountID);
                ps.setDouble(6, price);
                ps.executeUpdate();
            } catch (Exception e) {
            }
        } else {
            query = "UPDATE [dbo].[Cart] SET Product_Quantity = Product_Quantity + 1 WHERE Product_ID = " + productId + " AND Account_ID = " + accountID;
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                ps.executeUpdate();
            } catch (Exception e) {
            }
        }
    }

    public void calTotalMoneyPerProduct(int productId, int accountId) {
        String query = "UPDATE [dbo].[Cart] SET [Total_Price] = ( ( SELECT Product_Quantity FROM dbo.Cart WHERE Product_ID = ? AND Account_ID = ? ) * Product_Price ) WHERE Product_ID = ? AND Account_ID = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            ps.setInt(2, accountId);
            ps.setInt(3, productId);
            ps.setInt(4, accountId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void downQuantityProduct(int productId, int accountID) {
        String query = "";
        query = "UPDATE [dbo].[Cart] SET Product_Quantity = Product_Quantity - 1 WHERE Product_ID = " + productId + " AND Account_ID = " + accountID;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteFromCart(int productId, int aid) {
        String query = "";
        query = "DELETE FROM dbo.Cart WHERE Product_ID = " + productId + " AND Account_ID = " + aid;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Cart> getAllCart(int account_id) {
        DAO dao = new DAO();
        List<Cart> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.Cart WHERE Account_ID = " + account_id;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Cart(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getDouble(5), rs.getInt(6), dao.viewProduct(rs.getInt(2) + ""), rs.getDouble(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void muaHang(int product_id, int soluong) {
        String query = "UPDATE dbo.Product SET SoLuong = SoLuong - ? WHERE Id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, soluong);
            ps.setInt(2, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteCart(int aid) {
        String query = "DELETE FROM [dbo].[Cart] WHERE Account_ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addHistoryBuy(int productid, int productquantity, String productName, double productPrice, int accountId) {
        String query = "INSERT INTO [dbo].[History_Buy] ([Product_ID] ,[Product_Quantity] ,[Product_Name] ,[Product_Price] ,[Account_ID], [Buy_Date]) VALUES (? ,? ,? ,? ,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productid);
            ps.setInt(2, productquantity);
            ps.setString(3, productName);
            ps.setDouble(4, productPrice);
            ps.setInt(5, accountId);
            ps.setDate(6, Date.valueOf(LocalDate.now()));
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public double getTotalMoney(int aid) {
        String query = "SELECT SUM(Total_Price) FROM dbo.Cart WHERE Account_ID = " + aid;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getDouble(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<BuyHistory> getAllBuyHistory(int account_id) {
        DAO dao = new DAO();
        List<BuyHistory> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.History_Buy WHERE Account_ID = ? ORDER BY id DESC";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, account_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BuyHistory(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getDouble(5), rs.getInt(6), dao.viewProduct(rs.getInt(2) + ""), rs.getDate(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int countAllBuyHistory(int account_id) {
        String query = "SELECT COUNT(*) FROM dbo.History_Buy WHERE Account_ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, account_id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<BuyHistory> list = dao.getAllBuyHistory(1);
        for (BuyHistory o : list) {
            System.out.println(o.getD());
        }
    }
}
