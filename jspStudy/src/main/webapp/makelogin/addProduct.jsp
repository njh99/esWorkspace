<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록페이지</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	<div class="container">	
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" 
		method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" id="name"  name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" id="price"  name="price" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">브랜드</label>
				<div class="col-sm-3">
					<input type="text" name="company" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">사이즈</label>
				<div class="col-sm-3">
					<input type="text" name="size" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="text" id="stock" name="stock" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록하기">
				</div>
			</div>
		</form>
	</div>
</body>
</html>