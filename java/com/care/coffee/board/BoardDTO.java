package com.care.coffee.board;


public class BoardDTO {
//	private int no;
//	private String title;
//	private String content;
//	private String id;
//	private String writeDate; // 2023-09-22
//	private int hits;
//	private String fileName;
	
	private int no; //게시글 고유 번호
	private String title; //게시글 제목
	private String content;	  //게시글내용
	private String writer;	  //게시글작성자
	private String readcount; //조회수
	private String good;	  //게시글추천수
	private String writeday;    //게시글 게시일
	private String picture; 	//사진
	
	
	public int getNo() {
		return no;							
	}
	public void setNo(int no) {							
		this.no = no;		//게시글 번호
	}
	public String getTitle() {  				
		return title;
	}
	public void setTitle(String title) {
		this.title = title;				//게시글 제목
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;			//게시글 내용
	}
	public String getWriter() {
		return writer;				//작성자
	}
	public void setId(String writer) {
		this.writer = writer;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteDate(String writeday) {
		this.writeday = writeday;				//작성일
	}
	public String getReadcount() {
		return readcount;							//조회수
	}
	public void setHits(String readcount) {
		this.readcount = readcount;
	}
	public String getPicture() {
		return picture;
	}
	public void setFileName(String picture) {
		this.picture = picture;				//사진
	}
	public String getGood() {
		return good;
	}
	public void setGood(String good) {
		this.good = good;				//좋아요
	}
	
	
	
}


/*
INSERT INTO board_quiz 
VALUES(1, 'admin 게시글 제목', 'admin 게시글 내용', 'admin', '2023-09-22', 0, '');
INSERT INTO board_quiz 
VALUES(2, 'user1 게시글 제목', 'user1 게시글 내용', 'user1', '2023-09-22', 0, '');
INSERT INTO board_quiz 
VALUES(3, 'user2 게시글 제목', 'user2 게시글 내용', 'user2', '2023-09-23', 0, '');
INSERT INTO board_quiz 
VALUES(4, 'test1 게시글 제목', 'test1 게시글 내용', 'test1', '2023-09-23', 0, '');
INSERT INTO board_quiz 
VALUES(5, 'test2 게시글 제목', 'test2 게시글 내용', 'test2', '2023-09-24', 0, '');
COMMIT;
*/
