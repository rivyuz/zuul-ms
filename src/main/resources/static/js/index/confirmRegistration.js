function getUrlVars()
{
	var plainText;
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        plainText = decryptQs(hash[0]);
    }

    return plainText;
}

function checkIfConfirmation() {

	var qs = getUrlVars();
	
	if(qs != "" && qs.startsWith("job=confirm")) {
		var splitArray = qs.split("&");
		
		var jobArray = splitArray[0].split("=");
		var job = jobArray[1];
		
		var codeArray = splitArray[1].split("=");
		var code = codeArray[1];	
		
		var emailArray = splitArray[2].split("=");
		var email = emailArray[1];
		
		if(job == "confirm") {
			var splitEmail = email.split("XXXXXxxxxXXXX");
			var replyEmail = splitEmail[0] + "@" + splitEmail[1];
			
			addConfirmationMask("Please wait", true);
			
			var url = $("#dto-form-zu").val();
			var uri = "/users-ms/user/confirmRegistration";
			var api = url + uri;

			//ajax call
			$.ajax(
			{
				url: api,
				
				type: 'POST',
				
				data: { code: code },
				
				success: function(result, status, xhr) {
					
							
							$("#dto-form-j").val(xhr.getResponseHeader("j"));
							
							var registrationConfirmed = result.response;
							if(registrationConfirmed == "true") {
								actionPerformingAlert.render('Registration', 'Confirmed', 'confirmationSuccess');
							}
							if(registrationConfirmed == "false") {
								actionPerformingAlert.render('We are sorry', 'There seems to be a problem', 'confirmationError');
							}			 
						 }, //success callback ends
				
				
				error: function(result, status, xhr) {
							console.log(result.status + " " + result.statusText);
					   } //error callback ends

			} //ajax method ends
			); //ajax ends		
		}		
	}

} /*confirmReg() ends*/