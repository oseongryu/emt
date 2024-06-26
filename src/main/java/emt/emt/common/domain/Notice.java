package emt.emt.common.domain;

import java.sql.Date;

public class Notice {

	/*
  	BOARD_NO		NUMBER
	BOARD_TITLE		VARCHAR2(100 BYTE)
	BOARD_CONTENT	VARCHAR2(4000 BYTE)
	USER_ID			VARCHAR2(20 BYTE)
	BOARD_DATE		DATE
	BOARD_COUNT		NUMBER

*/
	
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String userId;
	private String boardDate;
	private int boardCount;

		
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	public int getBoardCount() {
		return boardCount;
	}
	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}
