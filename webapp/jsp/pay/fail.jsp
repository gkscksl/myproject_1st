<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pay fail</title>
</head>
<body>
<a>결제 실패</a>
<script>
function print_msg() {
    alert('결제가 정상처리되지않았습니다. 다시 시도해주세요.');
}
setTimeout(print_msg, 1);

setTimeout(window.close,500);
</script>
<script type="text/javascript">
window.opener.history(-3);
window.close();
</script>
</body>
</html>