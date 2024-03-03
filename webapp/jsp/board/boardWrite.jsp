<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/header" />

<div align="center">
<br><br>
	<form action="/board/boardWriteProc" method='post' enctype="multipart/form-data">
		<table width="70%" height="45%">
			<caption>
				<font size="5"><b>게시글 등록</b></font>
			</caption>
			<tr>
				<th width="25%">제목</th>
				<td><input style="width: 100%;" type="text" id="title" name="title"></td>
			</tr>
			<tr></tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea style="width: 100%;" rows="10" cols="30" id="content" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<th>파일첨부</th>
				<td><input type="file" id="upfile" name="upfile"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글쓰기"> 
					<input type="button" value="목록"	 onclick="location.href='/board/boardForm'">
				</td>
			</tr>
		</table>
	</form>
	<br>
</div>
<c:import url="/footer" />












