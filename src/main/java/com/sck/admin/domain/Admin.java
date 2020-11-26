package com.sck.admin.domain;

import java.util.List;

public class Admin {

    /** 시퀀스 */
    private String seq;
    /** 관리자 아이디 */
    private String adminId;
    /** 관리자 패스워드 */
    private String adminPw;
    /** 관리자 이름 */
    private String adminName;
    /** 관리자 이메일 */
    private String adminEmail;
    /** 관리자 연락처 */
    private String adminTel;
    /** 생성일자 */
    private String regDate;
    /** 삭제여부 */
    private String delYn;

    /** 권한 리스트 */
    private List<Authority> auth;

    /** 권한 그룹 */
    private AuthorityGrp authGrp;

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getAdminPw() {
        return adminPw;
    }

    public void setAdminPw(String adminPw) {
        this.adminPw = adminPw;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    public String getAdminTel() {
        return adminTel;
    }

    public void setAdminTel(String adminTel) {
        this.adminTel = adminTel;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    public String getDelYn() {
        return delYn;
    }

    public void setDelYn(String delYn) {
        this.delYn = delYn;
    }

    public List<Authority> getAuth() {
        return auth;
    }

    public void setAuth(List<Authority> auth) {
        this.auth = auth;
    }

    public AuthorityGrp getAuthGrp() {
        return authGrp;
    }

    public void setAuthGrp(AuthorityGrp authGrp) {
        this.authGrp = authGrp;
    }
}
