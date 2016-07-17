<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    

                <div id="main-wrapper">
                    
					<div class="container">
						
                        <div class="row ">
                            
                              <div class="col-md-7">
                                  <h2><%: Title %></h2>
                                <section id="loginForm">
                                    <div class="form-horizontal">
                                        <h4>Log in to an existing account.</h4>
                                        <hr />
                                        <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                            <p class="text-danger">
                                                <asp:Literal runat="server" ID="FailureText" />
                                            </p>
                                        </asp:PlaceHolder>
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
                                            <div class="col-md-10">
                                                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                                    CssClass="text-danger" ErrorMessage="The user name field is required." />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                                            <div class="col-md-10">
                                                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-offset-2 col-md-10">
                                                <div class="checkbox">
                                                    <asp:CheckBox runat="server" ID="RememberMe" />
                                                    <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-offset-2 col-md-10">
                                                <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                                            </div>
                                        </div>
                                    </div>
                                   
                                </section>
                            </div>
                            
                        

                    <div class="col-md-5">
                        <h2>Sign Up</h2>
                        
                            <h4>Create a new account.</h4>
                            <hr />
                                <div> 
                                    <p>
                                        Not a member yet? Sign up today to get the cover you need!
                                    </p>
                                </div>
                                <div class="col-md-offset-2 col-md-10">
                                    <a href="../Account/Register.aspx" class="button btn btn-default" >Sign Up</a>
                                </div>
                                <!-- <uc:openauthproviders runat="server" id="OpenAuthLogin" />-->
                            
                        
                    </div>

                </div>
             </div>
          </div>
</asp:Content>

