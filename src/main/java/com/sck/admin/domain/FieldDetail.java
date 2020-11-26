package com.sck.admin.domain;

public class FieldDetail {

    /** 시퀀스 */
    private String seq;
    /** 구장 시퀀스 */
    private String fieldSeq;
    /** 구장명 */
    private String fieldSubName;
    /** 대여품 */
    private String fieldRental;
    /** 샤워시설 */
    private String fieldShower;
    /** 주차시설 */
    private String fieldParking;
    /** 음료판매 */
    private String fieldDrink;
    /** 구장정보 */
    private String fieldInfo;
    /** 구장순서 */
    private String orderNo;
    /** 구장 이미지 시퀀스 */
    /** 삭제여부 */
    private String delYn;

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getFieldSeq() {
        return fieldSeq;
    }

    public void setFieldSeq(String fieldSeq) {
        this.fieldSeq = fieldSeq;
    }

    public String getFieldSubName() {
        return fieldSubName;
    }

    public void setFieldSubName(String fieldSubName) {
        this.fieldSubName = fieldSubName;
    }

    public String getFieldRental() {
        return fieldRental;
    }

    public void setFieldRental(String fieldRental) {
        this.fieldRental = fieldRental;
    }

    public String getFieldShower() {
        return fieldShower;
    }

    public void setFieldShower(String fieldShower) {
        this.fieldShower = fieldShower;
    }

    public String getFieldParking() {
        return fieldParking;
    }

    public void setFieldParking(String fieldParking) {
        this.fieldParking = fieldParking;
    }

    public String getFieldDrink() {
        return fieldDrink;
    }

    public void setFieldDrink(String fieldDrink) {
        this.fieldDrink = fieldDrink;
    }

    public String getFieldInfo() {
        return fieldInfo;
    }

    public void setFieldInfo(String fieldInfo) {
        this.fieldInfo = fieldInfo;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getDelYn() {
        return delYn;
    }

    public void setDelYn(String delYn) {
        this.delYn = delYn;
    }
}
