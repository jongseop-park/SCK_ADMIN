package com.sck.admin.core.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Paging {

    /** 글 전체 개수 */
    private int totalCount;
    /** 첫번째 페이지 번호 */
    private int startPage;
    /** 마지막 페이지 번호 */
    private int endPage;
    /** 이전 버튼 활성화 여부 */
    private boolean prev;
    /** 다음 버튼 활성화 여부 */
    private boolean next;
    /** 페이지 버튼 수 */
    private int displayPageNum = 10;
    /** 게시글 조회 파라미터 */
    private Criteria criteria;

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        calcData();
    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public boolean isPrev() {
        return prev;
    }

    public void setPrev(boolean prev) {
        this.prev = prev;
    }

    public boolean isNext() {
        return next;
    }

    public void setNext(boolean next) {
        this.next = next;
    }

    public int getDisplayPageNum() {
        return displayPageNum;
    }

    public void setDisplayPageNum(int displayPageNum) {
        this.displayPageNum = displayPageNum;
    }

    public Criteria getCriteria() {
        return criteria;
    }

    public void setCriteria(Criteria criteria) {
        this.criteria = criteria;
    }

    private void calcData(){
        //끝 페이지 번호 = (현재 페이지 번호 / 화면에 보여질 페이지 번호의 개수) * 화면에 보여질 페이지 번호의 갯수
        endPage = (int)(Math.ceil(criteria.getPage() / (double)displayPageNum) * displayPageNum); // 끝 페이지 번호
        // 시작 페이지 번호 = (끝 페이지 - 화면에 보여질 페이지 번호의 개수) + 1
        startPage = (endPage - displayPageNum) + 1; // 시작 페이지 번호

        //마지막 페이지 번호 = 총 게시글 수 / 한 페이지당 보여줄 게시글의 개수
        int tempEndPage = (int) (Math.ceil(totalCount / (double)criteria.getPerPageNum()));
        if (endPage > tempEndPage) { // 끝 페이지 번호 > 마지막 페이지 번호
            endPage = tempEndPage;
        }

        //이전 버튼 생성 여부 = 시작 페이지 번호 == 1 ? false : true
        prev = startPage == 1 ? false : true;
        //다음 버튼 생성 여부 = 끝 페이지 번호 * 한 페이지당 보여줄 게시글의 개수 < 총 게시글의 수 ? true: false
        next = endPage * criteria.getPerPageNum() >= totalCount ? false : true;
    }

    public String makeSearch(int page){ // 검색조건(searchType)과 검색키워드(keyword)에 대한 링크를 처리하기 위한 로직
        UriComponents uriComponents =
                UriComponentsBuilder.newInstance() // url을 생성하여 ?page=1~keyword=검색어 로 url이 생성됨
                .queryParam("page",page)
                .queryParam("perPageNum",criteria.getPerPageNum())
                .queryParam("searchType",((Search)criteria).getSearchType())
                .queryParam("keyword",encoding(((Search)criteria).getKeyword()))
                .build();
        return uriComponents.toUriString();
    }

    private String encoding(String keyword){
        if(keyword == null | keyword.trim().length() == 0){
            return "";
        }

        try {
            return URLEncoder.encode(keyword,"UTF-8");
        } catch (UnsupportedEncodingException e){
            return "";
        }
    }
}
