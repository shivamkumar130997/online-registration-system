<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUserList.aspx.cs" Inherits="app1.RegisterUserList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
    .bs-example{
    	margin: 25px;
    }
</style>
</head>
<body>

    <form id="form1" runat="server">
     
   <div class="bs-example">  
            <h3 style="margin-left:43%;">Customer Data</h3>  
            <p>  
                <asp:Repeater ID="grdUser" runat="server" >  
                    <HeaderTemplate>  
                        <table class="table table-striped" style="border:3px solid black;margin-left:20%;margin-right:auto;  WIDTH: 62%">  
                            <tr>  
                                <td><b>ID</b></td>  
                                <td><b>USERNAME</b></td>  
                                <td><b>EMAIL</b></td>  
                                <td><b>PASSWORD</b></td>  
                                <td><b>PHONE NO</b></td>  
                                <th></th>                    
                            </tr>  
                    </HeaderTemplate>  
                    <ItemTemplate>  
                        <tr>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "Id") %>   
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "USERNAME") %>   
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "EMAIL") %>  
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "PASSWORD") %>   
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "PHONE_NO") %>   
                            </td>  
                            <td>
               <%--         <asp:ImageButton CommandArgument='<%# Eval("Id") %>' ID="Edit"  ImageUrl="image/Edit.png" style="height:30px;width:30px;" runat="server" CommandName="edit" OnClick="Edit_Click" />--%>
                    <asp:LinkButton ID="LinkButton1" CommandName="Delete"  CommandArgument='<%# Eval("Id") %>' OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;" runat="server" OnClick="LinkButton1_Click" >Delete</asp:LinkButton>
                            </td>
  
                        </tr>  
                    </ItemTemplate>  
                    <FooterTemplate>  
                        </table>   
                    </FooterTemplate>  
                </asp:Repeater>  
            </p>  
        </div>  
    <div style="overflow: hidden;">

<asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
 <ItemTemplate>
  <asp:LinkButton ID="btnPage"
   style="padding:8px;margin:2px;background:#ffa100;border:solid 1px #666;font:8pt tahoma;"
   CommandName="Page" CommandArgument="<%# Container.DataItem %>"
   runat="server" ForeColor="White" Font-Bold="True">
    <%# Container.DataItem %>
  </asp:LinkButton>
 </ItemTemplate>
</asp:Repeater>

</div>


    <asp:Button Text="back" ID="btnRegisterUse" ValidationGroup="RegisterForm" OnClick="btnRegisterUse_Click" CssClass="btn btn-info btn-block"  runat="server" />   
    </form>
    	
                                     
    <style>
       body{
           background-image:url('https://files.123freevectors.com/wp-content/original/111534-light-color-blurred-background-vector.jpg');
		        background-repeat: no-repeat;
		        background-size: 1700px 800px;
       }

    </style>
</body>
</html>
