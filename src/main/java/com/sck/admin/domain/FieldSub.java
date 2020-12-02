package com.sck.admin.domain;

import java.util.List;

public class FieldSub {

    /** 시퀀스 */
    private String seq;
    /** 구장 시퀀스 */
    private String fieldSeq;
    /** 구장명 */
    private String fieldSubNm;
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
    /** 등록자 */
    private String regId;
    /** 등록일자 */
    private String regDate;
    /** 수정자 */
    private String modId;
    /** 수정일자 */
    private String modDate;
    /** 구장 이미지 시퀀스 */

    /** 삭제여부 */
    private String delYn;

    /** 부모리스트(Field) */
    private List<FieldMain> fieldMainList;

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

    public String getFieldSubNm() {
        return fieldSubNm;
    }

    public void setFieldSubNm(String fieldSubNm) {
        this.fieldSubNm = fieldSubNm;
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

    public String getRegId() {
        return regId;
    }

    public void setRegId(String regId) {
        this.regId = regId;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    public String getModId() {
        return modId;
    }

    public void setModId(String modId) {
        this.modId = modId;
    }

    public String getModDate() {
        return modDate;
    }

    public void setModDate(String modDate) {
        this.modDate = modDate;
    }

    public String getDelYn() {
        return delYn;
    }

    public void setDelYn(String delYn) {
        this.delYn = delYn;
    }

    public List<FieldMain> getFieldMainList() {
        return fieldMainList;
    }

    public void setFieldMainList(List<FieldMain> fieldMainList) {
        this.fieldMainList = fieldMainList;
    }
}
