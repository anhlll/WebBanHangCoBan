package com.example.Asm_Java5.Client;

import com.example.Asm_Java5.Entity.ChucVu;
import com.example.Asm_Java5.Entity.KhachHang;
import com.example.Asm_Java5.Entity.SanPham;
import com.example.Asm_Java5.Repository.KhachHangRepository;
import com.example.Asm_Java5.Service.ChucVuService;
import com.example.Asm_Java5.Service.KhachHangService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

@Controller
public class KhachHangController {
    @Autowired
    ChucVuService chucVuService;

    @Autowired
    KhachHangService khachHangService;

    @GetMapping("/sign-up-view")
    public String viewSignUp() {
        return "/sign-up/sign-up";
    }

    @GetMapping("/edit-khachhang/{id}")
    public String viewEditUser(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("khachHang", khachHangService.getById(id));
        return "/sign-up/edit-user";
    }

    @PostMapping("/sign-up-user")
    public String dangKiUser(Model model, HttpServletRequest request) {
        String ma = request.getParameter("ma");
        String ten = request.getParameter("ten");
        String gioiTinh = request.getParameter("gioiTinh");
        String ngaySinh = request.getParameter("ngaySinh");
        String diaChi = request.getParameter("diaChi");
        String sdt = request.getParameter("sdt");
        String email = request.getParameter("email");
        String matkhau = request.getParameter("matkhau");

        ChucVu chucVu = chucVuService.getById(1);//1:User, 2:Admin

        KhachHang khachHang = KhachHang.builder()
                .ma(ma)
                .ten(ten)
                .gioiTinh(gioiTinh)
                .ngaySinh(Date.valueOf(ngaySinh))
                .sdt(sdt)
                .diaChi(diaChi)
                .email(email)
                .matkhau(matkhau)
                .trangThai(0)
                .chucVu(chucVu)
                .build();

        khachHangService.add(khachHang);
        return "redirect:/loginView";
    }

    @PostMapping("/update-user/{id}")
    public String CapNhapUser(@ModelAttribute("khachhang") KhachHang khachhang, @RequestParam("ngaySinh") Date ngaySinh) throws IOException {
        ChucVu chucVu = chucVuService.getById(1);
        khachhang.setNgaySinh(ngaySinh);
        khachhang.setChucVu(chucVu);
        khachHangService.add(khachhang);
        return "redirect:/loginView";
    }

    @GetMapping("/hien-thi")
    public String getAll(@RequestParam(defaultValue = "0", name = "page") Integer number,
                         @RequestParam(defaultValue = "id", name = "sort") String sortField,
                         @RequestParam(defaultValue = "asc", name = "sortDir") String sortDirection,
                         Model model,@RequestParam(defaultValue = "1") int page) {

        // create a Sort object based on the sortField and sortDirection parameters
        Sort sort = sortDirection.equals("asc") ? Sort.by(sortField).ascending() : Sort.by(sortField).descending();

        // create a PageRequest object for pagination and sorting
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 2,sort);

        // get the paged list of products from the ProductService
        Page<KhachHang> listKhachHang = khachHangService.findAll(pageable);
        model.addAttribute("listKhachHang", listKhachHang);


        // add the sort field and direction to the Model for the view to use
        model.addAttribute("sortField", sortField);
        model.addAttribute("sortDir", sortDirection);

        return "khachHang/khachhang-hienthi";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id) {
        khachHangService.delete(id);
        return "redirect:/hien-thi";
    }

}
