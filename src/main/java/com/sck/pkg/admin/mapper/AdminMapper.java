package com.sck.pkg.admin.mapper;

import com.sck.domain.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Mapper
@Repository
public interface AdminMapper {

    /* 아이디 검색 */
    public ArrayList<Admin> findByAdminId(String adminId);
    /* 회원가입 */
    public int adminInsert(Admin admin);
    /* 권한 */
    public void authInsert(Admin admin);
    /* 회원정보 상세*/
    public Admin myProfile(Admin condition);
    /* 회원정보수정 */
    public void save(Admin condition);
    /* 회원정보확인 비밀번호 체크 */
    public String passwordCheck(Admin condition);
    /* 로그인 시 정보업데이트 */
    public void loginSuccess(@Param("id") String id);
    /* 비밀번호 실패횟수 카운트 */
    public void failCnt(@Param("id") String id);
    /* 비밀번호 실패횟수 초기화 */
    public void failCntReset(@Param("id") String id);

}
