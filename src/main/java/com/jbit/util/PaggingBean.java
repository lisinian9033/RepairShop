package com.jbit.util;

/**
 * 分页组件
 */
public class PaggingBean {
	private int currentPageNo = 1;// 当前页数
	private int totalCount;// 总条数
	private int pagesize = 5;
	private int totalPageCount;// 总页数

	/**
	 * 临界值处理
	 */
	public void Pagging(int totalCount) {
     this.totalCount=totalCount;
     totalPageCount=totalCount%pagesize==0?totalCount/pagesize:totalCount/pagesize+1;
     if(currentPageNo<1){
    	 currentPageNo=1;
     }else if(currentPageNo>totalPageCount){
    	 currentPageNo=totalPageCount;
     }
	}

	 /**
     * @return (当前页码-1)*每页显示条数
     */
    public int first(){
    	 return (currentPageNo-1)*pagesize;
    }
    /**
     * @return 每页显示条数
     */
    public int last(){
    	return pagesize;
    }

	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

}
