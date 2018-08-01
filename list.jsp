<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/includes/taglib.jsp" %>
		
		<c:if test="${sysId ne 'fla'}">
		<div class="cont-top">
		</c:if>
		
		<c:if test="${sysId eq 'fla'}">
		<div class="cont-top" style="margin-top:65px;">
		</c:if>
		
			<!-- 탭매뉴 -->
			<ul class="tab-menu">
				<%-- <li class="active"><a href="javascript:departAjax('all','${sysId}')">전체</a></li> --%>
				<c:forEach items="${departList}" var="list" >
					<li><a href="javascript:departAjax('${list.DEPART_CODE}','${list.SYSID}')">${list.DEPART_NAME }</a></li>
				</c:forEach>
			</ul>
		</div>

		<div class="cont-mid">
			<!-- 컨텐츠 영역 -->
			<div class="member">
				<ul class="member-list">
					<c:forEach items="${professorList}" var="list">
						<li class="col-md-6">
							<figure class="professor-info border">
								<div class="photo">
									<img alt="${list.userFileName }" src="${contextPath}/fileDownloadThumbnails?fileGubun=professor&menuId=${list.sysId}&userFileName=${list.userFileName }&systemFileName=${list.systemFileName }" class="img-responsive" />
								</div>
								<figcaption>
									<strong class="name">${fn:substring(list.name,0,3)}</strong>
									<ul class="list dot">
										<li><strong>전공분야</strong> <span>${list.major}</span></li>
										<li><strong>연락처</strong> <span>${list.phone}</span></li>
										<li><strong>E-MAIL</strong> <span>${list.email}</span></li>
										<li><strong>연구실</strong> <span>${list.lab}</span></li>
									</ul>
								</figcaption>
								<a href="#none" class="more modal-trigger"><i class="xi-plus-thin"></i> <span class="sr-only">더보기</span></a>
								<!-- 모달팝업 -->
								<div id="modal">
									<div class="container">
										<strong class="title">교수소개</strong>
										<div class="inner">
										<figure class="professor-info">
											<div class="photo">
												<img alt="${list.userFileName }" src="${contextPath}/fileDownloadThumbnails?fileGubun=professor&menuId=${list.sysId}&userFileName=${list.userFileName }&systemFileName=${list.systemFileName }" class="img-responsive" />
											</div>
											<figcaption>
												<strong class="name">${list.name}</strong>
												<ul class="list dot">
													<li><strong>전공분야</strong> <span>${list.major}</span></li>
													<li><strong>연락처</strong> <span>${list.phone}</span></li>
													<li><strong>E-MAIL</strong> <span>${list.email}</span></li>
													<li><strong>연구실</strong> <span>${list.lab}</span></li>
												</ul>
											</figcaption>
										</figure>
	
										<strong class="sr-only">주요저서</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">주요저서</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>
															${list.mainPublic}
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<strong class="sr-only">연구실적</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">연구실적</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.resrchRslt}</td>
														<!-- <td>
															<ul class="list dot">
																<li></li>
															</ul>
														</td> -->
													</tr>
												</tbody>
											</table>
										</div>
										<strong class="sr-only">대외활동</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">대외활동</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.overseaAct}</td>
													</tr>
												</tbody>
											</table>
										</div>
										
										<c:if test="${list.patentReg ne null}">
										<strong class="sr-only">특허등록</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">특허등록</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.patentReg}</td>
													</tr>
												</tbody>
											</table>
										</div>
										</c:if>
										
										<c:if test="${list.resrchTask ne null}">
										<strong class="sr-only">현재 연구과제 수행</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">현재 연구과제 수행</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.resrchTask}</td>
													</tr>
												</tbody>
											</table>
										</div>
										</c:if>
										
										<c:if test="${list.patentRslt ne null}">
										<strong class="sr-only">특허실적</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">특허실적</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.patentRslt}</td>
													</tr>
												</tbody>
											</table>
										</div>
										</c:if>
										
										<c:if test="${list.resrchSubjectRslt ne null}">
										<strong class="sr-only">연구과제 참여실적</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">연구과제 참여실적</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.resrchSubjectRslt}</td>
													</tr>
												</tbody>
											</table>
										</div>
										</c:if>
										
										<c:if test="${list.resrchSubjectPerform ne null}">
										<strong class="sr-only">연구과제수행</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">연구과제수행</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.resrchSubjectPerform}</td>
													</tr>
												</tbody>
											</table>
										</div>
										</c:if>
										
										<c:if test="${list.nationalProjectRslt ne null}">
										<strong class="sr-only">국책연구과제실적</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">국책연구과제실적</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.nationalProjectRslt}</td>
													</tr>
												</tbody>
											</table>
										</div>
										</c:if>
										
										<c:if test="${list.job ne null}">
										<strong class="sr-only">(현)직장명</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">(현)직장명</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.job}</td>
													</tr>
												</tbody>
											</table>
										</div>
										</c:if>
										
										<c:if test="${list.course ne null}">
										<strong class="sr-only">강의과목</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">강의과목</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.course}</td>
													</tr>
												</tbody>
											</table>
										</div>
										</c:if>
										
										<c:if test="${list.teachSubject ne null}">
										<strong class="sr-only">담당교과목</strong>
										<div class="table-wrap">
											<table class="all-open">
												<caption>제목</caption>
												<thead>
													<tr>
														<th scope="col">담당교과목</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${list.teachSubject}</td>
													</tr>
												</tbody>
											</table>
										</div>
										</c:if>
										
										
										</div>
										<a href="#" class="close"><i class="xi-close-thin"></i> <span class="sr-only">닫기</span></a>
									</div>
								</div>
							</figure>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
