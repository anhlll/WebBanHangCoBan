package com.example.Asm_Java5.Service;

import com.example.Asm_Java5.Entity.ChucVu;
import org.springframework.stereotype.Service;

@Service
public interface ChucVuService {
        ChucVu getById(Integer id);
}
