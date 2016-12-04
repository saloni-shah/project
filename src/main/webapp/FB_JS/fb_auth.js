/**
 * 
 */

//  current status of user as 
		function statusChangeCallback(response) {
   		 	console.log('statusChangeCallback');
    	 	console.log(response);
    	 	if(response.status === 'connected'){
    	 		testAPI();
    	 		}else if(response.status === 'not_authorised' ){
    	 			document.getElementById('status').innerHTML= 'please login via login @ invitar'
    	 		}else {
    	 			document.getElementById('status').innerHTML ='please login via Facebook'
    	 		}
    	 	}
    	 	
		function checkLoginState() {
		    FB.getLoginStatus(function(response) {
		      statusChangeCallback(response);
		    });
		  }

/* 		appId      : '{1762098997448509}',
	    app_secret : '{884004fae255655a82d4345577397593}', */
		  window.fbAsyncInit = function() {
		  FB.init({
			//  app id register @ facebook app login
		    appId      : '{152190004803645}',
		    app_secret : '{64c94bd02180b0ade85889b44b2ba7c4}',
//		    			
		    cookie     : true,                        
		    xfbml      : true, 
		    version    : 'v2.8' // graph api version 2.8
		  });
		  
		  FB.getLoginStatus(function(response) {
			    statusChangeCallback(response);
			  });


			  };
		  // Loading SDK
		  (function(doc, scr, id) {
    var js, fjs = doc.getElementsByTagName(scr)[0];
    if (doc.getElementById(id)) return;
    js = doc.createElement(scr); 
    js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));


  //  Graph API after login is successful
  
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
  }
  FB.login(function(response) {
	    if (response.authResponse) {
	     console.log('Welcome!  Fetching your information.... ');
	     FB.api('/me', function(response) {
	       console.log('Good to see you, ' + response.name + '.');
	     });
	    } else {
	     console.log('User cancelled login or did not fully authorize.');
	    }
	});
  FB.login(function(response) {
	    // handle the response
	}, {
	    scope: 'id,name,namespace,contactEmail,websiteUrl', 
	    return_scopes: true
	});
  // access token from browser 
  FB.getLoginStatus(function(response){
	  if(response.status ==='connected'){
		  console.log(response.authResponse.accessToken);
	  }
  });
  // call api which will return requested data(user_id,name,email)
  FB.api('/me', function(response) {
	    console.log(JSON.stringify(response));
	});
  // logout from 
  /* FB.logout(function(response) {
	   // Person is now logged out
	}); */
	
  
//  
//  <script type ="text/javascript">
////current status of user as 
//		function statusChangeCallback(response) {
// 		 	console.log('statusChangeCallback');
//  	 	console.log(response);
//  	 	if(response.status === 'connected'){
//  	 		testAPI();
//  	 		}else if(response.status === 'not_authorised' ){
//  	 			document.getElementById('status').innerHTML= 'please login via login @ invitar'
//  	 		}else {
//  	 			document.getElementById('status').innerHTML ='please login via Facebook'
//  	 		}
//  	 	}
//  	 	
//		function checkLoginState() {
//		    FB.getLoginStatus(function(response) {
//		      statusChangeCallback(response);
//		    });
//		  }
//
///* 		appId      : '{1762098997448509}',
//	    app_secret : '{884004fae255655a82d4345577397593}', */
//		  window.fbAsyncInit = function() {
//		  FB.init({
//			//  app id register @ facebook app login
//		    appId      : '{152190004803645}',
//		    app_secret : '{64c94bd02180b0ade85889b44b2ba7c4}',
//		    cookie     : true,                        
//		    xfbml      : true, 
//		    version    : 'v2.8' // graph api version 2.8
//		  });
//		  
//		  FB.getLoginStatus(function(response) {
//			    statusChangeCallback(response);
//			  });
//
//
//			  };
//		  // Loading SDK
//		  (function(doc, scr, id) {
//  var js, fjs = doc.getElementsByTagName(scr)[0];
//  if (doc.getElementById(id)) return;
//  js = doc.createElement(scr); 
//  js.id = id;
//  js.src = "//connect.facebook.net/en_US/sdk.js";
//  fjs.parentNode.insertBefore(js, fjs);
//}(document, 'script', 'facebook-jssdk'));
//
//
////  Graph API after login is successful
//
//function testAPI() {
//  console.log('Welcome!  Fetching your information.... ');
//  FB.api('/me', function(response) {
//    console.log('Successful login for: ' + response.name);
//    document.getElementById('status').innerHTML =
//      'Thanks for logging in, ' + response.name + '!';
//  });
//}
//FB.login(function(response) {
//	    if (response.authResponse) {
//	     console.log('Welcome!  Fetching your information.... ');
//	     FB.api('/me', function(response) {
//	       console.log('Good to see you, ' + response.name + '.');
//	     });
//	    } else {
//	     console.log('User cancelled login or did not fully authorize.');
//	    }
//	});
//FB.login(function(response) {
//	    // handle the response
//	}, {
//	    scope: 'id,name,namespace,contactEmail,websiteUrl', 
//	    return_scopes: true
//	});
//// access token from browser 
//FB.getLoginStatus(function(response){
//	  if(response.status ==='connected'){
//		  console.log(response.authResponse.accessToken);
//	  }
//});
//// call api which will return requested data(user_id,name,email)
//FB.api('/me', function(response) {
//	    console.log(JSON.stringify(response));
//	});
//// logout from 
///* FB.logout(function(response) {
//	   // Person is now logged out
//	}); */



