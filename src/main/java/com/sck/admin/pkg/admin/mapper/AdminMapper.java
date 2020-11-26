package com.sck.admin.pkg.admin.mapper;

import com.sck.admin.domain.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Mapper
@Repository
public interface AdminMapper {

    public ArrayList<Admin> findByAdminId(String adminId);
    public int adminInsert(Admin admin);
    public void authInsert(Admin admin);
}
