package com.sck.admin.domain;

public class File {

    /** 시퀀스 */
    private String seq;
    /** 그룹번호 */
    private String groupSeq;
    /** 파일명 */
    private String fileName;
    /** 파일 경로 */
    private String filePath;
    /** 파일 타입 */
    private String fileType;
    /** 파일 사이즈 */
    private String fileSize;
    /** 정렬 순서 */
    private String orderNo;

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

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
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
}
