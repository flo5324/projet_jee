<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
    <tiles:putAttribute name="title">Créer mon projet</tiles:putAttribute>
    <tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/campaign/show.css"></tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid project-bg">
			<div class="row white-bg">
				<div class="col-lg-9">
					<div class="row">
						<ul class="nav nav-pills nav-justified">
							<li class="active"><a data-toggle="pill" href="#home">Le projet</a></li>
							<li><a data-toggle="pill" href="#news">News <span class="badge">5</span></a></li>
							<li><a data-toggle="pill" href="#entries">Contributeurs <span class="badge">150</span></a></li>
							<li><a data-toggle="pill" href="#comments">Commentaires <span class="badge">100</span></a></li>
						</ul>
					</div>
					<div class="tab-content col-lg-12">
						<div id="home" class="tab-pane fade in active">
							<h3>HOME</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
										<h3><c:out value="${projet.title}"/></h3>
					<img />
					<p><c:out value="${projet.description}"/></p>
					<div><c:out value="${projet.expectedamount}"/></div>
					<div><c:out value="${projet.expectedamount}"/></div>
					<a href="#" class="btn btn-default">Voir</a>
						</div>
						<div id="news" class="tab-pane fade">
							<h3>Menu 1</h3>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
						<div id="entries" class="tab-pane fade">
							<h3>Menu 2</h3>
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
						</div>
						<div id="comments" class="tab-pane fade">
							<div class="row">
								<h2 class="center">Commentaires</h2>
							</div>							
							<div id="page-content">
							</div>
							<div id="comment1" class="hidden">
							ceci est comment1
							</div>
							<div id="comment2" class="hidden">
							ceci est comment2
							</div>
							<div id="all-comments">
								<c:forEach var="listValue" items="${textes}">
									<div class="comment col-lg-12">
										<div class="col-lg-2">
											<img class="avatar" src="<c:url value="/resources/images/avatars/female.png"/>"/>
										</div>
										<div class="col-lg-8">
											<h3>${listValue}</h3>
											<p>${listValue}</p>
											<div>${listValue}</div>
										</div>
										<div class="col-lg-2">
											11 janvier 1991
										</div>
										<div class="col-lg-12"><hr></div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 grey-bg project-aside">
					<div class="row">
						<div class="col-lg-6">
							<div class="project-highlight">36 926 <i class="fa fa-eur"></i></div>
							<div class="project-highlight-down">Collectés</div>
						</div>
						<div class="col-lg-6">
							<div class="project-highlight"><i class="fa fa-users"></i> 36 926</div>
							<div class="project-highlight-down">Contributeurs</div>
						</div>
						<div class="col-lg-6">
							<div class="project-highlight">16 000 <i class="fa fa-eur"></i></div>
							<div class="project-highlight-down">Objectif</div>
						</div>
						<div class="col-lg-6">
							<div class="project-highlight"><i class="fa fa-calendar-o"></i> 2</div>
							<div class="project-highlight-down">Jours</div>
						</div>
						<div class="col-lg-12">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2%;">
									2%
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#sendPayment">Soutenir ce projet</button>
							<div id="sendPayment" class="modal fade" role="dialog">
							<div class="modal-dialog">
								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Faire une donation</h4>
									</div>
									<div class="modal-body">
										<p>Mettre le formulaire ici</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
									</div>
								</div>
							</div>
						</div>
							Vos contributions vous seront automatiquement remboursées si le projet n'atteint pas son objectif
						</div>
					</div>

				</div>				
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>