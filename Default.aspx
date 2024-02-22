<%@ Page Title="Seiha Global Academy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../AdminAssets/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/aos.css"/>
    <%--<link rel="stylesheet" type="text/css" href="../assets/css/widget.1.20.0.1.css"/>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <%--<link rel="stylesheet" type="text/css" href="../assets/css/effect-style.css" media="screen,tv,print"/>--%>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  <section class="top-banner" id="banner" style="padding-top: 158px;">
      <div class="container1" style="    transform-style: preserve-3d;display: flex;justify-content: center;flex-direction: column;align-items: center;">

                  <input type="radio" name="slider" id="item-1" checked>
                  <input type="radio" name="slider" id="item-2">
                  <input type="radio" name="slider" id="item-3">
                  <input type="radio" name="slider" id="item-4">
                   <input type="radio" name="slider" id="item-5">
                  <div class="cards-banner">
                    <label class="card-banner" for="item-1" id="song-1">
                      <img src="images/sga-banner-2023-1-3-v1.png" style="width:100%;height: 100%;object-fit: cover;">
                    </label>
                    <label class="card-banner" for="item-2" id="song-2">
                      <img src="images/sga-banner-2023-2-1-v1.png" style="width:100%;height: 100%;object-fit: cover;">
                    </label>
                    <label class="card-banner" for="item-3" id="song-3">
                      <img src="images/sga-banner-2023-3-0-v1.png" style="width:100%;height: 100%;object-fit: cover;">
                    </label>
                      <label class="card-banner" for="item-4" id="song-4">
                      <img src="images/sga-banner-2023-4-1-v1.png" style="width:100%;height: 100%;object-fit: cover;">
                    </label>
                      <label class="card-banner" for="item-5" id="song-5">
                      <img src="images/sga-banner-2023-5-0-v1.png" style="width:100%;height: 100%;object-fit: cover;">
                    </label>
                  </div>
      </div>
      <div class="container buttons-banner" style="margin-bottom: 50px;margin-top: 50px">
            <div class="row">
                <div class="col-md-4 reflect-effect" style="margin-bottom: 10px;">
                    <asp:LinkButton ID="lnkbtnEsti" runat="server" class="btn btn-out-dashed waves-effect waves-light btn-success" style="width:224px;height:70px;font-size:24px;font-weight:bold;background-color:#007d00;border-radius:8px;padding: 16px 12px;background: url(../Images/green_back.png) no-repeat 50% 50%;" OnClick="lnkbtnEsti_Click"><i class="fa fa-calculator"></i>Estimate</asp:LinkButton>
                </div>
                <div class="col-md-4 reflect-effect" style="margin-bottom: 10px;">
                    <asp:LinkButton ID="lnkbtnApp" runat="server" class="btn btn-out-dashed waves-effect waves-light btn-success" style="width:224px;height:70px;font-size:24px;font-weight:bold;background-color:#007d00;border-radius:8px;padding: 16px 12px;background: url(../Images/green_back.png) no-repeat 50% 50%;" OnClick="lnkbtnEnroll_Click" ><i class="fa fa-calendar-check-o"></i>Application</asp:LinkButton>
                </div>
                <div class="col-md-4 reflect-effect" style="margin-bottom: 10px;">
                    <asp:LinkButton ID="lnkbtnAddFriend" runat="server" class="btn btn-out-dashed waves-effect waves-light btn-success" style="width:224px;height:70px;font-size:24px;font-weight:bold;background-color:#007d00;border-radius:8px;padding: 16px 12px;background: url(../Images/green_back.png) no-repeat 50% 50%;" OnClick="lnkbtnAddFriend_Click"><i class="icofont icofont-brand-line-messenger" style="font-size:25px;"></i>Add Friend</asp:LinkButton>
                    <%--<div id="hiddenLineButton" class="line-it-button" data-lang="en" data-type="friend" data-env="REAL" data-lineId="@uptalkcebu" data-size="xlarge" style="display: none;"></div>--%>
                   <%-- <div id="hiddenDiv" style="display:none;">
                        <div id="hiddenLineButton" class="line-it-button" data-lang="en" data-type="friend" data-env="REAL" data-lineId="@uptalkcebu" data-size="xlarge" style="display: none;"></div>
                    </div>--%>
                </div>
                
            </div>  
            <h1 style="font-weight:bold;margin-top:10px;font-size:60px;">SEIHA GLOBAL ACADEMY</h1>
            <p style="font-size:24px;">
                    <i>Unlock your potential and shape your future with us!</i>
            </p>                        
          </div>   
   </section>
    <section class="upcoming-meetings" id="OurStrength">
        <div class="container">
           <div class="col-lg-12 courseDesc ourstrength">
             <div class="title-container">
                <h2 class="line-title" style="font-size:60px;font-weight:bold;color:#007d00;">
                    Our Strength
                </h2>
             </div>  
              <div class="row" style="padding-top:50px">
                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-right">
                     <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Highly qualified teaching professionals</h3>
                     <img class="strengIMG" src="../assets/images/Highly qualified teaching professional.jpg" style="margin-bottom:20px;">
                     <p style="text-align:justify;margin-bottom:40px;">
                         Seiha Global Academy teachers are licensed teaching professionals and /or hold Training Methodology Certifications. They have years of accumulated teaching experience from traditional academic institution or other language schools. They continuously undergo training to ensure we consistently provide high-quality lessons.
                     </p>
                </div>
                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-down">
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
                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-right">
                    <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Top-Tier Customer Service and Student Support</h3>                                           
                    <img class="strengIMG" src="../assets/images/247 Customer service.jpg" style="margin-bottom:20px;">
                    <p style="text-align:justify;">Our energetic and enthusiastic Japanese staff are ready to assist you 24 hours a day. They are well-traine and have long experience in dealing with different customers. If you are looking for the best places to visit and things to do while in Cebu, they would be happy to help.</p>                                                                                                                   
                </div>
                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-up">
                   <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Modern Service and Learning Facilities</h3>                      
                   <img class="strengIMG" src="../assets/images/Modern service facilities.jpg" style="margin-bottom:20px;">
                   <p style="text-align:justify;">
                       Our new school prides itself on its clean, comfortable, and Japanese-like atmosphere. Each classroom and cubicle is equipped with the latest facilites that will surely make your studies worthwhile.
                   </p>                                                                                    
                </div>
                <div class="col-lg-4 aos-init aos-animate" data-aos="fade-left">
                    <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">Safety and Convenience Environtment</h3>        
                    <img class="strengIMG" src="../assets/images/Gallery/Strength/IMG20190617082114.jpg" style="margin-bottom:20px;">
                    <p style="text-align:justify;">
                        SEIHA Global Academy is located in Cebu's premier business district with easy access to hotels, malls, and local transportation. Cebu accommodates several international businesses and linkages. The local government takes peace and safety as a major priority. study without worries!
                    </p>                                                                                    
                 </div>
             </div>  
          </div> 
       </div>           
    </section>
    <section class="upcoming-meetings" id="WhyStudyInCebu">
       <div class="container" >
        <div class="col-lg-12 courseDesc whystudcebu">
          <div class="title-container">
            <h2 class="line-title" style="font-weight:bold;color:#007d00;font-size:60px">
                Why study in Cebu?
            </h2> 
              <img src="https://www.seiha.com/wp/wp-content/themes/seiha/cmn/kuma_woman.svg" alt="" class="why_cebSeiha">                          
          </div>                
          <div class="row" style="margin-top:80px;">
            <div class="col-lg-8 why-cebu">
                <div style="padding:10px;text-align:left;padding-left:20px;">
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
                <div class="row">
                    <div class="col-lg-4 aos-init aos-animate" data-aos="fade-right">
                        <img src="../assets/images/Why Study in Cebu 3.jpg" style="height:168px;">
                    </div>
                    <div class="col-lg-4 aos-init aos-animate" data-aos="fade-down">
                        <img src="../assets/images/Why Study in Cebu 2.jpg">
                    </div>
                    <div class="col-lg-4 aos-init aos-animate" data-aos="fade-left">
                        <img src="../assets/images/Why Study in Cebu.jpg" style="height:168px;">
                    </div>

                </div>
            </div>
            <div class="col-lg-4" style="margin:0;">                                          
              <div style="font-size:18px;">
                 <ul>
                    <li class="mytooltip aos-init aos-animate" data-aos="fade-up" style="position: inherit;" >
                        <img class="aos-init aos-animate" data-aos="fade-right" src="../images/why1.png" style="width:230px;margin-right:100px;">
                        <div class="tooltip-content5" style="bottom: 90%; width: 235px; left:46%;">
                            <div class="tooltip-text3">
                                <div class="tooltip-inner2" style="padding: 10px;">
                                    <div class="owl-carousel carousel-dot owl-theme">
                                        <div class="item">
                                            <img class="d-block img-fluid" src="../assets/images/Gallery/Strength/IMG20190617082114.jpg" style="border-top-left-radius:0px; border-top-right-radius:0px;">
                                        </div>
                                        <div class="item">
                                            <img class="d-block img-fluid" src="../assets/images/Gallery/Strength/ITTowerbuilding.jpg" style="border-top-left-radius:0px; border-top-right-radius:0px;">
                                        </div>
                                        <div class="item">
                                            <img class="d-block img-fluid" src="../assets/images/Gallery/questHotel.jpg" style="border-top-left-radius:0px; border-top-right-radius:0px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="li1 mytooltip" style="margin-top:-40px; position: inherit;">
                        <img class="aos-init aos-animate" data-aos="fade-left" src="../images/why4.png" style="width:230px; margin-left:50px;margin-top:-40px;"/>
                    </li>
                    <li class="mytooltip" style="margin-top:-40px; position: inherit;">
                        <img class="aos-init aos-animate" data-aos="fade-right" src="../images/why3.png" style="width:230px;margin-top:-40px;margin-right:100px;"/>
                        <div class="tooltip-content5" style="bottom: 42%; left:37%">
                            <div class="tooltip-text3">
                                <div class="tooltip-inner2" style="padding: 10px;">
                                    <div class="owl-carousel carousel-dot owl-theme">
                                            <div class="item active">
                                            <img class="d-block img-fluid" src="../assets/images/Gallery/DSC_0448.JPG" style="border-top-left-radius:0px; border-top-right-radius:0px;">
                                        </div>
                                        <div class="item">
                                            <img class="d-block img-fluid" src="../assets/images/Gallery/dwarf coco farm (89).jpg" style="border-top-left-radius:0px; border-top-right-radius:0px;">
                                        </div>
                                        <div class="item">
                                            <img class="d-block img-fluid" src="../assets/images/Gallery/506ED406-AAC6-4079-8501-4CD2D515801E.JPG" style="border-top-left-radius:0px; border-top-right-radius:0px;">
                                        </div>
                                        <div class="item">
                                            <img class="d-block img-fluid" src="../assets/images/Gallery/Activity2/IMG_7828.JPG" style="border-top-left-radius:0px; border-top-right-radius:0px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="li1 mytooltip" style="margin-top:-40px; position: inherit;">
                        <img class="aos-init aos-animate" data-aos="fade-left" src="../images/why2.png" style="width:230px;margin-left:50px;margin-top:-40px;"/>
                    </li>
                 </ul>
              </div>
           </div>
         </div> 
       </div> 
     </div>                     
  </section>
  <section class="upcoming-meetings" id="OurCurriculum" style="padding-bottom:30px;">
   <div class="container">
    <div class="col-lg-12 courseDesc ourcurriculum">
      <div class="title-container" style="margin-bottom:30px;">
        <h2 class="line-title" style="font-size:60px;font-weight:bold;color:#007d00;">
            Our Curriculum
        </h2>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="owl-courses-item owl-carousel">
            <div class="c-item">
              <img src="assets/images/Courses/10 Business English 2.JPG" alt="Course One">
              <div class="course-content">
                <h4>Business English</h4>
                <div class="col-lg-12 info">
                  <p>Communicate professionally in international business environments.</p>
                </div>
              </div>
            </div>
            <div class="c-item">
              <img src="assets/images/Courses/11 Customer Relations 1.JPG" alt="Course Two">
              <div class="course-content">
                <h4>Customer Relations English</h4>
                <div class="info">
                  <p>Improve language skills and customer care techniques and immerse yourself in a real hospitality and  retail environment.</p>
                </div>
              </div>
            </div>

            <div class="c-item">
              <img src="assets/images/Courses/13 Family English Holiday 2.JPG" alt="">
              <div class="course-content" style="color:white;background-color:blue;">
                <h4>Family Holiday English</h4>
                <div class="info">
                  <p>Study English, learn local culture and spend your holiday with the whole family.</p>
                </div>
              </div>
            </div>
            <div class="c-item">
              <img src="assets/images/Courses/7 General English 1.JPG" alt="">
              <div class="course-content">
                <h4>General English</h4>
                <div class="info">
                  <p>Boost your confidence by improving Listening, Speaking, Reading and Writing skills.</p>
                </div>
              </div>
            </div>
            <div class="c-item">
              <img src="assets/images/Courses/9 IELTS.jpg" alt="">
              <div class="course-content">
                <h4>IELTS</h4>
                <div class="info">
                  <p>Classes rich in test strategies,  examination drills and language skills that surely guarantee high scores.</p>
                </div>
              </div>
            </div>
            <div class="c-item">
              <img src="assets/images/Courses/12 Practical Classroom English 1.JPG" alt="">
              <div class="course-content">
                <h4>Practical Classroom English</h4>
                <div class="info">
                  <p>Equip yourself with useful classroom language and enjoy cultural experience while teaching in a real classroom.</p>
                </div>
              </div>
            </div>
            <div class="c-item">
              <img src="assets/images/Courses/8 TOEIC.JPG" alt="">
              <div class="course-content">
                <h4>TOEIC</h4>
                <div class="info">
                  <p>Develop examination techniques and receive intensive practice to achieve target scores.</p>
                </div>
              </div>
            </div>
            <div class="c-item">
              <img src="assets/images/Courses/6 Young Learners English 1.JPG" alt="Course Two">
              <div class="course-content">
                <h4>Young Learners English</h4>
                <div class="info">
                  <p>English for young learners filled with music and fun activities.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
  </section>
  <section class="upcoming-meetings" id="WhatMakesUsStandOut" style="padding-bottom:30px;">
    <div class="container" >
        <div class="col-lg-12 courseDesc whatstandout">
            <div class="title-container">
                <h2 class="line-title" style="font-size:60px;font-weight:bold;color:#007d00;">
                    What makes us stand out?
                </h2>
            </div>         
        <div class="row" style="padding-top:50px">
            <div class="col-lg-6">
                <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">ACCOMMODATION</h3>                    
                <img  src="../assets/images/Accommodation.jpg" style="margin-bottom:20px;">
                <p style="text-align:justify;">SEIHA GLOBAL ACADEMY (SGA) has partnered with the best hotels in the region to provide the perfect place to stay and relax for the students. Students have various hotels to choose from that suit their tastes and needs.</p>
                <button class="btn btn-out-dashed waves-effect waves-light  btn-success aos-init aos-animate" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000" style="width:224px;height:40px;background-color:#007d00;border-radius:20px;margin-top:44px;margin-bottom:30px;">click here for details <i class="ti-angle-right"></i></button>
            </div> 
            <div class="col-lg-6">
                <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">PLACES NEAR SGA</h3>      
                <img src="../assets/images/Gallery/Strength/IMG20190617082114.jpg" style="margin-bottom:20px;">
                <p style="text-align:justify;">Ayala Center Cebu is one of the country's largest shopping malls and it only takes about 5minutes on foot from the school. It is a one-stop place of everything you need. The mall has a supermarket,department store, restaurants, spas, pharmacies and children's playground.</p>
                <button class="btn btn-out-dashed waves-effect waves-light btn-success aos-init aos-animate" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000" style="width:224px;height:40px;background-color:#007d00;border-radius:20px;margin-top:20px;margin-bottom:30px;">click here for details <i class="ti-angle-right"></i></button>
            </div>                            
        </div>
        <div class="row">
           <div class="col-lg-6">
                <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">PARTNER SCHOOLS</h3>                                           
                <img  src="../assets/images/Partner Schools.jpg" style="margin-bottom:20px;height:447px;">
                <p style="text-align:justify;">Seiha Global Academy strives hard to give its students the best opportunities to enhance their English skills. So it partnered with different local schools and universities and created meaningful activities that not only would improve the student's communication skills but also make new and lasting relationships.</p>                                                                                                                   
                <button class="btn btn-out-dashed waves-effect waves-light btn-success aos-init aos-animate" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000" style="width:224px;height:40px;background-color:#007d00;border-radius:20px;margin-top:24px;margin-bottom:30px;">click here for details <i class="ti-angle-right"></i></button>
           </div>
           <div class="col-lg-6">
                <h3 style="color:#007d00;font-weight:bold;margin-bottom:15px;">OUTREACH PROGRAM</h3>                        
                <img  src="../assets/images/Outreach Program.jpg" style="margin-bottom:20px;height:447px;">
                <p style="text-align:justify;">Our immersion program brings our students to our partner institution like SOS Children's Village Cebu. Students experience a real-life encounter with the children and build rapport by participating in various activities like visiting their homes. eating together with local families, and playing games together. It is a worthwhile experience to everyone.</p>                                                                                    
                <button class="btn btn-out-dashed waves-effect waves-light btn-success aos-init aos-animate" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000" style="width:224px;height:40px;background-color:#007d00;border-radius:20px;margin-bottom:30px;">click here for details <i class="ti-angle-right"></i></button>
           </div>        
         </div>                 
       </div> 
     </div>        
  </section>
  <section class="upcoming-meetings" id="ActivitiesAndSocialMedia" style="padding-bottom:30px;">
      <div class="container">
          <div class="col-lg-12 courseDesc activitiessocmed">
              <div class="col-md-6 ">
                  <h2 class="notice-title">
                      SEIHA Global Notice & News
                  </h2>
              </div>
              <div class="col-md-6 ">
                  <h2 class="notice-title">
                      Facebook
                  </h2>
                  <div id="fb-root"></div>
                  <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v18.0&appId=2190131774565184" nonce="IYnDPMzU"></script>
                  <div class="fb-page" data-href="https://www.facebook.com/seihaglobalacademy" data-tabs="timeline" data-width="" data-height="" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/seihaglobalacademy" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/seihaglobalacademy">Seiha Global Academy</a></blockquote></div>
              </div>
          </div>
      </div>
  </section>
    <style>
        input[type=radio] {
  display: none;
}



        
/*img {
  width: 100%;
  height: 100%;
  border-radius: 10px;
  object-fit: cover;
}*/



    </style>
</asp:Content>
<asp:Content ID="jscript" ContentPlaceHolderID="forJScript" runat="server">
    <script type="text/javascript" src="../AdminAssets/bower_components/owl.carousel/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="../AdminAssets/js/owl-custom.js"></script>
    <script type="text/javascript" src="../AdminAssets/js/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../AdminAssets/js/aos.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // Function to automatically change the checked state of radio inputs
            function autoSlide() {
                // Find the currently checked input
                var checkedInput = $('input[name="slider"]:checked');

                // Check the next input (or the first one if the last is checked)
                var nextInput = checkedInput.next('input[name="slider"]').length ? checkedInput.next('input[name="slider"]') : $('input[name="slider"]').first();
                nextInput.prop('checked', true).trigger('change');
            }

            // Set interval for auto-sliding (change every 5 seconds, for example)
            setInterval(autoSlide, 10000); // Adjust the interval time as needed
        });

      
        

    </script>
    
    <script>
        $(function () {
            AOS.init({
                duration: 1200
            });
            onElementHeightChange(document.body, function () {
                AOS.refresh();
            });
        });
    </script>
    
</asp:Content>