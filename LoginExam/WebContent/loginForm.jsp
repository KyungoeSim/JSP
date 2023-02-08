<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Login Form with Avatar Image</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style>
	body {
		color: #fff;
		background: #d47677;
	}
	.form-control {
        min-height: 41px;
		background: #fff;
		box-shadow: none !important;
		border-color: #e3e3e3;
	}
	.form-control:focus {
		border-color: #70c5c0;
	}
    .form-control, .btn {        
        border-radius: 2px;
    }
	.login-form {
		width: 350px;
		margin: 0 auto;
		padding: 100px 0 30px;		
	}
	.login-form form {
		color: #7a7a7a;
		border-radius: 2px;
    	margin-bottom: 15px;
        font-size: 13px;
        background: #ececec;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;	
        position: relative;	
    }
	.login-form h2 {
		font-size: 22px;
        margin: 35px 0 25px;
    }
	.login-form .avatar {
		position: absolute;
		margin: 0 auto;
		left: 0;
		right: 0;
		top: -50px;
		width: 95px;
		height: 95px;
		border-radius: 50%;
		z-index: 9;
		background: #70c5c0;
		padding: 15px;
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
	}
	.login-form .avatar img {
		width: 100%;
	}	
    .login-form input[type="checkbox"] {
        margin-top: 2px;
    }
    .login-form .btn {        
        font-size: 16px;
        font-weight: bold;
		background: #70c5c0;
		border: none;
		margin-bottom: 20px;
    }
	.login-form .btn:hover, .login-form .btn:focus {
		background: #50b8b3;
        outline: none !important;
	}    
	.login-form a {
		color: #fff;
		text-decoration: underline;
	}
	.login-form a:hover {
		text-decoration: none;
	}
	.login-form form a {
		color: #7a7a7a;
		text-decoration: none;
	}
	.login-form form a:hover {
		text-decoration: underline;
	}
</style>
</head>
<body>
<div class="login-form">
    <form action="loginCheck.jsp" method="post">
        <h1 class="text-center">Login</h1>   
        <div class="form-group">
        	<input type="text" class="form-control" name="mid" placeholder="Username" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="mpass" placeholder="Password" required="required">
        </div>        
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
        </div>
        <a id="custom-login-btn" href="javascript:kakaoLogin()">
		<img src="kakao_small.png">
		</a>

		<div class="clearfix">
            <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
            <a href="#" class="pull-right">Forgot Password?</a>
        </div>
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
        
		<script>
			//발급 받은 키
			Kakao.init("1d944d4a9cb22483964d7e130a9b4c2a");
			
			function kakaoLogin() {
				window.Kakao.Auth.login({
					// 개발자 사이트에서 체크한 항목들과 반드시 일치해야 한다. 
					scope:'profile_nickname, account_email, gender',
					success: function (authObj) {window.Kakao.API.request({url:'/v2/user/me',
						success:res => {const kakaoAccount = res.kakao_account;
							location.href='loginKakaoCheck.jsp?mname=' + kakaoAccount.profile.nickname
									+ '&memail=' + kakaoAccount.email
									+ '&mgender=' + kakaoAccount.gender;}
					});
				}		
				});
			}
		
		</script>
    </form>
</div>
</body>
</html>