package com.example.Asm_Java5.Client;

import com.example.Asm_Java5.Entity.*;
import com.example.Asm_Java5.Repository.GioHangChiTietRepository;
import com.example.Asm_Java5.Repository.GioHangRepository;
import com.example.Asm_Java5.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.*;

@Controller
@RequestMapping("/hoa-don")
public class HoaDonController {

    @Autowired
    GioHangService gioHangService;

    @Autowired
    GioHangRepository gioHangRepository;

    @Autowired
    GioHangChiTietService gioHangChiTietService;

    @Autowired
    HoaDonService hoaDonService;

    @Autowired
    KhachHangService userService;

    @Autowired
    SanPhamService sanPhamService;

    @Autowired
    GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    HoaDonChiTietService hoaDonChiTietService;

    @GetMapping("/{id}")
    public String hoaDonView(@PathVariable(name = "id") Integer id, Model model) {
        Map<Integer, Integer> DSSP = new HashMap<>();
        List<SanPham> listTN = new ArrayList<>();
        KhachHang user = userService.getById(id);
        model.addAttribute("US", user);
        List<HoaDon> listhd = hoaDonService.getAllBykhachHang(user);

        for (HoaDon hd : listhd) {
            List<HoaDonChiTiet> listHDCT = hoaDonChiTietService.getByHd(hd);
            for (HoaDonChiTiet hdct : listHDCT) {
                listTN.add(hdct.getSanPham());
                DSSP.put(hdct.getSanPham().getIdSP(), hdct.getSoLuong());
            }
            BigDecimal tongTien = hoaDonService.tongTien(hd);
            model.addAttribute("listHD", listhd);
            model.addAttribute("tongTien", tongTien);
            model.addAttribute("hoaDon", listTN);
            model.addAttribute("DSSP", DSSP);
        }
        return "/login/Client/hoa-don";
    }

    @GetMapping("/detailCT/{id}")
    public String hoaDonchitietView(@PathVariable(name = "id") Integer id, Model model) {
        Map<Integer, Integer> DSSP = new HashMap<>();
        List<SanPham> listTN = new ArrayList<>();
        KhachHang user = userService.getById(id);
        model.addAttribute("US", user);
        List<HoaDon> listHD = hoaDonService.getAllBykhachHang(user);
        for (HoaDon hd : listHD) {
            if (hd.getTinhTrang().equals("Chua thanh toan")) {
                List<HoaDonChiTiet> listHDCT = hoaDonChiTietService.getByHd(hd);
                for (HoaDonChiTiet hdct : listHDCT) {
                    listTN.add(hdct.getSanPham());
                    DSSP.put(hdct.getSanPham().getIdSP(), hdct.getSoLuong());
                }
                BigDecimal tongTien = hoaDonService.tongTien(hd);
                model.addAttribute("listHD", listHD);
                model.addAttribute("tongTien", tongTien);
                model.addAttribute("hoaDon", listTN);
                model.addAttribute("DSSP", DSSP);
            }
        }
        return "/login/Client/hoa-don";
    }

    @PostMapping("/addHD/{id}")
    public String addHD(@PathVariable(name = "id") Integer id, Model model) {
        Map<Integer, Integer> DSSP = new HashMap<>();
        List<SanPham> listTN = new ArrayList<>();
        KhachHang user = userService.getById(id);
        model.addAttribute("US", user);
        GioHang gh = gioHangService.getByUser(user);
        List<GioHangChiTiet> listGHCT = gioHangChiTietService.getByGh(gh);
        List<HoaDon> listHD = hoaDonService.getAllBykhachHang(user);
        HoaDon hd = new HoaDon();
        hd.setKhachHang(user);
        Date date = new Date();
        hd.setNgayTao(date);
        hd.setDiaChi(user.getDiaChi());
        hd.setNguoiNhan(user.getTen());
        hd.setTinhTrang("Chua Thanh Toan");
        hoaDonService.addHD(hd);

        for (GioHangChiTiet ghct : listGHCT) {
            HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
            hoaDonChiTiet.setSanPham(ghct.getSanPham());
            hoaDonChiTiet.setHd(hd);
            hoaDonChiTiet.setDonGiaHD(ghct.getDonGia());
            hoaDonChiTiet.setSoLuong(ghct.getSoLuong());

            hoaDonChiTietService.saveHDCT(hoaDonChiTiet);
        }

        List<HoaDonChiTiet> listHDCT = hoaDonChiTietService.getByHd(hd);
        for (HoaDonChiTiet hdct : listHDCT) {
            listTN.add(hdct.getSanPham());
            DSSP.put(hdct.getSanPham().getIdSP(), hdct.getSoLuong());
        }


        BigDecimal tongTien = gioHangService.tongTien(gh);
        model.addAttribute("listHD", listHD);
        model.addAttribute("tongTien", tongTien);
        model.addAttribute("hoaDon", listTN);
        model.addAttribute("DSSP", DSSP);
        return "redirect:/hoa-don/{id}";
    }

