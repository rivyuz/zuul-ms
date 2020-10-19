function getReviewsByEntity() {
	
	var url = $("#dto-form-zu").val();
	var uri = "/reviews-ms/reviews";
	var api = url + uri;
	
	$("#dto-form-entity-id").val($(this).attr("id"));
	$("#dto-form-entity-name").val($(this).find("span").attr("id"));
	
	$(".dto-form").attr('method', 'post');
	$(".dto-form").attr('action', api);
	$(".dto-form").submit();	

}

function getOtherReviewsByEntity(category, entityId, entityName) {
	
	//var url = $("#dto-form-review-url").val();
	var url = $("#dto-form-zu").val();
	var uri = "/reviews-ms/reviews";
	var api = url + uri;
	
	$("#dto-form-category").val(category);
	$("#dto-form-entity-id").val(entityId);
	$("#dto-form-entity-name").val(entityName);
	
	$(".dto-form").attr('method', 'post');
	$(".dto-form").attr('action', api);
	$(".dto-form").submit();	

}