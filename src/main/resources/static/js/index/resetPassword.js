function resetPassword() {
	
	var	emailId  = $(".reset-password-email").val();
	var	oneTimePassword = $(".reset-password-one-time-password").val();
	var newPassword = $(".reset-password-new-password").val();
	
	var validationResult = validateFieldsInResetPasswordDialog(oneTimePassword, newPassword);
	
	if (validationResult == true) {
	}
	else {
		return;
	}
	
	//addHardMask("Please wait", true);
	
	emailId = encryptQs(emailId);
	oneTimePassword = encryptQs(oneTimePassword);
	newPassword = encryptQs(newPassword);	
	
	var url = $("#dto-form-zu").val();
	var uri = "/users-ms/user/resetpassword";
	var api = url + uri;

	//ajax call
	$.ajax(
	{
		url: api,
		
		type: 'POST',
		
		data: { forward: emailId, reverse: oneTimePassword, idle: newPassword },
		
		success: function(result, status, xhr) {
			
					
					$("#dto-form-j").val(xhr.getResponseHeader("j"));
					
					var resetPasswordResult = result.response;

					if(resetPasswordResult == "reset error") {
						$('.progress-indicator').hide();
						actionPerformingAlert.render('We are sorry', 'Your one-time password expired', 'reset error');
					}
					if(resetPasswordResult == "invalid temp password") {
						$('.progress-indicator').hide();
						actionPerformingAlert.render('We are sorry', 'Invalid one-time password', 'invalid temp password');
					}
					if(resetPasswordResult == "reset successful") {
						$(".reset-password-dialog").hide();
						actionPerformingAlert.render('Reset successful', 'Have a great time', 'reset successful');
					}
				 }, //success callback ends
		
		
		error: function(result, status, xhr) {
					console.log(result.status + " " + result.statusText);
			   } //error callback ends

	} //ajax method ends
	); //ajax ends	
	
} /*resetPassword() ends*/