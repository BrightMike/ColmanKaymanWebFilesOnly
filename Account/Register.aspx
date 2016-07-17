<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <link rel="stylesheet" href="../Content/remodal.css">
    <link rel="stylesheet" href="../Content/remodal-default-theme.css"> 
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
     <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>  <!-- THIS IS WHATS CAUSING REGISTER TEXT NEXT TO BUTTON, TRY DOWNLOADING AND INCLUDING IN CONFIG -->
    
     
    <div class="remodal-bg">
     <div id="main-wrapper">
		<div class="container">
            <div class="row ">
                <div class="col-md-7">

            <h2><%: Title %></h2>
            <p class="text-danger">
                <asp:Literal runat="server" ID="ErrorMessage" />
            </p>

            <div class="form-horizontal">
                <h4>Create a new account.</h4>
                <hr />
                <asp:ValidationSummary runat="server" CssClass="text-danger" />
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
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                            CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <div id="regBut" >
                        <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default " />
                           </div> 
                        </div>
                    </div>
                </div>
            </div>
         

            <div class="col-md-5">
                        <h2>Questionnaire</h2>
                        
                            <h4>Unsure of whether we can help?</h4>
                            <hr />
                                <div> 
                                    <p>
                                        Take a short Questionnaire to find out whether our services can provide exactly what you are looking for!
                                    </p>
                                </div>
                                <div class="col-md-offset-2 col-md-10">
                                    <a data-remodal-target="modal" class="button" >Find Out</a>
                                </div>
                                
                            
                        
            </div>
            
            </div>
            </div>
        </div>
        </div>

     
      
    <div class="remodal" data-remodal-id="modal">
      <button data-remodal-action="close" class="remodal-close"></button>

                <div  id="question1" class="question" style="display:block">
                 
                        <h2>Are you seeking affordable employment advice cover?</h2>

                        <hr />
                    
                        <div id="yes1" class="button">Yes</div>
                        <div id ="no1" class="button">No</div>
                            <script> 
                                $('#question1').dialog();
                                $('#yes1').click(function() {
                                    $('#question1').fadeOut().css('display', 'none');
                                    $('#question2').fadeIn().css('display', 'block');
                                })

                                $('#no1').click(function () {
                                    $('#question1').fadeOut().css('display', 'none');
                                    $('#questionFail').fadeIn().css('display', 'block');
                                })
                            </script>    
                 </div>

            <div  id="question2" class="question" style="display:none">

                        <h2>Are you any of the following?</h2>
                            <hr />
                            <ul>
                                <li>A Casual Worker</li>
                                <li>A Contractor</li>
                                <li>Self-Employed</li>
                            </ul>
                        <div id="yes2" class="button">Yes</div>
                        <div id ="no2" class="button">No</div>
                        
                            <script> 
                                $('#yes2').click(function() {
                                    $('#question2').fadeOut().css('display', 'none');
                                    $('#questionFail').fadeIn().css('display', 'block');
                                })

                                $('#no2').click(function () {
                                    $('#question2').fadeOut().css('display', 'none');
                                    $('#question3').fadeIn().css('display', 'block');
                                })
                            </script>       
                 </div>

                <div  id="question3" class="question" style="display:none">

                        <h2>Are you a member of a Trade Union?</h2>

                        <div id="yes3" class="button">Yes</div>
                        <div id ="no3" class="button">No</div>
                        
                            <script> 
                                $('#yes3').click(function() {
                                    $('#question3').fadeOut().css('display', 'none');
                                    $('#questionFail').fadeIn().css('display', 'block');
                                })

                                $('#no3').click(function () {
                                    $('#question3').fadeOut().css('display', 'none');
                                    $('#question2').fadeIn().css('display', 'block');
                                })
                            </script>       
                 </div>
                
                <div  id="question4" class="question" style="display:none">

                        <h2>Have you been employed for more than two consecutive years by the same employer?</h2>

                        <div id="yes4" class="button">Yes</div>
                        <div id ="no4" class="button">No</div>
                        
                            <script> 
                                $('#yes4').click(function() {
                                    $('#question4').fadeOut().css('display', 'none');
                                    $('#questionFail').fadeIn().css('display', 'block');
                                })

                                $('#no4').click(function () {
                                    $('#question4').fadeOut().css('display', 'none');
                                    $('#question2').fadeIn().css('display', 'block');
                                })
                            </script>       
                 </div>

                <div  id="questionWin" class="question" style="display:none">

                        <h2>Congratulations! You are eligible to apply for membership!</h2>

                        <div id="yesWin" class="button">Retake</div>
                        <div id ="noWin" class="button" data-remodal-action="close">Exit</div>
                        
                            <script> 
                                $('#yesWin').click(function() {
                                    $('#questionWin').fadeOut().css('display', 'none');
                                    $('#question1').fadeIn().css('display', 'block');
                                })

                                /*$('#noWin').click(function () {
                                    $('#questionWin').fadeOut().css('display', 'none');
                                    $('#question2').fadeIn().css('display', 'block');
                                })*/
                            </script>       
                 </div>

                <div  id="questionFail" class="question" style="display:none">

                        <h2>Membership would not be advised at this time -
                            Other organisations such as the Citizens Advice Bureax
                            or ACAS may be able to offer advice.
                        </h2>

                        <div id="yesFail" class="button">Retake</div>
                        <div id ="noFail" class="button" data-remodal-action="close">Exit</div>
                        
                            <script> 
                                $('#yesFail').click(function() {
                                    $('#questionFail').fadeOut().css('display', 'none');
                                    $('#question1').fadeIn().css('display', 'block');
                                })

                                /* $('#noFail').click(function () {
                                    $('#questionFail').fadeOut().css('display', 'none');
                                    $('#question2').fadeIn().css('display', 'block');
                                })*/
                            </script>       
                 </div>
                
                <div  id="questionUnsure" class="question" style="display:none">

                        <h2>Hmmm...</h2>
                        <h3>Judging by the information you have provided, it is uncertain 
                            whether we can provide you with the services suited to your situation.
                            This can be cleared up by contacting one of our dedicated advisors by email or phone </h3>

                        <div id="yesUnsure" class="button">Retake</div>
                        <a id="contactUnsure" href="../Contact.aspx" class="button">Contact Us</a>
                        <div id ="noUnsure" class="button" data-remodal-action="close">Exit</div>
                        
                            <script> 
                                $('#yesUnsure').click(function() {
                                    $('#questionUnsure').fadeOut().css('display', 'none');
                                    $('#question1').fadeIn().css('display', 'block');
                                })

                                /* $('#noFail').click(function () {
                                    $('#questionFail').fadeOut().css('display', 'none');
                                    $('#question2').fadeIn().css('display', 'block');
                                })*/
                            </script>       
                 </div>
    </div>
</asp:Content>

