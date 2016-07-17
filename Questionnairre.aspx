<%@ Page Title="Questionnaire"  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Questionnairre.aspx.cs" Inherits="Questionnairre" Async="true"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="Content/remodal.css">
    <link rel="stylesheet" href="Content/remodal-default-theme.css"> 
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    
       
    <div class="remodal-bg">
     <div id="main-wrapper">
		<div class="container">
             <h2><%: Title %></h2>
            <a data-remodal-target="modal">Take the Questionnaire!"</a>
             
           

         
             
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
                                $('#question3').fadeIn().css('display', 'block');
                            })
                        </script>    
             </div>

        <div  id="question2" class="question" style="display:none">

                    <h2>Second Question</h2>

                    <div id="yes2" class="button">Yes</div>
                    <div id ="no2" class="button">No</div>
                        
                        <script> 
                            $('#yes2').click(function() {
                                $('#question2').fadeOut().css('display', 'none');
                                $('#question3').fadeIn().css('display', 'block');
                            })

                            $('#no2').click(function () {
                                $('#question2').fadeOut().css('display', 'none');
                                $('#question1').fadeIn().css('display', 'block');
                            })
                        </script>       
             </div>

            <div  id="question3" class="question" style="display:none">

                    <h2>Third Question</h2>

                    <div id="yes3" class="button">Yes</div>
                    <div id ="no3" class="button">No</div>
                        
                        <script> 
                            $('#yes3').click(function() {
                                $('#question3').fadeOut().css('display', 'none');
                                $('#question1').fadeIn().css('display', 'block');
                            })

                            $('#no3').click(function () {
                                $('#question3').fadeOut().css('display', 'none');
                                $('#question2').fadeIn().css('display', 'block');
                            })
                        </script>       
             </div>
</div>

       <!-- 
       
       **Bog Standard Remodal**
       
  <div class="remodal" data-remodal-id="modal">
  <button data-remodal-action="close" class="remodal-close"></button>
  <h1>Remodal</h1>
  <p>
    Responsive, lightweight, fast, synchronized with CSS animations, fully customizable modal window plugin with declarative configuration and hash tracking.
  </p>
  <br>
  <button data-remodal-action="cancel" class="remodal-cancel">Cancel</button>
  <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
</div> 
       -->
</asp:Content>

