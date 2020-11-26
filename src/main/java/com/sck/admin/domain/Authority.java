package com.sck.admin.domain;

public class Authority {

    /** 관리자 시퀀스 */
    private String adminSeq;
    /** 권한 시퀀스 */
    private String authSeq;

    public String getAdminSeq() {
        return adminSeq;
    }

    public void setAdminSeq(String adminSeq) {
        this.adminSeq = adminSeq;
    }

    public String getAuthSeq() {
        return authSeq;
    }

    public void setAuthSeq(String authSeq) {
        this.authSeq = authSeq;
    }
}
