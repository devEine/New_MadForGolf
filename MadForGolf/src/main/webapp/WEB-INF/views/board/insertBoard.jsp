<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- header -->
<jsp:include page="../include/header.jsp" />
<!-- header -->
<style>

.container{
/*  	border: 5px solid red; */
}

.container2{
/*  	border: 5px solid yellow; */

}

.container3{
/*  	border: 5px solid gray; */
	width: 100%;
}

.section-heading{
/* 	border: 5px solid blue; */
	text-align: center;
}

.contact-form-area{
/* 	border: 5px solid green; */
	
}

.form-group label{
	font-weight: bold;
}
#message{
	width: 100%;
    height: 400px;
/*      border-color: #f5f5f5; */
    resize: none;
/*      background-color: #f5f5f5;  */
}

.placeholder::placeholder{
	color: #b7b7b7; 
}

.form-control_real{
    position: relative;
    z-index: 2;
    height: 45px;
    width: 100%;
    background-color: #ffffff;
    font-size: 16px;
    margin-bottom: 15px;
    border: 1px solid #e1e1e1;
    border-radius: 2px;
     padding: 0px 20px;
    font-weight: 400;
    color: #b7b7b7;
    transition-duration: 500ms;
}
.form-control_file{
    position: relative;
    z-index: 2;
    height: 70px;
    width: 100%;
    background-color: #ffffff;
    font-size: 16px;
/*     margin-bottom: 5px; */
    border: 1px solid #e1e1e1;
    border-radius: 2px;
     padding: 15px 20px;
    font-weight: 400;
    color: #b7b7b7;
    transition-duration: 500ms;
}


.label{
	height: 40px;
}

.form-control_file input{
	background-color: white;
	color: red;
}
.board_btn{
/*  	border: 5px solid blue; */
	display: flex;
	flex-flow: row nowrap;
 	justify-content: center;

	
}

.board_btn button{
	width : 30px;
	margin : 10px 20px;
	background-color: #91C788;
	border: 0;
}

.board_btn button:hover{
	margin : 10px 20px;
	background-color: #C6EBC5;
	color: white;
	
}


</style>


    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        <!-- Top Breadcrumb Area -->
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(${pageContext.request.contextPath }/resources/img/bg-img/24.jpg);">
            <h2>Community</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/"><i class="fa fa-home"></i> Home</a></li>
                            <li class="breadcrumb-item"><a href="/board/listBoardAll"> Community</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Write Board</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->


<!-- 		<section class="contact-area"> -->
        <div class="container">
            <div class="row align-items-center justify-content-between container2">
				<div class="container3">
	
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2>Write Board</h2>
<!--                         <p>Send us a message, we will call back later</p> -->
                    </div>
                    
                    <!-- Contact Form Area -->
                    <div class="contact-form-area mb-100">
                        <form action="${pageContext.request.contextPath }/board/insertBoard" method="post" enctype="multipart/form-data">
							<input type="hidden" name="user_id" value="다은쓰">
                            <div class="row">
                            
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
<!--                                     	<label class="label" for="company">말머리</label> -->
                                    	<select name="board_category" class="form-control_real" id="">
                                    		<option class="form-control_real" value="">--말머리 선택--</option>
							   				<option class="form-control_real" value="질문">질문</option>
						  					<option class="form-control_real"  value="신고">신고</option>
							   				<option class="form-control_real"  value="친목">친목</option>
							   				<option class="form-control_real"  value="정보">정보</option>
										</select>
                                    </div>
                                </div>
                                
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
<!--                                     	<label class="label" for="company">작성자</label> -->
                                    	<input type="text" name="user_name" class="form-control_real" value="작성자 이름">
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="form-group">
<!--                                     	<label class="label"  for="company">제목</label> -->
                                    	<input type="text" name="title" class="form-control placeholder" id="" placeholder="제목을 작성하세요">
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="form-group">
<!--                                     	<label for="company">내용</label> -->
                                        <textarea class="form-control placeholder" name="content" id="message" cols="30" rows="40" placeholder="내용을 작성하세요"></textarea>
                                    </div>
                                </div>
                                
                                <div class="col-12 mb-4 ">
                                	<div class="form-group">
<!-- 	                                	<label for="content_img">사진 등록</label> -->
                                		<input type="file" class="form-control_file" id="content_img" name="img" onchange="readURL(this);">
	                                	<img id="preview"/>
                                	</div>
                            	</div>
                            	
                                <div class="col-12 mb-4">
                                	<div class="form-group">
<!--                                 		<label for="content_file">파일 등록</label> -->
                                		<input type="file" class="form-control_file" id="content_file" name="file" onchange="readURL(this);">
                            		</div>
                            	</div>
                            	
                                <div class="col-12 board_btn">
                                    <button type="submit" class="btn alazea-btn mt-15">게시글 작성</button>
                                    <button type="button" class="btn alazea-btn mt-15" onclick="location.href='/board/listBoardAll'">작성 취소</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                          </div>
        </div>
<!--     </section>   -->
                
                

<!-- 푸터들어가는 곳 -->
<jsp:include page="../include/footer.jsp" />
<!-- 푸터들어가는 곳 -->		