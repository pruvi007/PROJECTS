<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function showFileName() {
   var fil = document.getElementById("myFile");
   alert(fil.value);
}
</script>
</head>
<body>
<form id="frmMain" name="frmMain">
    <input type="file" id="myFile" name="myFile"/>
    <a href="#" onclick="showFileName()">Show Name</a>
</form>
</body>
</html>