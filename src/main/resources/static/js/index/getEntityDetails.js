$('.entity').click(function (event) {

	$(this).parent().parent().hide();
	
	var catg = $(this).parent().attr('class');
	var splitArray = catg.split("_list");
	var category = splitArray[0];
	var entityId = $(this).attr("id");
	var entity = $(this).text();
	
	if(category == "Cats" || category == "OnlineStore" || category == "PackersAndMovers") {
		getOtherReviewsByEntity(category, entityId, entity);
		return;
	}

	var url = $("#dto-form-zu").val();
	var uri = "/entities-ms/entities/list/" +  category + "/" + entity;
	var api = url + uri;

	//ajax call
	$.ajax(
	{
		url: api,
		
		type: 'GET',
		
		data: {},
		
		success: function(result,status,xhr) {
					$('.right-side').detach();
					var commentsContainerDiv = document.createElement('div');
					$(commentsContainerDiv).addClass("right-side");
					
					for (var i = 0; i < result.length; i++) {
						
						$("#dto-form-category").val(result[i].indxCatg);
						
						//..................................................................create div tag - "box-comment text-left box-comment-boxed"
						var divTag_one = document.createElement('div');
						$(divTag_one).addClass("box-comment");
						$(divTag_one).addClass("text-left");
						$(divTag_one).addClass("box-comment-boxed");
						$(divTag_one).attr("id", result[i].id);
						
						//..................................................................create div tag - "media"
						var divTag_two = document.createElement('div');
						$(divTag_two).addClass("media");
						
						//..................................................................create div tag - "media-left"
						var divTag_three = document.createElement('div');
						$(divTag_three).addClass("media-left");
						
						//..................................................................create div tag - "image"
						var divTag_four = document.createElement('div');
						$(divTag_four).addClass(result[i].spriteName);
						$(divTag_four).addClass(result[i].spriteImage);
						$(divTag_four).addClass("entity-image");
						
						//..................................................................create div tag - "media-body"
						var divTag_five = document.createElement('div');
						$(divTag_five).addClass("media-body");
						
						//..................................................................create header tag
						var header_tag = document.createElement('header');
						$(header_tag).addClass("box-comment-header");
						$(header_tag).addClass("unit");
						$(header_tag).addClass("unit-vertical");
						$(header_tag).addClass("unit-spacing-xxs");
						$(header_tag).addClass("unit-md");
						$(header_tag).addClass("unit-md-horizontal");
						$(header_tag).addClass("unit-md-inverse");
						$(header_tag).addClass("unit-md-middle");
						$(header_tag).addClass("unit-md-align-right");
						
						//..................................................................create div tag - "unit-body"
						var divTag_six = document.createElement('div');
						$(divTag_six).addClass("unit-body");
						
						if(category == "camera") {
							
							if(i == 0) {
								//..................................................................create pTag - brand
								var pTag = document.createElement('p');
								$(pTag).addClass("entity_name");
								$(pTag).addClass("format-class");
								var content = result[i].brand;
								$(pTag).text(content);
								
								$(commentsContainerDiv).append(pTag);
								
							}
							
							//..................................................................create spanTag_2 - name
							var spanTag_2 = document.createElement('span');
							$(spanTag_2).addClass("entity_name");
							var content = result[i].name;
							$(spanTag_2).attr("id", content);
							$(spanTag_2).text(content);
							
							//..................................................................create brTag_2
							var brTag_2 = document.createElement('br');
							$(spanTag_2).append(brTag_2);
							
							//..................................................................create spanTag_3 - category
							var spanTag_3 = document.createElement('span');
							$(spanTag_3).addClass("entity_name");
							var content = result[i].category;
							if(content == "digital_cameras") {
								content = "Digital Camera"
							} else if (content == "digital_slr") {
								content = "Digital SLR"
							}
							$(spanTag_3).text(content);
							
							//..................................................................create brTag_2
							var brTag_3 = document.createElement('br');
							$(spanTag_3).append(brTag_3);
							
							//..................................................................create spanTag_4 - specification
							var spanTag_4 = document.createElement('span');
							$(spanTag_4).addClass("entity_name");
							var content = result[i].specification;
							$(spanTag_4).text(content);
							
							//..................................................................create brTag_4
							var brTag_4 = document.createElement('br');
							$(spanTag_4).append(brTag_4);
							
							$(divTag_six).append(spanTag_1);
							$(divTag_six).append(spanTag_2);
							$(divTag_six).append(spanTag_3);
							$(divTag_six).append(spanTag_4);
				
						}
						
						if(category == "car") {
							
							if(i == 0) {
								//..................................................................create pTag - brand
								var pTag = document.createElement('p');
								$(pTag).addClass("entity_name");
								$(pTag).addClass("format-class");
								var content = result[i].mfgName;
								$(pTag).text(content);
								$(commentsContainerDiv).append(pTag);
							}
							
							//..................................................................create spanTag_2
							var spanTag_2 = document.createElement('span');
							$(spanTag_2).addClass("entity_name");
							var content = result[i].name;
							$(spanTag_2).attr("id", content);
							$(spanTag_2).text(content);
							
							//..................................................................create brTag_2
							var brTag_2 = document.createElement('br');
							$(spanTag_2).append(brTag_2);
							
							//..................................................................create spanTag_3
							var spanTag_3 = document.createElement('span');
							$(spanTag_3).addClass("entity_name");
							var content = result[i].category;
							$(spanTag_3).text(content);
							
							//..................................................................create brTag_3
							var brTag_3 = document.createElement('br');
							$(spanTag_3).append(brTag_3);
							
							//..................................................................create spanTag_4
							var spanTag_4 = document.createElement('span');
							$(spanTag_4).addClass("entity_name");
							var content = result[i].fuelType;
							$(spanTag_4).text(content);
							
							//..................................................................create brTag_4
							var brTag_4 = document.createElement('br');
							$(spanTag_4).append(brTag_4);
							
							$(divTag_six).append(spanTag_1);
							$(divTag_six).append(spanTag_2);
							$(divTag_six).append(spanTag_3);
							$(divTag_six).append(spanTag_4);
					
						}			
						
						if(category == "dog") {
							
							if(i == 0) {
								//..................................................................create pTag - brand
								var pTag = document.createElement('p');
								$(pTag).addClass("entity_name");
								$(pTag).addClass("format-class");
								var content = result[i].category;
								$(pTag).text(content);
								$(commentsContainerDiv).append(pTag);
							}
							
							//..................................................................create spanTag_1 - name
							var spanTag_1 = document.createElement('span');
							$(spanTag_1).addClass("entity_name");
							var content = result[i].name;
							$(spanTag_1).attr("id", content);
							$(spanTag_1).text(content);
							
							//..................................................................create brTag_1
							var brTag_1 = document.createElement('br');
							$(spanTag_1).append(brTag_1);
							
							//..................................................................create spanTag_3
							var spanTag_3 = document.createElement('span');
							$(spanTag_3).addClass("entity_name");
							var content = result[i].family;
							$(spanTag_3).text("Family: " + content);
							
							//..................................................................create brTag_3
							var brTag_3 = document.createElement('br');
							$(spanTag_3).append(brTag_3);
							
							//..................................................................create spanTag_4
							var spanTag_4 = document.createElement('span');
							$(spanTag_4).addClass("entity_name");
							var content = result[i].areaOfOrigin;
							$(spanTag_4).text("Area of Origin: " + content);
							
							//..................................................................create brTag_4
							var brTag_4 = document.createElement('br');
							$(spanTag_4).append(brTag_4);

							$(divTag_six).append(spanTag_1);
							$(divTag_six).append(spanTag_2);
							$(divTag_six).append(spanTag_3);
							$(divTag_six).append(spanTag_4);
					
						}
						
						if(category == "fitness_center" || category == "night_life" || category == "restaurant" || category == "spa_center" || category == "tattoo_parlor") {
							
							var title;

							if(category == "fitness_center") {
							title = "Fitness Centers in ";
							}
							else if(category == "night_life") {
							title = "Night Life in ";
							}
							else if(category == "restaurant") {
							title = "Restaurants in ";
							}
							else if(category == "spa_center") {
							title = "Spa Centers in ";
							}
							else if(category == "tattoo_parlor") {
							title = "Tattoo Parlors in ";
							}				
							
							if(i == 0) {
								//..................................................................create pTag - brand
								var pTag = document.createElement('p');
								$(pTag).addClass("entity_name");
								$(pTag).addClass("format-class");
								var content = result[i].cityName;
								$(pTag).text(title + content);
								$(commentsContainerDiv).append(pTag);
							}
							
							//..................................................................create spanTag_1
							var spanTag_1 = document.createElement('span');
							$(spanTag_1).addClass("entity_name");
							var content = result[i].name;
							$(spanTag_1).attr("id", content);
							$(spanTag_1).text(content);
							
							//..................................................................create brTag_1
							var brTag_1 = document.createElement('br');
							$(spanTag_1).append(brTag_1);
							
							//..................................................................create spanTag_2
							var spanTag_2 = document.createElement('span');
							$(spanTag_2).addClass("entity_name");
							var content = result[i].address1;
							$(spanTag_2).text(content);
							
							//..................................................................create brTag_2
							var brTag_2 = document.createElement('br');
							$(spanTag_2).append(brTag_2);
							
							if(result[i].address2 != "") {
								//..................................................................create spanTag_3
								var spanTag_3 = document.createElement('span');
								$(spanTag_3).addClass("entity_name");
								var content = result[i].address2;
								$(spanTag_3).text(content);
								
								//..................................................................create brTag_3
								var brTag_3 = document.createElement('br');
								$(spanTag_3).append(brTag_3);				
							}				
							
							//..................................................................create spanTag_4
							var spanTag_4 = document.createElement('span');
							$(spanTag_4).addClass("entity_name");
							var content = result[i].cityName;
							$(spanTag_4).text(content);
							
							//..................................................................create spanTag_5
							var spanTag_5 = document.createElement('span');
							$(spanTag_5).addClass("entity_name");
							var content = result[i].pinCode;
							$(spanTag_5).text(content);
							
							//..................................................................create brTag_5
							var brTag_5 = document.createElement('br');
							$(spanTag_5).append(brTag_5);
							
							$(divTag_six).append(spanTag_1);
							$(divTag_six).append(spanTag_2);
							$(divTag_six).append(spanTag_3);
							$(divTag_six).append(spanTag_4);
							$(divTag_six).append(spanTag_5);
					
						}
						
						if(category == "fragrance") {
							//..................................................................create spanTag_1 - brand
							var spanTag_1 = document.createElement('span');
							$(spanTag_1).addClass("entity_name");
							var content = result[i].brand;
							$(spanTag_1).attr("id", result[i].name);
							$(spanTag_1).text(content);
							
							//..................................................................create brTag_1
							var brTag_1 = document.createElement('br');
							$(spanTag_1).append(brTag_1);
							
							//..................................................................create spanTag_2 - name
							var spanTag_2 = document.createElement('span');
							$(spanTag_2).addClass("entity_name");
							var content = result[i].name;
							$(spanTag_2).text(content);
							
							//..................................................................create brTag_2
							var brTag_2 = document.createElement('br');
							$(spanTag_2).append(brTag_2);
							
							if(result[i].edition != "") {
								//..................................................................create spanTag_3 - edition
								var spanTag_3 = document.createElement('span');
								$(spanTag_3).addClass("entity_name");
								var content = result[i].edition;
								$(spanTag_3).text(content);
								
								//..................................................................create brTag_3
								var brTag_3 = document.createElement('br');
								$(spanTag_3).append(brTag_3);					
							}
							
							//..................................................................create spanTag_4 - type
							var spanTag_4 = document.createElement('span');
							$(spanTag_4).addClass("entity_name");
							var content = result[i].type;
							$(spanTag_4).text(content);
							
							//..................................................................create brTag_4
							var brTag_4 = document.createElement('br');
							$(spanTag_4).append(brTag_4);
							
							//..................................................................create spanTag_6 - category
							var spanTag_6 = document.createElement('span');
							$(spanTag_6).addClass("entity_name");
							var content = result[i].category;
							$(spanTag_6).text(content);
							
							//..................................................................create brTag_6
							var brTag_6 = document.createElement('br');
							$(spanTag_6).append(brTag_6);
							
							$(divTag_six).append(spanTag_1);
							$(divTag_six).append(spanTag_2);
							$(divTag_six).append(spanTag_3);
							$(divTag_six).append(spanTag_4);
							$(divTag_six).append(spanTag_6);
						
						}
						
						if(category == "motor_cycle" || category == "scooter") {
							
							if(i == 0) {
								//..................................................................create pTag - brand
								var pTag = document.createElement('p');
								$(pTag).addClass("entity_name");
								$(pTag).addClass("format-class");
								var content = result[i].mfgName;
								$(pTag).text(content);
								$(commentsContainerDiv).append(pTag);
							}
							
							//..................................................................create spanTag_1
							var spanTag_1 = document.createElement('span');
							$(spanTag_1).addClass("entity_name");
							var content = result[i].name;
							$(spanTag_1).attr("id", content);
							$(spanTag_1).text(content);
							
							//..................................................................create brTag_1
							var brTag_1 = document.createElement('br');
							$(spanTag_1).append(brTag_1);
							
							$(divTag_six).append(spanTag_1);
							
							//--------hidden variable for comment id----------------------//
							var idAttr = "entityId_" + result[i].id;
							var hiddenInputTag_commentId = document.createElement('input');
							hiddenInputTag_commentId.setAttribute("type", "hidden");
							hiddenInputTag_commentId.setAttribute("id", idAttr);
							hiddenInputTag_commentId.setAttribute("name", idAttr);
							hiddenInputTag_commentId.setAttribute("value", result[i].id);
							$(divTag_one).append(hiddenInputTag_commentId);				
						}
						
						if(category == "movie") {
							
							if(i == 0) {
								//..................................................................create pTag - brand
								var pTag = document.createElement('p');
								$(pTag).addClass("entity_name");
								$(pTag).addClass("format-class");
								var content = result[i].language;
								
								if(content == "Chinese" || content == "Japanese" || content == "Korean") {
									content = "Other Language";
								}
								
								$(pTag).text(content + " Movies");
								$(commentsContainerDiv).append(pTag);
							}
							
							//..................................................................create spanTag_1 - movieName
							var spanTag_1 = document.createElement('span');
							$(spanTag_1).addClass("entity_name");
							var content = result[i].movieName;
							$(spanTag_1).attr("id", content);
							$(spanTag_1).text(content);
							
							//..................................................................create brTag_1
							var brTag_1 = document.createElement('br');
							$(spanTag_1).append(brTag_1);
							
							//..................................................................create spanTag_2 - director
							var spanTag_2 = document.createElement('span');
							$(spanTag_2).addClass("entity_name");
							var content = result[i].director;
							$(spanTag_2).text("Director: " + content);
							
							//..................................................................create brTag_2
							var brTag_2 = document.createElement('br');
							$(spanTag_2).append(brTag_2);
							
							//..................................................................create spanTag_3 - cast
							var spanTag_3 = document.createElement('span');
							$(spanTag_3).addClass("entity_name");
							var content = result[i].cast;
							$(spanTag_3).text("Cast: " + content);
							
							//..................................................................create brTag_3
							var brTag_3 = document.createElement('br');
							$(spanTag_3).append(brTag_3);
							
							if(result[i].genre != "") {
								//..................................................................create spanTag_4 - genre
								var spanTag_4 = document.createElement('span');
								$(spanTag_4).addClass("entity_name");
								var content = result[i].genre;
								$(spanTag_4).text(content);
								
								//..................................................................create brTag_4
								var brTag_4 = document.createElement('br');
								$(spanTag_4).append(brTag_4);				
							}				
							
							if(result[i].language == "Chinese" || result[i].language == "Japanese" || result[i].language == "Korean") {
								//..................................................................create spanTag_5 - language
								var spanTag_5 = document.createElement('span');
								$(spanTag_5).addClass("entity_name");
								var content = result[i].language;
								$(spanTag_5).text(content);
								
								//..................................................................create brTag_5
								var brTag_5 = document.createElement('br');
								$(spanTag_5).append(brTag_5);
							}
							
							//..................................................................create spanTag_6 - year
							var spanTag_6 = document.createElement('span');
							$(spanTag_6).addClass("entity_name");
							var content = result[i].year;
							$(spanTag_6).text("Year: " + content);
							
							//..................................................................create brTag_6
							var brTag_6 = document.createElement('br');
							$(spanTag_6).append(brTag_6);
							
							$(divTag_six).append(spanTag_1);
							$(divTag_six).append(spanTag_2);
							$(divTag_six).append(spanTag_3);
							$(divTag_six).append(spanTag_4);
							if(result[i].language == "Chinese" || result[i].language == "Japanese" || result[i].language == "Korean") {
								$(divTag_six).append(spanTag_5);
							}
							$(divTag_six).append(spanTag_6);
					
						}
						
						
						
						if(category == "salon") {
							
							if(i == 0) {
								//..................................................................create pTag - brand
								var pTag = document.createElement('p');
								$(pTag).addClass("entity_name");
								$(pTag).addClass("format-class");
								var content = result[i].cityName;
								$(pTag).text("Salons in " + content);
								$(commentsContainerDiv).append(pTag);
							}
							
							//..................................................................create spanTag_1
							var spanTag_1 = document.createElement('span');
							$(spanTag_1).addClass("entity_name");
							var content = result[i].name;
							$(spanTag_1).attr("id", content);
							$(spanTag_1).text(content);
							
							//..................................................................create brTag_1
							var brTag_1 = document.createElement('br');
							$(spanTag_1).append(brTag_1);
							
							//..................................................................create spanTag_2
							var spanTag_2 = document.createElement('span');
							$(spanTag_2).addClass("entity_name");
							var content = result[i].address1;
							$(spanTag_2).text(content);
							
							//..................................................................create brTag_2
							var brTag_2 = document.createElement('br');
							$(spanTag_2).append(brTag_2);
							
							//..................................................................create spanTag_3
							var spanTag_3 = document.createElement('span');
							$(spanTag_3).addClass("entity_name");
							var content = result[i].address2;
							$(spanTag_3).text(content);
							
							//..................................................................create brTag_3
							var brTag_3 = document.createElement('br');
							$(spanTag_3).append(brTag_3);
							
							//..................................................................create spanTag_4
							var spanTag_4 = document.createElement('span');
							$(spanTag_4).addClass("entity_name");
							var content = result[i].cityName;
							$(spanTag_4).text(content);
							
							//..................................................................create spanTag_5
							var spanTag_5 = document.createElement('span');
							$(spanTag_5).addClass("entity_name");
							var content = result[i].pinCode;
							$(spanTag_5).text(content);
							
							//..................................................................create brTag_5
							var brTag_5 = document.createElement('br');
							$(spanTag_5).append(brTag_5);
							
							//..................................................................create spanTag_6
							var spanTag_6 = document.createElement('span');
							$(spanTag_6).addClass("entity_name");
							var content = result[i].brand;
							$(spanTag_6).text(content);
							
							//..................................................................create brTag_6
							var brTag_6 = document.createElement('br');
							$(spanTag_6).append(brTag_6);
							
							//..................................................................create spanTag_7
							var spanTag_7 = document.createElement('span');
							$(spanTag_7).addClass("entity_name");
							var content = result[i].type;
							$(spanTag_7).text(content);
							
							//..................................................................create brTag_7
							var brTag_7 = document.createElement('br');
							$(spanTag_7).append(brTag_7);
							
							if(result[i].category != "NULL") {
								//..................................................................create spanTag_8
								var spanTag_8 = document.createElement('span');
								$(spanTag_8).addClass("entity_name");
								var content = result[i].category;
								$(spanTag_8).text(content);
								
								//..................................................................create brTag_8
								var brTag_8 = document.createElement('br');
								$(spanTag_8).append(brTag_8);			
							}				

							
							$(divTag_six).append(spanTag_1);
							$(divTag_six).append(spanTag_2);
							$(divTag_six).append(spanTag_3);
							$(divTag_six).append(spanTag_4);
							$(divTag_six).append(spanTag_5);
							$(divTag_six).append(spanTag_6);
							$(divTag_six).append(spanTag_7);
							$(divTag_six).append(spanTag_8);
					
						}
						
						//..................................................................create span tag - "spanTag_badge"
						var spanTag_badge = document.createElement('span');
						$(spanTag_badge).addClass("revBadge");
						var content = result[i].counter;
						$(spanTag_badge).text(content);				
						$(divTag_six).append(spanTag_badge);
						
						$(header_tag).append(divTag_six);
						$(divTag_five).append(header_tag);
						
						$(divTag_three).append(divTag_four);
						
						$(divTag_two).append(divTag_three);
						$(divTag_two).append(divTag_five);
						
						$(divTag_one).append(divTag_two);
						$( divTag_one ).on( "click", getReviewsByEntity );//.................................................................bind getReviewsByEntity() method
						$(commentsContainerDiv).append(divTag_one);
						
						//..................................................................create brTag_10
						var brTag = document.createElement('br');
						$(commentsContainerDiv).append(brTag);				
						
						console.log(result[i].brand);
					}
					
					$(".page-article").append(commentsContainerDiv);
					
				 }, //success callback ends
		
		
		error: function(xhr,status,error) {
					console.log(xhr.status + " " + xhr.statusText);
			   } //error callback ends

	} //ajax method ends
	); //ajax ends
	
	removeMasks();

}); /*$('.entity').click ends*/