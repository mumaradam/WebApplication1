<%@ Page Title="Seiha Global Academy/Plan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plan.aspx.cs" Inherits="WebApplication1.Plan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../assets/css/aos.css"/>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <section class="PlanPage" style="background-color: #ccc;">

        <style>
            h1{
                font-size:66px;
                font-weight:bold;
            }
.all-courses{
    margin-top:10px;
}
table ,td{
    padding-left:20px;
    padding-right:20px;
}
.light-plan td ,th {
  border: 3px solid #057606;
  text-align: center
  
}

table {
  width: 100%;
  border-collapse: collapse;
}
.std-plan td, th {
  border: 3px solid #0040ff;
  text-align: center
  
}
.intsv-plan td, th {
  border: 3px solid #f40276;
  text-align: center
  
}
.immersion-plan td, th {
  border: 3px solid #720daf;
  text-align: center
  
}

</style>
        <div class="container">
            <div class="container-courseC">
                  <h1><strong>Study Plan</strong> </h1>
            </div>
            <div class="container-mainCourse">
                <div class="col-md-12 courseDesc">
                    <p style="color:black;text-align:justify;margin-bottom:60px;font-size:20px;font-weight:bold;">                                  
                                    We are committed to improving each student's level of English. Whatever your learning need are, we have a wide range of courses to support you. Enroll at SEIHA Global Academy now, choose from the 4 plans below, and start your exciting English learning journey with us!
                    </p>
                    <div style="color:#057606;border: 2px solid #057606;width:165px;height:45px;">
                        <h4 style="padding:5px;"><strong>LIGHT PLAN</strong></h4>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 aos-init aos-animate" data-aos="fade-right" data-aos-duration="3000">
                            <table class="light-plan">
                                <tr>
                                    <td height="150" style="background-color:#057606;color:#fff;text-align: justify;">
                                        This is perfect for those who wish to combine language learning and enjoy their free time exploring the country.
                                    </td>   
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-1">
                            <i class="fa fa-arrow-right" style="font-size:48px;color:green;padding-top:50px; "></i>
                        </div>
                        <div class="col-lg-4 aos-init aos-animate" data-aos="fade-right" data-aos-duration="2000">
                            <table class="light-plan">
                                <tr>
                                    <td width="100" height="150" style="background-color:#057606;color:#fff;font-size:18px;">
                                        <h1>4</h1>classes
                                    </td>
                                    <td width="200" style="color:#057606;font-size:18px;">
                                        2 one to one classes <br>2 group classes<br/>
                                        <div class="w3-col l3 m6 w3-padding all-courses">
                                            <div style="background-color:gray;border-radius:20px;color:#fff;">all courses</div>
                                        </div>
                                    </td>
                                </tr> 
                            </table>
                        </div>
                        <div class="col-lg-1">
                            <i class="fa fa-plus-circle" style="font-size:48px;color:green;padding-top:50px; "></i>
                        </div>
                        <div class="col-lg-2 aos-init aos-animate" data-aos="fade-right" data-aos-duration="1500">
                            <table class="light-plan">
                                <tr>
                                    <td width="100" height="150" style="color:#057606;font-size:18px;">Guided <br>Self-Study
                                        <div class="w3-col l3 m6 w3-padding all-courses">
                                            <div style="background-color:gray;border-radius:20px;color:#fff;font-size:18px;">
                                               2 classes
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                     </div>
                     <div style="color:#0040ff;border: 2px solid #0040ff;width:235px;margin-top:40px;height:45px;">
                         <h4 style="padding:5px;">
                             <strong>STANDARD PLAN</strong>
                         </h4>
                     </div>
                     <div class="row">
                        <div class="col-lg-4 aos-init aos-animate" data-aos="flip-right" data-aos-easing="linear" data-aos-duration="8000">
                            <table class="std-plan">
                                <tr>
                                    <td height="150" style="background-color:#0040ff;color:#fff;text-align: justify;">
                                        The most popular plan. This option is a combination of light plan with added more one to one classes for more in-depth learning.
                                    </td>   
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-1">
                            <i class="fa fa-arrow-right" style="font-size:48px;color:#0040ff;padding-top:50px; "></i>
                        </div>
                        <div class="col-lg-4 aos-init aos-animate" data-aos="fade-right" data-aos-easing="linear" data-aos-duration="8000">
                            <table class="std-plan">
                                <tr>
                                <td width="100" height="150" style="background-color:#0040ff;color:#fff;font-size:18px;">
                                    <h1>6</h1>classes
                                </td>
                                <td width="200" style="color:#0040ff;font-size:18px;">4 one to one clases <br>2 group classes
                                    <div class="w3-col l3 m6 w3-padding all-courses">
                                        <div style="background-color:gray;border-radius:20px;color:#fff;">all courses</div>
                                    </div>
                                </td>
                                </tr> 
                            </table>
                        </div>
                        <div class="col-lg-1">
                            <i class="fa fa-plus-circle" style="font-size:48px;color:#0040ff;padding-top:50px; "></i>
                        </div>
                        <div class="col-lg-2 aos-init aos-animate" data-aos="fade-right" data-aos-easing="linear" data-aos-duration="4000">
                            <table class="std-plan">
                                <tr>
                                    <td width="100" height="150" style="color:#0040ff;font-size:18px;">
                                        Guided  <br>Self-Study
                                        <div class="w3-col l3 m6 w3-padding all-courses">
                                            <div style="background-color:gray;border-radius:20px;color:#fff;font-size:18px;">
                                                2 classes
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                     </div>
                     <div style="color:#f40276;border: 2px solid #f40276;width:235px;margin-top:40px;height:45px;">
                         <h4 style="padding:5px;">
                            <strong>INTENSIVE PLAN</strong>
                         </h4>
                     </div>
                     <div class="row">
                        <div class="col-lg-4">
                            <table class="intsv-plan">
                                <tr>
                                    <td height="150" style="background-color:#f40276;color:#fff;text-align: justify;">
                                        If you'd be here for a short time but want to study intensively, this is the plan for you!. Immerse yourself in and English environment and learn to think in English.
                                    </td>   
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-1">
                            <i class="fa fa-arrow-right" style="font-size:48px;color:#f40276;padding-top:50px; "></i>
                        </div>
                        <div class="col-lg-4">
                            <table class="intsv-plan">
                                <tr>
                                    <td width="100" height="150" style="background-color:#f40276;color:#fff;font-size:18px;">
                                        <h1>8</h1>classes
                                    </td>
                                    <td width="200" style="color:#f40276;font-size:18px;">
                                        6 one to one classes <br>2 group classes
                                        <div class="w3-col l3 m6 w3-padding all-courses">
                                            <div style="background-color:gray;border-radius:20px;color:#fff;">
                                                all courses
                                            </div>
                                        </div>
                                    </td>
                                </tr> 
                            </table>
                        </div>
                        <div class="col-lg-1">
                            <i class="fa fa-plus-circle" style="font-size:48px;color:#f40276;padding-top:50px; "></i>
                        </div>
                        <div class="col-lg-2">
                            <table class="intsv-plan">
                                <tr>
                                    <td width="100" height="150" style="color:#f40276;font-size:18px;">Guided<br>Self-Study
                                        <div class="w3-col l3 m6 w3-padding all-courses">
                                            <div style="background-color:gray;border-radius:20px;color:#fff;font-size:18px;">2 classes</div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                     </div>
                     <div style="color:#720daf;border: 2px solid #720daf;width:235px;margin-top:40px;height:45px;">
                         <h4 style="padding:5px;">
                             <strong>IMMERSION</strong>
                         </h4>
                     </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <table class="immersion-plan">
                                    <tr>
                                    <td height="150" style="background-color:#720daf;color:#fff;text-align: justify;">
                                        Apply what you have learned in the classroom by interacting to locals or in realistic work scenarios in our partner establishments.
                                    </td>   
                                    </tr>
                                </table>
                            </div>
                            <div class="col-lg-1">
                                <i class="fa fa-arrow-right" style="font-size:48px;color:#720daf;padding-top:50px; "></i>
                            </div>
                            <div class="col-lg-4">
                                <table class="immersion-plan">
                                    <tr>
                                        <td width="100" height="150" style="background-color:#720daf;color:#fff;font-size:18px;">
                                            <h1>6</h1>classes
                                        </td>
                                        <td width="200" style="color:#720daf;font-size:18px;">
                                            1 one to one class <br>1 group class<br />3 immersion activities
                                            
                                        </td>
                                    </tr> 
                                </table>
                            </div>
                            <div class="col-lg-1">
                                <i class="fa fa-plus-circle" style="font-size:48px;color:#720daf;padding-top:50px; "></i>
                            </div>
                            <div class="col-lg-2">
                                <table class="immersion-plan">
                                    <tr>
                                        <td width="100" height="150" style="color:#720daf;font-size:18px;">Guided<br>Self-Study
                                            <div class="w3-col l3 m6 w3-padding all-courses">
                                                <div style="background-color:gray;border-radius:20px;color:#fff;font-size:18px;">
                                                    1 class
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div><br/>
                        <div class="row" style="margin-top:40px;">
                            <div class="col-lg-4" style="border-right: 1px solid #000000;">
                                <div style="font-size:18px;padding:10px;padding-right:20px;">
                                    <h4 style="padding-bottom:10px;color:#0040ff;"><strong>One to One class</strong></h4>
                                    <p style="text-align:justify;">
                                        Each class focuses on one specific English skill. Undoubtedly, your performance will improve as teacher cater to your individual need and identifies specific areas that you need to work on. This is also a perfect opportunity to speak with greater confidence, fluency and accuracy.
                                    </p>
                                </div>
                            </div>
                            <div class="col-lg-4" style="border-right: 1px solid #000000;">                                          
                                <div style="font-size:18px;padding:10px 20px 10px 20px;">
                                    <h4 style="padding-bottom:10px;color:#0040ff;"><strong>グループクラス</strong></h4>
                                    <p style="text-align:justify;">
                                        授業中に他の学生たちと課題をする時、コミュニケーション能力を育て、自信をつけるようにします。 クラスメイトと交流し、チームワークを養い、お互いに語彙の拡張、文法の強化、発音能力の向上を手助けする機会を得ることができます。
                                    </p>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div style="font-size:18px;padding:10px;padding-left:20px;">
                                    <h4 style="padding-bottom:10px;color:#0040ff;"><strong>浸漬</strong></h4>
                                    <p style="text-align:justify;">
                                        これは、当社の特別コースに登録されている学生専用です*。 学生は、パートナー校の地元の子どもたちと交流したり、ホテルや雑貨店などのパートナー施設で働くことによって、授業で学んだことを応用する機会を得ます。
                                    </p>
                                </div>
                            </div>
                        </div>
                        <p style="text-align:left;margin-top:15px;font-size:13px;"><i>*スペシャルコース - お客様との関係英語、実用的な教室英語、家族の休日英語</i></p>                    
                    </div>    
            </div>             
        </div>
    </section>

</asp:Content>
<asp:Content ID="jscript" ContentPlaceHolderID="forJScript" runat="server">
    <script type="text/javascript" src="../AdminAssets/js/aos.js"></script>
   <script>
       AOS.init({
           easing: 'ease-out-back',
           duration: 1000
       });
		</script>
</asp:Content>