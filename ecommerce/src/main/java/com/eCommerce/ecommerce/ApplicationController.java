package com.eCommerce.ecommerce;


import com.eCommerce.ecommerce.model.Product;
import com.eCommerce.ecommerce.model.ProductBrand;
import com.eCommerce.ecommerce.model.ProductType;
import com.eCommerce.ecommerce.model.User;
import com.eCommerce.ecommerce.service.ProductService;
import com.eCommerce.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

@Controller
public class ApplicationController {

    @Autowired
    UserService userService;

    @Autowired
    ProductService productService;

    @RequestMapping("/")
    public String home(ModelMap modelMap){
        Long min_rating = 3L;
        List<Product> top_products = productService.findByProductRatingGreaterThanEqual(min_rating);
        modelMap.addAttribute("top_products", top_products);
        return "home";
    }

    @GetMapping("/login")
    public String logIn()
    {
        return "login";
    }

    @GetMapping("/register")
    public String register()
    {
        return "login";
    }

    @PostMapping("/login")
    public String logIn(@RequestParam("email") String email, @RequestParam("pass") String password, ModelMap modelMap)
    {
        User check = userService.findByUserEmailAndPassword(email, password);

        if(check != null){
            modelMap.addAttribute("success","You have successfully logged in");
            return home(modelMap);
        }
        else{
            modelMap.addAttribute("success","Invalid credentials");
            return "login";
        }
    }

    @PostMapping("/register2")
    public String register(@RequestParam("name") String name, @RequestParam("pass") String password, @RequestParam("email") String email, @RequestParam("phone") String contactNumber, ModelMap modelMap)
    {
        User check1 = userService.findByUserEmail(email);
        User check2 = userService.findByUserContactNumber(contactNumber);

        if(check1 == null && check2 == null){
            User newUser = new User(name, contactNumber, email, password);
            userService.saveUser(newUser);
            return "login";
        }
        else if(check1 == null){
            modelMap.addAttribute("error", "ContactNumber is already taken!!");
            return "login";
        }
        else{
            modelMap.addAttribute("error", "Email is already taken!!");
            return "login";
        }
    }

    @GetMapping("/admin_dashboard")
    public String admin_dashboard(){
        return "admin_dashboard";
    }

    @PostMapping("/admin_edits")
    public @ResponseBody String admin_edits(HttpServletRequest request) throws Exception {
        String result = "success";
        String action = request.getParameter("action");

        if(action.equals("save_product_type")){
            String TypeName = request.getParameter("TypeName");
            ProductType newProductType = new ProductType(TypeName);
            productService.saveType(newProductType);
        }
        else if(action.equals("save_product_brand")){
            String BrandName = request.getParameter("BrandName");
            ProductBrand newProductBrand = new ProductBrand(BrandName);
            productService.saveBrand(newProductBrand);
        }
        else{
            String productName = request.getParameter("ProductName");
            String stock = request.getParameter("Stock");
            String rating = request.getParameter("Rating");
            String price = request.getParameter("Price");
            String discount = request.getParameter("Discount");
            String image = request.getParameter("Image");
            String description = request.getParameter("Description");
            String productType_string = request.getParameter("ProductType");
            String productBrand_string = request.getParameter("ProductBrand");
            ProductType productType = productService.getProductType(productType_string);
            ProductBrand productBrand = productService.getProductBrand(productBrand_string);

            Product newProduct = new Product(productName, Long.parseLong(stock), Long.parseLong(rating), Double.parseDouble(price), Double.parseDouble(discount), image, description, productType, productBrand);
            productService.saveProduct(newProduct);
        }

        return result;
    }

    @RequestMapping("/product_description/{id}")
    public String product_description(@PathVariable String id,ModelMap modelMap){
        Long productId = Long.valueOf(id);
        Optional<Product> optional_product = productService.findByProductId(productId);
        Product product = optional_product.get();
        modelMap.addAttribute("product", product);
        return "product_description";
    }

}
