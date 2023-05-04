	function sendEmail() {

               var email = document.getElementById("email").value; //sender email
               var message = document.getElementById("comments").value;
               var comments = 'From :' + email + "<br/> Message : <br/>" + message + "<br/><br/>Email via smtpjs.com SSL.<br/><a href='{accountaddress}'>Account Address</a><br/><a href='{unsubscribe}'>Unsubscribe</a>";
               var myemail = 'paulvalladares@gmail.com';
               //alert(email + " ' " + comments);

               Email.send({
                   SecureToken : "f94ca249-c7a4-48d0-b1e8-034d31478300", // token from Elastic site
                   To : myemail,
                   From : myemail, // registered @ Elastic server
                   Subject : "Email from " + email,
 	           Body : comments,
               }).then(
                   message => alert("Email test via smtpjs.com SSL ok")
               );
	}
