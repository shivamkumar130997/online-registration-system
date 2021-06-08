<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="app1.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="">
<head runat="server">
    <title></title>
	<style>
	 .panel.panel-default{
		 padding: 0 15px;
	 }
	 .panel-heading{
    background-color: #ced7e0 !important;

}
	 .error-msg{
		 color:red;
		 font-size:10px;
	 }
	 .ValidationError{
		  color:red;
		 font-size:10px;

	 }


	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up for enter </h3>
			 			</div>
			 			<div class="panel-body">
			    		
			    			<div class="row">
			    				
									
			    			<div class="form-group">

								<asp:TextBox runat="server" CssClass="form-control input-sm"  ID="txtUsername" placeholder="Enter username" />
								  <asp:RequiredFieldValidator ID="reqtxtUsername" CssClass="error-msg" ControlToValidate="txtUsername" ValidationGroup="RegisterForm" runat="server" ErrorMessage="Username is required"></asp:RequiredFieldValidator>  

			    				<%--<input type="email" name="UserName" id="UserName" class="form-control input-sm" placeholder="User Name">--%>
			    			</div>

			    				

			    			<div class="form-group">
								
								<asp:TextBox runat="server" CssClass="form-control input-sm" ID="txtemail" placeholder="Email Address" onblur="checkEmail(this)"/>
								<asp:RequiredFieldValidator ID="reqName" CssClass="error-msg" ControlToValidate="txtemail" ValidationGroup="RegisterForm" runat="server" ErrorMessage="Email is required" Display="Dynamic"></asp:RequiredFieldValidator>
			    				
								<asp:RegularExpressionValidator CssClass="error-msg" ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
								<%------<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address">---%>
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
											<asp:TextBox runat="server" TextMode="Password" CssClass="form-control input-sm" ID="txtpassword" placeholder="Password"/>
										<asp:RequiredFieldValidator CssClass="error-msg" ID="RequiredFieldValidator1" ControlToValidate="txtpassword" ValidationGroup="RegisterForm" runat="server" ErrorMessage="password is required"></asp:RequiredFieldValidator>
			    						,<%--- <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">--%>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
										<asp:TextBox runat="server" TextMode="Password" CssClass="form-control input-sm" ID="txtpassword_confirmation" placeholder="Confirm Password"/>
										<asp:RequiredFieldValidator CssClass="error-msg" ID="RequiredFieldValidator2" ControlToValidate="txtpassword_confirmation" ValidationGroup="RegisterForm" runat="server" ErrorMessage="password_confirmation is required"></asp:RequiredFieldValidator>
										<asp:CompareValidator ID="CompareValidator1" runat="server"  ControlToValidate="txtpassword_confirmation" CssClass="ValidationError" ControlToCompare="txtpassword" ErrorMessage="Password must be the same" ToolTip="Password must be the same" />

			    						<%--<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password">--%>
			    					</div>
			    				</div>
			    			</div>
								<div class="form-group">
									<asp:TextBox runat="server" CssClass="form-control input-sm" ID="txtNumber" placeholder="Phone Number"/>
									<asp:RegularExpressionValidator ID="REFmoblie" runat="server" ErrorMessage="Please enter valid phone no" ControlToValidate="txtNumber"  CssClass="error-msg"  ValidationExpression="^([0]|\+91)?[789]\d{9}$"></asp:RegularExpressionValidator>
			    				<%-- <input type="Number" name="number" id="Number" class="form-control input-sm" placeholder="Phone Number">--%>
			    			</div>

			    			<%--<asp:Button ID="btnRegister" runat="server" CssClass="btn btn-info btn-block" OnClick="btnRegister_Click1" OnClientClick="myFunction()" Text="Log In"   />--%>
							
							<asp:Button Text="Register" ID="btnRegisterUser" ValidationGroup="RegisterForm"   OnClick="btnRegisterUser_Click" OnClientClick="myFunction()" CssClass="btn btn-info btn-block"  runat="server" CausesValidation="false"  formnovalidate/>
                                     

									<asp:Button Text="view database" ID="Button1" ValidationGroup="RegisterForm"   OnClick="Button1_Click" OnClientClick="myFunction()" CssClass="btn btn-info btn-block"  runat="server" />
			    			<%--<input type="submit" value="Register" class="btn btn-info btn-block" onclick="myFunction()">--%>
								
								
								</div>
			    		
			    		
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
        </div>
	
    </form>
		<style>
		    body {
		        background-image: url('https://3.bp.blogspot.com/-EH8DfTbRpfU/V7cmv04IKLI/AAAAAAAAM6A/mRK9Bu9elXgXUW3EnuvaAq5pV-nKlIVdQCLcB/s1600/HD-Wallpapers1_FOSmVKg.jpeg');
		        background-repeat: no-repeat;
		        background-size: 1700px 800px;
		    }
.centered-form{
	margin-top: 60px;
	

}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
		</style>
</body>
</html>

<script>

    }  
    function myFunction() {
        //alert("SAVE");
    }
</script>
