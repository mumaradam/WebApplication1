<%@ Page Title="Seiha Global Academy/Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="WebApplication1.AboutUs.Gallery" %>
<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>

 

       
    </style>
    <section class="PlanPage">
        <div id="myModal" class="modald">
              <span class="closers">&times;</span>
              <img class="modald-content" id="modalImg" src="" style="padding-top:80px;">
              
            </div>
        <div class="container">
              <div class="container-courseC">
                 <h1><strong>Facilities</strong> </h1>
              </div>
                   <div class="container-mainCourse">
                     <div class="col-md-12 courseDesc">
          	            <div class="row">
       
        
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
                  <img src="../assets/images/Gallery/kidsclassroom2.png" class="myImg" style="height:213.64px;object-fit:cover;">
                </div>
               
              </div>
            </div>
           <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
                  <img src="../assets/images/Gallery/conferenceroom.png" class="myImg">
                </div>
               
              </div>
            </div>
           <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
            <img src="../assets/images/Gallery/groupclassroom.png" class="myImg">
                </div>
               
              </div>
            </div>
              <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
                 <img src="../assets/images/Gallery/library1.jpg" class="myImg" style="height:213.64px;object-fit:cover;">
                </div>
               
              </div>
            </div>
          </div>
            <div class="row">
            <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
                  <img src="../assets/images/Gallery/kidsclassroom1.JPG" style="height:190.66px;" class="myImg">
                </div>
               
              </div>
            </div>
           <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
                  <img src="../assets/images/Gallery/mantomancubicles.PNG" style="height:190.66px;" class="myImg">
                </div>
               
              </div>
            </div>
           <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
            <img src="../assets/images/Gallery/reception.PNG" style="height:190.66px;" class="myImg">
                </div>
               
              </div>
            </div>
              <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
                 <img src="../assets/images/Gallery/studentspantry1.JPG" style="height:190.66px;" class="myImg">
                </div>
               
              </div>
            </div>
          </div>
            <div class="row">
            <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
                  <img src="../assets/images/Gallery/studentspantry2.PNG" class="myImg">
                </div>
               
              </div>
            </div>
           <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
                  <img src="../assets/images/Gallery/oslob whaleshark (25).JPG" style="height:190.66px;" class="myImg">
                </div>
               
              </div>
            </div>
           <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
            <img src="../assets/images/Gallery/Family Holiday Engish.JPG" style="height:190.66px;" class="myImg">
                </div>
               
              </div>
            </div>
              <div class="col-lg-3">
              <div class="famGall-item">
                <div class="thumb">
                 <img src="../assets/images/Gallery/506ED406-AAC6-4079-8501-4CD2D515801E.JPG" style="height:190.66px;" class="myImg">
                </div>
               
              </div>
            </div>
          </div>
        </div>
      </div>   
                     </div>        
                   </div>         
        </div> 
        <script>
            var modal = document.getElementById("myModal");

            // Get all images with the class "myImg"
            var images = document.getElementsByClassName("myImg");

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("closers")[0];

            // Get the modal image and caption elements
            var modalImg = document.getElementById("modalImg");


            // Attach click event listeners to all images
            for (var i = 0; i < images.length; i++) {
                images[i].onclick = function () {
                    modal.style.display = "block";
                    modalImg.src = this.src;
                    captionText.innerHTML = this.alt;
                };
            }

            // When the user clicks on <span> (x), close the modal
            span.onclick = function () {
                modal.style.display = "none";
            }

            // Close the modal when the user clicks outside the modal content
            window.onclick = function (event) {
                if (event.target === modal) {
                    modal.style.display = "none";
                }
            };
        </script>

    </section>

</asp:Content>
    