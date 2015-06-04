<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>

<head>
<title>Hadoop MRBench Reports</title>

<!-- Bootstrap -->
<link
	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet" media="screen">
<link
	href="<c:url value="/resources/bootstrap/css/bootstrap-responsive.min.css" />"
	rel="stylesheet" media="screen">
<link href="<c:url value="/resources/assets/styles.css" />"
	rel="stylesheet" media="screen">
<link href="<c:url value="/resources/vendors/datepicker.css" />"
	rel="stylesheet" media="screen">
<link href="<c:url value="/resources/vendors/uniform.default.css" />"
	rel="stylesheet" media="screen">
<link href="<c:url value="/resources/vendors/chosen.min.css" />"
	rel="stylesheet" media="screen">
<link
	href="<c:url value="/resources/vendors/wysiwyg/bootstrap-wysihtml5.css" />"
	rel="stylesheet" media="screen">
</head>

<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="#">Cloud-Bench Panel</a>
				<div class="nav-collapse collapse">

					<ul class="nav">
						<li class="active"><a href="#">Dashboard</a></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Settings <b class="caret"></b>

						</a>
							<ul class="dropdown-menu" id="menu1">
								<li><a href="reports">Reports</a></li>
								<li><a href="#">Logs</a></li>
								<li><a href="#">Errors</a></li>

							</ul></li>

					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">

			<!--/span-->
			<div class="span3" id="sidebar">
				<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
					<li><a href="index"><i class="icon-chevron-right"></i>
							Dashboard</a></li>
					<li ><a href="db"><i
							class="icon-chevron-right"></i>DB </a></li>
					<li><a href="scientific"><i class="icon-chevron-right"></i>Scientific</a></li>
					<li><a href="graphics"><i class="icon-chevron-right"></i>Graphics</a></li>
					<li><a href="map_reduce"><i class="icon-chevron-right"></i>Map-Reduce</a></li>
					<li><a href="data_streaming"><i class="icon-chevron-right"></i>Data
							Streaming</a></li>
					<li><a href="media_streaming"><i
							class="icon-chevron-right"></i>Media Streaming</a></li>
					<li><a href="software_testing"><i
							class="icon-chevron-right"></i>Software Testing</a></li>
					<li><a href="web_search"><i class="icon-chevron-right"></i>Web
							Search</a></li>
					<li><a href="web_serving"><i class="icon-chevron-right"></i>Web
							Serving</a></li>

				</ul>
			</div>




			<div class="span9" id="content">
				<!-- morris stacked chart -->







				<!-- wizard -->
				<div class="row-fluid section">

					<!-- block -->
					<div class="block">

						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">Reports</div>
						</div>
						<div class="block-content collapse in">
							<div class="span12">
							
								<div class="row-fluid">
									<!-- block -->

									<div class="block">
										<div class="navbar navbar-inner block-header">
											<div class="muted pull-left">Statistics</div>


										</div>
									</div>
									<div class="block-content collapse in">
										<div class="span3">
											<div class="chart" data-percent="${average}">${avgtime}</div>
											<div class="chart-bottom-heading">
								<span class="label label-info">Each Test Average Time</span>

											</div>
										</div>

									</div>
									<div class="block-content collapse in">
										<div class="span3">
											<div class="chart" data-percent="${over_avg}">${over_avg}</div>
											<div class="chart-bottom-heading">
												<span class="label label-info">OverAll Average Time</span>

											</div>
										</div>

									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- /block -->
				<table class="table table-striped table-bordered table-hover">
											<tr>
												<TH colspan="5">Chart data</th>

											</tr>
											<tr>
												<TH>Test Number</th>
												<TH>Time</th>
												
											</tr>
											<c:forEach items="${threads}" var="current">

												<tr>
													<td>Test<c:out value="${current.test_no}" />
													<td><c:out value="${current.avg_time}" />
													
												</tr>
											</c:forEach>
										</table>
				
			</div>

		</div>
	</div>
	<hr>
	<footer>
		<p>&copy; Cloud-Bench 2013</p>
	</footer>
	</div>
	<!--/.fluid-container-->
	<script src="<c:url value="/resources/vendors/jquery-1.9.1.js" />"></script>
	<script
		src="<c:url value="/resources/vendors/modernizr-2.6.2-respond-1.1.0.min.js" />"></script>
	
	<script
		src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
	<script
		src="<c:url value="/resources/vendors/jquery.uniform.min.js" />"></script>
	<script src="<c:url value="/resources/vendors/chosen.jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/vendors/bootstrap-datepicker.js" />"></script>
	<script
		src="<c:url value="/resources/vendors/wizard/jquery.bootstrap.wizard.min.js" />"></script>
	<script src="<c:url value="/resources/assets/scripts.js" />"></script>
	<script
		src="<c:url value="/resources/vendors/wysiwyg/wysihtml5-0.3.0.js" />"></script>
		<script
		src="<c:url value="/resources/vendors/easypiechart/jquery.easy-pie-chart.js" />"></script>
	<script
		src="<c:url value="/resources/vendors/wysiwyg/bootstrap-wysihtml5.js" />"></script>
	<script src="<c:url value="/resources/vendors/Validation.js" />"></script>
	<script src="<c:url value="/resources/assets/scripts.js" />"></script>
	<script>
		$(function() {
			$(".datepicker").datepicker();
			$(".uniform_on").uniform();
			$(".chzn-select").chosen();
			$('.textarea').wysihtml5();

			$('#rootwizard').bootstrapWizard(
					{
						onTabShow : function(tab, navigation, index) {
							var $total = navigation.find('li').length;
							var $current = index + 1;
							var $percent = ($current / $total) * 100;
							$('#rootwizard').find('.bar').css({
								width : $percent + '%'
							});
							// If it's the last tab then hide the last button and show the finish instead
							if ($current >= $total) {
								$('#rootwizard').find('.pager .next').hide();
								$('#rootwizard').find('.pager .finish').show();
								$('#rootwizard').find('.pager .finish')
										.removeClass('disabled');
							} else {
								$('#rootwizard').find('.pager .next').show();
								$('#rootwizard').find('.pager .finish').hide();
							}
						}
					});
			$('#rootwizard .finish').click(function() {
				//alert('Finished!, Starting over!');
				document.myForm.submit();
				//$('#rootwizard').find("a[href*='tab1']").trigger('click');
			});
		});
	</script>

	<script type="text/javascript">
		$("#myForm").submit(
				function(e) {
					e.preventDefault();
					$(":input").not("[type=submit]").removeClass('error').each(
							function() {
								if ($.trim($(this).val()).length == 0)
									$(this).addClass('error');
							});
				});
		</script>
		

<script>
		$(function() {
			// Easy pie charts
			$('.chart').easyPieChart({
				animate : 100
			});
		});
	</script>
</body>

</html>