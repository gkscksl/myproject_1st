<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pay cancel</title>
</head>
<body>
<a>결제 취소</a>
<script>
function print_msg() {
    alert('결제가 취소되었습니다. 확인을 누르면 창이 닫힙니다.');
}

setTimeout(print_msg, 1);
setTimeout(window.close,500);
</script>

</body>
</html>