<script>
function departAjax(depart,sysId){
	$.ajax({
		url: gContextPath+"/departAjax",
		async:true,
		data : {departCode:depart,sysId:sysId},
		cache : true,
		dataType : "json",
		success : function(data, status){
			
			$(".member-list").empty();
			
			var msg = "";
			 $.each(data, function(i, item) {
				 	
					msg += "<li class='col-md-6'>";
					msg += "	<figure class='professor-info border'>";
					msg += "		<div class='photo'>";
					msg += "			<img alt='"+item.userFileName+"' src='/fileDownloadThumbnails?fileGubun=professor&menuId="+item.sysId+"&userFileName="+item.userFileName+"&systemFileName="+item.systemFileName+"' class='img-responsive' />";
					msg += "		</div>";
					msg += "		<figcaption>";
					msg += "			<strong class='name'>"+item.name.substring(0,3)+"</strong>";
					msg += "			<ul class='list dot'>";
					msg += "				<li><strong>전공분야</strong> <span>"+(item.major == null ? "" : item.major)+"</span></li>";
					msg += "				<li><strong>연락처</strong> <span>"+(item.phone == null ? "" : item.phone)+"</span></li>";
					msg += "				<li><strong>E-MAIL</strong> <span>"+(item.email == null ? "" : item.email)+"</span></li>";
					msg += "				<li><strong>연구실</strong> <span>"+(item.lab == null ? "" : item.lab)+"</span></li>";
					msg += "			</ul>";
					msg += "		</figcaption>";
					msg += "		<a href='#none' class='more modal-trigger'><i class='xi-plus-thin'></i> <span class='sr-only'>더보기</span></a>";
					msg += "		<div id='modal'>";
					msg += "			<div class='container'>";
					msg += "				<strong class='title'>교수소개</strong>";
					msg += "				<div class='inner'>";
					msg += "					<figure class='professor-info'>";
					msg += "						<div class='photo'>";
					msg += "							<img alt='"+item.userFileName+"' src='/fileDownloadThumbnails?fileGubun=professor&menuId="+item.sysId+"&userFileName="+item.userFileName+"&systemFileName="+item.systemFileName+"' class='img-responsive' />";
					msg += "						</div>";
					msg += "						<figcaption>";
					msg += "							<strong class='name'>"+item.name+"</strong>";
					msg += "								<ul class='list dot'>";
					msg += "									<li><strong>전공분야</strong> <span>"+(item.major == null ? "" : item.major)+"</span></li>";
					msg += "									<li><strong>연락처</strong> <span>"+(item.phone == null ? "" : item.phone)+"</span></li>";
					msg += "									<li><strong>E-MAIL</strong> <span>"+(item.email == null ? "" : item.email)+"</span></li>";
					msg += "									<li><strong>연구실</strong> <span>"+(item.lab == null ? "" : item.lab)+"</span></li>";
					msg += "								</ul>";
					msg += "						</figcaption>";
					msg += "					</figure>";
					
					msg += "					<strong class='sr-only'>주요저서</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>주요저서</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+(item.mainPublic == null ? "" : item.mainPublic)+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					
					msg += "					<strong class='sr-only'>대외활동</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>대외활동</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+(item.overseaAct == null ? "" : item.overseaAct)+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					
					msg += "					<strong class='sr-only'>연구실적</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>연구실적</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+(item.resrchRslt == null ? "" : item.resrchRslt)+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					
					if(item.patentReg != null){
					msg += "					<strong class='sr-only'>특허등록</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>특허등록</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+item.patentReg+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					}
					
					if(item.resrchTask != null){
					msg += "					<strong class='sr-only'>현재 연구과제 수행</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>현재 연구과제 수행</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+item.resrchTask+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					}
					
					if(item.patentRslt != null){
					msg += "					<strong class='sr-only'>특허실적</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>특허실적</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+item.patentRslt+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					}
					
					if(item.resrchSubjectRslt != null){
					msg += "					<strong class='sr-only'>연구과제 참여실적</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>연구과제 참여실적</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+item.resrchSubjectRslt+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					}
					
					if(item.resrchSubjectPerform != null){
					msg += "					<strong class='sr-only'>연구과제수행</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>연구과제수행</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+item.resrchSubjectPerform+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					}
					
					if(item.nationalProjectRslt != null){
					msg += "					<strong class='sr-only'>국책연구과제실적</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>국책연구과제실적</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+item.nationalProjectRslt+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					}
					
					if(item.job != null){
					msg += "					<strong class='sr-only'>(현)직장명</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>(현)직장명</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+item.job+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					}
					
					if(item.course != null){
					msg += "					<strong class='sr-only'>강의과목</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>강의과목</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+item.course+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					}
					
					if(item.teachSubject != null){
					msg += "					<strong class='sr-only'>담당교과목</strong>";
					msg += "					<div class='table-wrap'>";
					msg += "						<table class='all-open'>";
					msg += "							<caption>제목</caption>";
					msg += "							<thead>";
					msg += "								<tr>";
					msg += "									<th scope='col'>담당교과목</th>";
					msg += "								</tr>";
					msg += "							</thead>";
					msg += "							<tbody>";
					msg += "								<tr>";
					msg += "									<td>"+item.teachSubject+"</td>";
					msg += "								</tr>";
					msg += "							</tbody>";
					msg += "						</table>";
					msg += "					</div>";
					}
					
					
					msg += "				</div>";
					msg += "				<a href='#' class='close'><i class='xi-close-thin'></i> <span class='sr-only'>닫기</span></a>";
					msg += "			</div>";
					msg += "		</div>";
					msg += "	</figure>";
					msg += "</li>";
             });
			 $(".member-list").append(msg);
		},
		error : function(xhr, status, error){
			alert("조회에 실패하였습니다.");
		}
	})
};

$(function(){
	$(".tab-menu li:eq(0)").addClass("active");
	
	$(document).on("click",".tab-menu li",function(){
		$(".tab-menu li").removeClass("active");
		$(this).addClass("active");
	});	
});
</script>









