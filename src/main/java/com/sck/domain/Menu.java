package com.sck.domain;

public class Menu {

    /** 시퀀스 */
    private String seq;
    /** 메뉴타입 */
    private String menuType;
    /** 메뉴명 */
    private String menuName;
    /** 메뉴 URL */
    private String menuUrl;
    /** 부모 시퀀스 */
    private String parentSeq;
    /** 뎁스 */
    private String depth;
    /** 메뉴 순서 */
    private String orderNo;
    /** 사용여부 */
    private String useYn;

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getMenuType() {
        return menuType;
    }

    public void setMenuType(String menuType) {
        this.menuType = menuType;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getMenuUrl() {
        return menuUrl;
    }

    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl;
    }

    public String getParentSeq() {
        return parentSeq;
    }

    public void setParentSeq(String parentSeq) {
        this.parentSeq = parentSeq;
    }

    public String getDepth() {
        return depth;
    }

    public void setDepth(String depth) {
        this.depth = depth;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getUseYn() {
        return useYn;
    }

    public void setUseYn(String useYn) {
        this.useYn = useYn;
    }
}
