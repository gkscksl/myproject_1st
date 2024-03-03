package com.care.coffee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.coffee.admin.menu.AdminMenuService;
import com.care.coffee.admin.menu.AdminProductCateDetailDTO;

@Controller
public class HomeController {
   @Autowired private AdminMenuService service;
   
   @RequestMapping("drop")
   public void drop() {}

   @RequestMapping("index")
   public void index() {}
   
   @RequestMapping("header")
   public String header() {
      return "default/header";
   }
   @RequestMapping("main")
   public String main() {
      return "default/main";
   }
   @RequestMapping("footer")
   public String footer() {
      return "default/footer";
   }
   
   @ResponseBody
   @RequestMapping("/getSubcategories")
   public List<AdminProductCateDetailDTO> getSubcategories(@RequestParam("num") int num) {
      List<AdminProductCateDetailDTO> dto = service.subcateList(num);
      return dto;
   }
   
   
}
