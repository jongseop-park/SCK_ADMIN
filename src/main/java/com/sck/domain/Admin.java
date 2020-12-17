package com.sck.domain;

import java.util.List;

public class Admin {

    /** 시퀀스 */
    private String seq;
    /** 관리자 아이디 */
    private String adminId;
    /** 관리자 패스워드 */
    private String adminPw;
    /** 관리자 이름 */
    private String adminNm;
    /** 관리자 이메일 */
    private String adminEmail;
    /** 관리자 연락처 */
    private String adminTel;
    /** 비밀번호 실패횟수 */
    private String pwFailCnt;
    /** 계정 잠금여부 */
    private String lockYn;
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

    public String getAdminNm() {
        return adminNm;
    }

    public void setAdminNm(String adminNm) {
        this.adminNm = adminNm;
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

    public String getPwFailCnt() {
        return pwFailCnt;
    }

    public void setPwFailCnt(String pwFailCnt) {
        this.pwFailCnt = pwFailCnt;
    }

    public String getLockYn() {
        return lockYn;
    }

    public void setLockYn(String lockYn) {
        this.lockYn = lockYn;
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
