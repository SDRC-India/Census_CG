var sdrc_export = new function() {
	"use strict"
	this.root = "http://localhost/";
	this.init = function(rootUri) {
		this.root = rootUri;
		console.log("in init");
	};

	// Please give container Id and export pdf btn ids
	this.export_pdf = function(containerId, exportPdfbtn) {
		$("#" + exportPdfbtn)
				.on("click",function(event) {
							event.preventDefault();
							
						$('#pdfDownloadBtn').html('<i class="fa fa-lg fa-download"></i> PDF <img src="resources/images/preloader.gif" />');
							
						var areaName = $("#area").val();
						var childLevel = $("#childLevel").val();
						console.log(areaName);
						if(childLevel=="5" && !(areaName == "teh149shp"))
						{
							d3.selectAll("svg").attr("version", 1.1).attr("xmlns", "http://www.w3.org/2000/svg");
							
							d3.select("#mapsvg").selectAll("path").attr("style",function(d) {
								return  "fill:"+ $(this).css('fill')+";stroke:"+$(this).css('stroke');
							});
							var samikshaMapg = "";
							samikshaMapg = $("samiksha-map").html();
							//remove style
							d3.select("#mapsvg").selectAll("path").attr('style', null);
			
							$.ajax({
								url:"exportImage",
								type:'POST',
								data : {infoMap : samikshaMapg},
								success : function(data){
							    $("#imgPath").val(data);
							    var topBottomContainer = $("#tbsection");
								var legendContainer = $("#legendsection");
								html2canvas(topBottomContainer,
										{
											allowTaint : true,
											taintTest : false,
											logging : true,
											onrendered : function(canvas) {
												var serverUrl = sdrc_export.root+ "/exportToPdf";
												
												$("#imageTopBottomBase64").val(canvas.toDataURL("image/png"));
												
												html2canvas(
														legendContainer,
														{
															useCORS : true,
															allowTaint : false,
															taintTest : false,
															logging : true,
															onrendered : function(canvas) {
																var serverUrl = sdrc_export.root+ "/exportToPdf";

																$("#imageLegendBase64").val(canvas.toDataURL("image/png"));
																
//																$("#exportForm").attr("action",serverUrl).submit();
																
																$.ajax({
																	url:"exportToPdf",
																	method:'POST',
																	data:{
																		"imageTopBottomBase64":$("#imageTopBottomBase64").val(),
																			"imageLegendBase64":$("#imageLegendBase64").val() ,
																			 "imgPath" : $("#imgPath").val() , 
																	  
																	 "areaId"  : $("#areaId").val() , 
																	 "indicatorId": $("#indicatorId").val() , 
																	 "timePeriodId" : $("#timePeriodId").val() , 
																	 "sourceId" : $("#sourceId").val() ,  
																	 "childLevel" : $("#childLevel").val() , 
																	 "area" :  $("#area").val() , 
																	 "indicator" : $("#indicator").val() , 
																	 "timePeriod" : $("#timePeriod").val() , 
																	 "source" : $("#source").val() , 
																	 "sectorId"  : $("#sectorId").val() , 
																	 "secondTimeperiodId"  : '' , 
																	 "secondTimeperiod" : '',
																	 "sectorName"  : $("#sectorName").val() , 
																	 "subSectorName" :'' , 
																	 "subSectorKey" :  '' , 
																	 "granularitySpiderKey" :  '' , 
																	 "granularitySpiderValue" : ''
																	 },
																	 success:function(result){
																		var data = {"fileName" :result};
																		
//																		$.ajax({
//																			url:"downloadPDF",
//																			method:'post',
//																			data:{"fileName" : data} ,
//																			success:function(result){
//																				var serverData = result;
//																			}
//																		});
																		$.download("downloadPDF",data,'POST');
																		$('#pdfDownloadBtn').html('<i class="fa fa-lg fa-download"></i> PDF ');
																  	}// end
																		// of
																		// success
																});
															}
														});
												
											}
//										});
//							  	}//end of success
							});
								},
								error : function(d){
									console.log(d);
								}
							
						});}else
//							if(areaName == 'India_Composite_Map' || areaName == 'dis27shp' 
//								|| areaName == 'Agri-Climatic_Boundary' || areaName == 'Division_Boundaries' || areaName == 'teh149shp')
							{
								var imgJSON=[];
								d3.select("#mapsvg")
								.selectAll("path")
								.attr("style",function(d) {
									var node={};
									node['d'] = $(this).attr('d');
									node['fill'] = $(this).css('fill');
									node['stroke'] = $(this).css('stroke');
									imgJSON.push(node);
								});
								
								$.ajax({
									url:"exportImage1",
									method:'POST',
									data:JSON.stringify(imgJSON),
									contentType : 'application/json',
									success:function(result){
								    console.log(result);
								    $("#imgPath").val(result);
								    var topBottomContainer = $("#tbsection");
									var legendContainer = $("#legendsection");
									html2canvas(topBottomContainer,
											{
												allowTaint : true,
												taintTest : false,
												logging : true,
												onrendered : function(canvas) {
													var serverUrl = sdrc_export.root+ "/exportToPdf";
													
													$("#imageTopBottomBase64").val(canvas.toDataURL("image/png"));
													
													html2canvas(
															legendContainer,
															{
																useCORS : true,
																allowTaint : false,
																taintTest : false,
																logging : true,
																onrendered : function(canvas) {
																	var serverUrl = sdrc_export.root+ "/exportToPdf";

																	$("#imageLegendBase64").val(canvas.toDataURL("image/png"));
																	
//																	$("#exportForm").attr("action",serverUrl).submit();
																	$.ajax({
																		url:"exportToPdf",
																		method:'POST',
																		data:{
																			"imageTopBottomBase64":$("#imageTopBottomBase64").val(),
																				"imageLegendBase64":$("#imageLegendBase64").val() ,
																				 "imgPath" : $("#imgPath").val() , 
																		  
																		 "areaId"  : $("#areaId").val() , 
																		 "indicatorId": $("#indicatorId").val() , 
																		 "timePeriodId" : $("#timePeriodId").val() , 
																		 "sourceId" : $("#sourceId").val() ,  
																		 "childLevel" : $("#childLevel").val() , 
																		 "area" :  $("#area").val() , 
																		 "indicator" : $("#indicator").val() , 
																		 "timePeriod" : $("#timePeriod").val() , 
																		 "source" : $("#source").val() , 
																		 "sectorId"  : $("#sectorId").val() , 
																		 "secondTimeperiodId"  : '' , 
																		 "secondTimeperiod" : '',
																		 "sectorName"  : $("#sectorName").val() , 
																		 "subSectorName" :'' , 
																		 "subSectorKey" :  '' , 
																		 "granularitySpiderKey" :  '' , 
																		 "granularitySpiderValue" : ''
																		 },
																		 success:function(result){
																			var data = {"fileName" :result};
																			
//																			$.ajax({
//																				url:"downloadPDF",
//																				method:'post',
//																				data:{"fileName" : data} ,
//																				success:function(result){
//																					var serverData = result;
//																				}
//																			});
																			$.download("downloadPDF",data,'POST');
																			$('#pdfDownloadBtn').html('<i class="fa fa-lg fa-download"></i> PDF ');
																	  	}// end
																			// of
																			// success
																	});
																	
																}
															});
													
												}
											});
								  	}//end of success
								});
							}
							
				});
	};

	this.export_excel = function() {
		alert("excel exported");
	};
	
	//download the svg to txt
	/*(function () {
		var textFile = null,
		  makeTextFile = function (text) {
		    var data = new Blob([text], {type: 'text/plain'});

		    // If we are replacing a previously generated file we need to
		    // manually revoke the object URL to avoid memory leaks.
		    if (textFile !== null) {
		      window.URL.revokeObjectURL(textFile);
		    }

		    textFile = window.URL.createObjectURL(data);

		    return textFile;
		  };
		  var create = document.getElementById('create');

		  create.addEventListener('click', function () {
		    var link = document.getElementById('downloadlink');
//		    var create = document.getElementById('create'),
		    var textbox = $("samiksha-map").html();
		    link.href = makeTextFile(textbox);
		    link.style.display = 'block';
		  }, false);
		})();*/

};