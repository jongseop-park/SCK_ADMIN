package com.sck.core.domain;

public class Search extends Criteria{

    /** 검색 타입(작성자, 제목 등) */
    private String searchType;
    /** 검색 내용 */
    private String keyword;

    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
}