    @PostMapping("/update-hoa-don/{id}")
    public String updateHD(Model model, @PathVariable(name = "id") Integer id, @Validated HoaDon hd,
                           @Validated SanPham sanPham,
                           BindingResult result) {
//        KhachHang khachHang = new KhachHang() ;
        KhachHang user = userService.getById(id);
        model.addAttribute("US", user);
        List<HoaDon> listhd = hoaDonService.getAllBykhachHang(user);
        for (HoaDon hd1 : listhd) {
            if (result.hasErrors()) {
                hd.setId(hd1.getId());
                return "redirect:/hoa-don/{id}";
            }
            //update hoa don
            hd.setTinhTrang("Da Thanh Toan");
            hd.setKhachHang(user);
            hd.setId(hd1.getId());
            hd.setNgayTao(hd1.getNgayTao());
            hd.setNguoiNhan(hd1.getNguoiNhan());
            hd.setDiaChi(hd1.getDiaChi());
            hoaDonService.updateHd(hd);
        }
        //xoa gh
        GioHang gh = gioHangService.getByUser(user);
        List<GioHangChiTiet> listGHCT = gioHangChiTietService.getByGh(gh);
        for (GioHangChiTiet ghct : listGHCT) {
            gioHangChiTietService.deleteGHCT(ghct);
        }
        gioHangService.delete(gh);
//        xoa so luong sp
        List<HoaDonChiTiet> listHDCT = hoaDonChiTietService.getByHd(hd);
        for (HoaDonChiTiet hdct : listHDCT) {
            SanPham tn = hdct.getSanPham();
            if (result.hasErrors()) {
                sanPham.setIdSP(tn.getIdSP());
                return "redirect:/hoa-don/{id}";
            }
            sanPham.setSoluongton(tn.getSoluongton() - hdct.getSoLuong());
            sanPham.setIdSP(tn.getIdSP());
            sanPham.setGiaban(tn.getGiaban());
            sanPham.setImage(tn.getImage());
            sanPham.setGianhap(tn.getGianhap());
            sanPham.setMota(tn.getMota());
            sanPham.setTen(tn.getTen());

            sanPhamService.add(sanPham);
        }
        return "redirect:/home_client/{id}";
    }
    @GetMapping("/hien-thi")
    public String ClientPage(@RequestParam(defaultValue = "id", name = "sort") String sortField,
                             @RequestParam(defaultValue = "asc", name = "sortDir") String sortDirection,
                             Model model, @RequestParam(defaultValue = "1") int page) {

        // create a Sort object based on the sortField and sortDirection parameters
        Sort sort = sortDirection.equals("asc") ? Sort.by(sortField).ascending() : Sort.by(sortField).descending();

        // create a PageRequest object for pagination and sorting
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 2, sort);

        // get the paged list of products from the ProductService
        Page<HoaDon> listHoaDon = hoaDonService.findAll(pageable);
        model.addAttribute("listHoaDon", listHoaDon);


        // add the sort field and direction to the Model for the view to use
        model.addAttribute("sortField", sortField);
        model.addAttribute("sortDir", sortDirection);
        return "hoaDon/hoadon-hienthi";
    }
}
