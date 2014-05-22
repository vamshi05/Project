<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<title>Cmpe 226 Project</title>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> -->
<link href="../css/style.css" rel="stylesheet" type="text/css" />


<script type="text/javascript">
	
	 
	function displaySize(valueName) {
		if (valueName == "TV") {
			var div = document.getElementById('divTVName');
			div.innerHTML = "<div id=\"divTVName\" style=\"margin-left:28px;\">"
					+ "<br/>" + "<font>Please Select the TV: </font>"
					+ "<select name=\"size\" id=\"size\" onchange=\"displayModel(this.value,'TV')\">"
					+ "<option value=-1>Select</option>"
					+ "<option>Sony 42</option>"
					+ "<option>Sony 47</option>"
					+ "<option>Samsung</option>"
					+ "<option>Samsung 47</option>" 
					+ "<option>Philips 37</option>"
					+ "<option>Philips 42</option>"
					+ "<option>Hitachi 47</option>"
					+ "<option>Hitachi 52</option>"
					+ "<option>LG 40</option>"
					+ "<option>LG 47</option>"
					+ "</select>"
		}
		else if (valueType == "Refrigerators") {
			var div = document.getElementById('divTVName');
			div.innerHTML = "<div id=\"divTVName\" style=\"margin-left:28px;\">"
					+ "<br/>" + "<font>Please Select the Refrigerator: </font>"
					+ "<select name=\"size\" id=\"size\" onchange=\"displayModel(this.value,'Refrigerators')\">"
					+ "<option value=-1>Select</option>"
					+ "<option>LG 22L</option>"
					+ "<option>LG 26.7L</option>"
					+ "<option>Samsung 30L</option>"
					+ "<option>Samsung 18L</option>"
					+ "<option>Whirlpool 25.4L</option>"
					+ "<option>Whirlpool 27.2</option>"
					+ "<option>GE 29L</option>"
					+ "<option>GE 27.1L</option>"
					+ "<option>Hitachi 47</option>"
					+ "<option>Electrolux 22.6L</option>"
					+ "<option>Electrolux 25.9L</option>"

					+ "</select>"
		}
		else if (valueType == "Book") {
			var div = document.getElementById('divTVName');
			div.innerHTML = "<div id=\"divTVName\" style=\"margin-left:28px;\">"
					+ "<br/>" + "<font>Please Select the Book: </font>"
					+ "<select name=\"size\" id=\"size\" onchange=\"displayModel(this.value,'Books')\">"
					+ "<option value=-1>Select</option>"
					+ "<option>Batman</option>"
					+ "<option>Andre the giant</option>"
					+ "<option>Finding me</option>"
					+ "<option>Good spy</option>" 
					+ "<option>Think like a freak</option>"
					+ "<option>The Carpenter</option>"
					+ "<option>Field of prey</option>"
					+ "<option>Bittersweet</option>"
					+ "<option>The one and only</option>"
					+ "<option>Walking on water</option>"
					+ "</select>"
		}
		else if (valueType == "Bike") {
			var div = document.getElementById('divTVName');
			div.innerHTML = "<div id=\"divTVName\" style=\"margin-left:28px;\">"
					+ "<br/>" + "<font>Please Select the Bike: </font>"
					+ "<select name=\"size\" id=\"size\" onchange=\"displayModel(this.value,'Bikes')\">"
					+ "<option value=-1>Select</option>"
					+ "<option>Prelude</option>"
					+ "<option>Midmoor</option>"
					+ "<option>Signature</option>"
					+ "<option>Nitrus</option>" 
					+ "<option>Pacific</option>"
					+ "<option>Regetta</option>"
					+ "<option>Panama</option>"
					+ "<option>Piano</option>"
					+ "<option>Ledge</option>"
					+ "<option>Rampage</option>"
					+ "</select>"
		}
					
	}
	
	
</script>
</head>

<body>

	<div id="wrapper">
		<div class="header">
			<div class="logo" style ="margin-left:60px;">
				<img src="../images/icon.png" alt="" />
			</div>
			 <div class="search"> <span class="searchText">Search<br />
      </span>
      <div class="searchButton" style ="margin-right:80px;">
        <input name="Search" type="text" class="ser_text"/>
        <input type="Submit" id="submitBtn" value="Go"
		style="margin-left: 1px; width: 30px; clear: both;" />
        </div>
			</div>
			
			<div class="clear"></div>
		</div>
			<div class="menuZone">
				<div class="menuleft">
					<div class="menuright">
						<div class="mainmenu">
							<ul>
								<li class="first"><a href="../index.html">Home</a></li>
								<li><a href="jspresults/catalog.jsp">Catalog</a></li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
				
				<div class="clear"></div>
			</div>
			<div id="mainContainer" style ="margin-left:340px;">
			<div class="primary2">
			
				<div class="greyDarkbar">
					<div class="greyLeftbar">
						<div class="greyRightbar">
							<h2>Welcome</h2>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
				<div>
					<div class="plazmamidbg">
						<div class="plazmatopbg">
							<div class="plazmabottombg" style="width: 626px;">
								<div>
									<div style="padding: 20px 15px 20px 15px;">
										<div class="ourprojectrow">


											<form name="form1" action="show-tv" method="post"
												style="float: left; padding-left: 10px;">
												
												<% String errorMsg =(String)request.getAttribute("errorMsg");
												if(errorMsg!=null){ %>
													<label><%= errorMsg %></label>
												<%}%>
												
												

												<h1>Shopping Catalog </h1>

												<div class="search"
													style="margin-left: 30px; padding-bottom: 10px;">
													<label>Select the Category:</label> 
													<select name="name" id="name" onchange="displaySize(this.value)" style="width: 135px;">
														<option selected>Select</option>
														<option>TV</option>
														<option>Refrigerator</option>
														<option>Book</option>
														<option>Bike</option>
																				
													</select>
													
		<br />	
		</div>
		<div id="divTVName" style="margin-left: 0px;"></div>
		<br />
    
		<input type="submit" id="submitBtn" value="SHOW DETAILS"
		style="margin-left: 35px; width: 135px; clear: both;" /> <br />
		<br /> <br />
		</form>
	</div>
	</div>
	<br />
									<div class="clear"></div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	<div class="clear"></div>
	<div class="clear"></div>
	<div class="menuZone">
				<div class="menuleft">
					<div class="menuright">
						<div class="mainmenu">
							
						</div>
					</div>
				</div>
			</div>
	
		
			</div>
		</div>
	
	</div>
	<div class="clear"></div>
</body>
</html>