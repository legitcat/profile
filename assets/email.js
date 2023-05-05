function validateemail(){	

        var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
        var email = document.getElementById("email").value.trim();

        //alert(email);

        if (email.match(validRegex)) {
            //alert('email good');
        } else {
             //document.form1.email.focus();
             document.getElementById("lblmsg").innerHTML ="Invalid email address";
             document.getElementById("email").focus();
             return false;
        }


        if (document.getElementById("email").value == ''){		
	    document.getElementById("lblmsg").innerHTML ="Enter email address";	
            document.getElementById("email").focus();	
	}
        else if (document.getElementById("comments").value == ''){		
	    document.getElementById("lblmsg").innerHTML ="Enter a message";	
            document.getElementById("comments").focus();		
	}
	else if (document.getElementById("robot").checked == false){		
	    document.getElementById("lblmsg").innerHTML ="Must check I'm not a robot checkbox";
	}		
	else {
	   sendEmail();
	}	

}	


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
		   message => document.getElementById("lblmsg").innerHTML ="Message sent, thank you",
		   document.getElementById("button1").disabled= true
               );
	}
