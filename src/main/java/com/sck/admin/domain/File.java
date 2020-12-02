package com.sck.admin.domain;

public class File {

    /** 시퀀스 */
    private String seq;
    /** 그룹번호 */
    private String groupSeq;
    /** 파일명 */
    private String fileNm;
    /** 실제파일 명 */
    private String fileOrigNm;
    /** 파일 경로 */
    private String filePath;
    /** 파일 타입 */
    private String fileType;
    /** 파일 사이즈 */
    private String fileSize;
    /** 정렬 순서 */
    private String orderNo;
    /** 등록자 */
    private String regId;
    /** 등록일자 */
    private String regDate;
    /** 수정자 */
    private String modId;
    /** 수정일자 */
    private String modDate;

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getGroupSeq() {
        return groupSeq;
    }

    public void setGroupSeq(String groupSeq) {
        this.groupSeq = groupSeq;
    }

    public String getFileNm() {
        return fileNm;
    }

    public void setFileNm(String fileNm) {
        this.fileNm = fileNm;
    }

    public String getFileOrigNm() {
        return fileOrigNm;
    }

    public void setFileOrigNm(String fileOrigNm) {
        this.fileOrigNm = fileOrigNm;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public String getFileSize() {
        return fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
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
}
