package com.example.Asm_Java5.Service;

import com.example.Asm_Java5.Entity.HoaDon;
import com.example.Asm_Java5.Entity.KhachHang;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.List;

public interface HoaDonService {

    Page<HoaDon> findAll(Pageable pageable);

    HoaDon addHD(HoaDon hd);

    void delete(Integer id);

    HoaDon getByKhachHang(KhachHang khachHang);

    BigDecimal tongTien(HoaDon hd);

    HoaDon updateHd(HoaDon hd);

    List<HoaDon> getAllBykhachHang(KhachHang khachHang);
}
