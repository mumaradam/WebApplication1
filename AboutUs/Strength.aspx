<%@ Page Title="Seiha Global Academy/Strength" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strength.aspx.cs" Inherits="WebApplication1.AboutUs.Strength" %>
<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../assets/css/aos.css"/>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <section class="PlanPage" style="">
        <div class="container">
            <div class="container-courseC">
                  <h1><strong>Strength of Seiha Global Academy</strong> </h1>
                
            </div>

                    <div class="container-mainCourse">
                        <div class="col-md-12 courseDesc">
                            
                            <div class="row" >
                                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-right">
                                     <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Highly qualified teaching professionals</h3>
                                     <img class="strengIMG" src="../assets/images/Highly qualified teaching professional.jpg" style="margin-bottom:20px;">
                                     <p style="text-align:justify;margin-bottom:40px;">
                                         Seiha Global Academy teachers are licensed teaching professionals and /or hold Training Methodology Certifications. They have years of accumulated teaching experience from traditional academic institution or other language schools. They continuously undergo training to ensure we consistently provide high-quality lessons.
                                     </p>
                                </div>
                                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-up">
                                    <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Tried and Tested<br /> SEIHA METHOD</h3>
                                    <img class="strengIMG" src="../assets/images/Tried and tested method.jpg" style="margin-bottom:20px;">
                                    <p style="text-align:justify;">
                                        Seiha has more than 30 years of experience teaching English. we meticulously develop our own curriculum and apply the tried-and-tested SEIHA method in more than 900 locations in Japan and the Philippines. Study in an institution with such heart and dedication to language learning.
                                    </p>                                            
                                </div>                                                            
                                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-left">
                                    <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Complete Language<br />Training</h3>
                                    <img class="strengIMG" src="../assets/images/Complete language training.jpg" style="margin-bottom:20px;">
                                    <p style="text-align:justify;">
                                        We teach all four basic language skills: Listening, Speaking, Reading, and Writing. We do not teach English just for English examinations. We teach English in the hope that our students can communicate well in English, and become productive citizens in the international community. This is the heart of SEIHA's teaching philosopy
                                    </p>                                           
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-right" data-aos-duration="1200">
                                    <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Top-Tier Customer Service and Student Support</h3>                                           
                                    <img class="strengIMG" src="../assets/images/247 Customer service.jpg" style="margin-bottom:20px;">
                                    <p style="text-align:justify;">Our energetic and enthusiastic Japanese staff are ready to assist you 24 hours a day. They are well-traine and have long experience in dealing with different customers. If you are looking for the best places to visit and things to do while in Cebu, they would be happy to help.</p>                                                                                                                   
                                </div>
                                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-up" data-aos-duration="1200">
                                   <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Modern Service and Learning Facilities</h3>                      
                                   <img class="strengIMG" src="../assets/images/Modern service facilities.jpg" style="margin-bottom:20px;">
                                   <p style="text-align:justify;">
                                       Our new school prides itself on its clean, comfortable, and Japanese-like atmosphere. Each classroom and cubicle is equipped with the latest facilites that will surely make your studies worthwhile.
                                   </p>                                                                                    
                                </div>
                                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-left" data-aos-duration="1200">
                                    <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Safety and Convenience Environtment</h3>        
                                    <img class="strengIMG" src="../assets/images/Gallery/Strength/IMG20190617082114.jpg" style="margin-bottom:20px;">
                                    <p style="text-align:justify;">
                                        SEIHA Global Academy is located in Cebu's premier business district with easy access to hotels, malls, and local transportation. Cebu accommodates several international businesses and linkages. The local government takes peace and safety as a major priority. study without worries!
                                    </p>                                                                                    
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
        $(function () {
            AOS.init({
                duration: 1200
            });
            onElementHeightChange(document.body, function () {
                AOS.refresh();
            });
        });

        function onElementHeightChange(elm, callback) {
            var lastHeight = elm.clientHeight
            var newHeight;

            (function run() {
                newHeight = elm.clientHeight;
                if (lastHeight !== newHeight) callback();
                lastHeight = newHeight;

                if (elm.onElementHeightChangeTimer) {
                    clearTimeout(elm.onElementHeightChangeTimer);
                }

                elm.onElementHeightChangeTimer = setTimeout(run, 200);
            })();
        }
    </script>
</asp:Content>
    