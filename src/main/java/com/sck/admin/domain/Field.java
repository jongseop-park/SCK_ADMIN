package com.sck.admin.domain;


import com.sck.admin.core.domain.Criteria;

import java.util.List;

public class Field extends Criteria {

    /** 시퀀스 */
    private String seq;
    /** 구장 */
    private String fieldName;
    /** 주소 */
    private String fieldAddress;
    /** 연락처 */
    private String fieldTel;
    /** 환불규정 */
    private String fieldRefund;
    /** 등록자 */
    private String regId;
    /** 등록일 */
    private String regDate;
    /** 수정자 */
    private String modId;
    /** 수정일 */
    private String modDate;
    /** 삭제여부 */
    private String delYn;

    /** WEB_FIELD_DETAIL 테이블 */
    private List<FieldDetail> fieldDetail;

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public String getFieldAddress() {
        return fieldAddress;
    }

    public void setFieldAddress(String fieldAddress) {
        this.fieldAddress = fieldAddress;
    }

    public String getFieldTel() {
        return fieldTel;
    }

    public void setFieldTel(String fieldTel) {
        this.fieldTel = fieldTel;
    }

    public String getFieldRefund() {
        return fieldRefund;
    }

    public void setFieldRefund(String fieldRefund) {
        this.fieldRefund = fieldRefund;
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

    public List<FieldDetail> getFieldDetail() {
        return fieldDetail;
    }

    public void setFieldDetail(List<FieldDetail> fieldDetail) {
        this.fieldDetail = fieldDetail;
    }
}
