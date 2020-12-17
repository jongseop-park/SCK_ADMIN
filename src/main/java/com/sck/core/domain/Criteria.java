package com.sck.core.domain;

public class Criteria { // 검색기준 및 분류클래스

    /** 현재 페이지 번호 */
    private int page;
    /** 한 페이지당 보여줄 게시글의 개수 */
    private int perPageNum;
    /** 게시글 시작 번호 */
    private int rowStart;
    private int rowEnd;

    public Criteria() { // 게시글 진입 시 초기설정
        this.page = 1; // 페이지 번호 1
        this.perPageNum = 10; // 게시물 총 개수
    }

    public void setPage(int page) {
        if (page <= 0) {
            this.page = 1;
            return;
        }
        this.page = page;
    }

    public void setPerPageNum(int perPageNum) {
        if (perPageNum <= 0 || perPageNum > 100) {
            this.perPageNum = 10;
            return;
        }
        this.perPageNum = perPageNum;
    }

    public int getPage() {
        return page;
    }

    public int getPageStart() {
        return (this.page - 1) * perPageNum;
    }

    public int getPerPageNum() {
        return this.perPageNum;
    }

    public int getRowStart() {
        rowStart = ((page - 1) * perPageNum) + 1;
        return rowStart;
    }

    public int getRowEnd() {
        rowEnd = rowStart + perPageNum - 1;
        return rowEnd;
    }

}