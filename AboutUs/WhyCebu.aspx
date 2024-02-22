<%@ Page Title="Seiha Global Academy/Why Cebu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WhyCebu.aspx.cs" Inherits="WebApplication1.AboutUs.WhyCebu" %>
<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../AdminAssets/css/aos.css"/>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section class="PlanPage">
        <div class="container">
              <div class="container-mainCourse">
                   <div class="whyCeb">
                        <div style="padding:10px;text-align:left">
                            <h2>WHY STUDY IN</h2>
                            <span style="color:#FF0000;font-size:70px;font-weight:bold;font-family:Verdana;">C</span>
                            <span style="color:#057606;font-size:70px;font-weight:bold;">E</span>
                            <span style="color:#fdb03d;font-size:70px;font-weight:bold;">B</span>
                            <span style="color:#106ecf;font-size:70px;font-weight:bold;">U</span>
                            <span style="color:#000000;font-size:70px;font-weight:bold;">?</span>         
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div style="padding:10px;text-align:left">
                                    <p style="color:black;text-align:justify;margin-bottom:20px;">                                  
                                            Cebu, Philippines is only 5 hours away from Japan. With such proximity and number of inexpensive flight options, studying abroad has become so easy.
                                        </p>
                                    <p style="color:black;text-align:justify;margin-bottom:20px;">                                  
                                            SEIHA Global Academy (SGA) is located in Cebu Business Park, a premier business district in the heart of metropolitan Cebu. A large shopping mall, a jeepney and taxi hub, and hotels are all located nearby. It's the safest and most convenient place in the city. What a good place to start your new language-learning journey!
                                        </p>
                                    <p style="color:black;text-align:justify;margin-bottom:20px;">                                  
                                            The Philippines is one of the largest English-speaking nations with the majority of its population capable of speaking English. English is one of the Philippines official languages. Filipinos have learned English as early as pre-school. Immerse yourself in and English-speaking environment and improve your English skills.
                                        </p>
                                        <p style="color:black;text-align:justify;margin-bottom:20px;">                                  
                                            Cebu boasts of beautiful blue seas and white beaches. Enjoy marine sports like scuba diving and snorkeling or go whale shark-wtaching or simply have a leisurely stroll anytime on our many and very accessible beautiful beaches. while studying here, be sure to have some fun too!
                                        </p>
                                    <p style="color:black;text-align:justify;margin-bottom:20px;">                                  
                                            Cebu is one of the safest cities in Southeast Asia. being popular tourist destination, the Philippines and local government has strong security measures to keep both local and tourist safe. Cebuanos are peace-loving people, too! Study at ease knowing you are far from harm's way.
                                        </p>
                                </div>
                            </div>
                            <div class="col-lg-4 whyCebImg">                                          
                                <div style="font-size:18px;padding:10px;">
                                    <ul>
                                        <li class="aos-init aos-animate" data-aos="fade-left"><img  src="../images/why1.png" style="width:250px;"></li>
                                        <li class="li1 aos-init aos-animate" style="margin-top:-40px;" data-aos="fade-left"><img  src="../images/why4.png" style="width:250px;"/></li>
                                        <li class="aos-init aos-animate" style="margin-top:-40px;" data-aos="fade-left"><img  src="../images/why3.png" style="width:250px;"/></li>
                                        <li class="li1 aos-init aos-animate" style="margin-top:-40px;" data-aos="fade-left"><img  src="../images/why2.png" style="width:250px;"/></li>
                                    </ul>          
                                </div>
                          </div>           
                     </div>                    
                </div>
            </div>        
        </div> 
    </section>

</asp:Content>
<asp:Content ID="jscript" ContentPlaceHolderID="forJScript" runat="server">
    <script type="text/javascript" src="../AdminAssets/js/aos.js"></script>
    <script>
        AOS.init({
            easing: 'ease-in-out-sine'
        });
    </script>
</asp:Content>