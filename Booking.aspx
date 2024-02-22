<%@ Page Title="Seiha Global Academy/Booking" Language="C#" EnableViewStateMac="true" ViewStateEncryptionMode="Always" MasterPageFile="~/Site.Master"AutoEventWireup="true" MaintainScrollPositionOnPostBack="true" CodeBehind="Booking.aspx.cs" Inherits="WebApplication1.Booking" %>
<asp:Content ID="headBooking" ContentPlaceHolderID="head" runat="server">
    <!-- Additional styles or meta tags specific to the child page -->
    <link rel="stylesheet" type="text/css" href="AdminAssets/css/style.css"/>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <%--<img src="images/size.jpg" style="width:100%;height:auto;"/>--%>
    <section id="booking" class="book-now"  >
        <div class="page-header book-now" style="background-color: white !important;">
            <div class="page-block">
                <div>
                    <h1 class="dark-and-light-blue-line">
                        Application for Study Abroad        
                    </h1>
                </div>
            </div>
        </div>
        <div class="container container-book">
            <div class="row">
                 <div class="col-lg-12 align-self-center">
                        <div class="card" style="margin-top:20px; margin-bottom:10px;">
                            <div class="card-header"><h5>Select Course</h5></div>
                            <div class="card-block">
                                <div class="form-control">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label >Course &nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <asp:DropDownList ID="dpdnCourse" runat="server" class="frm-cntrl" style="width:100%;">
                                                <asp:ListItem Text="Choose..." Value= "" Selected="True" hidden></asp:ListItem>
                                                <asp:ListItem Text="Business English" Value="BE"></asp:ListItem>
                                                <asp:ListItem Text="Customer Relations" Value="CR"></asp:ListItem>
                                                <asp:ListItem Text="Family English Holiday" Value="FE"></asp:ListItem>
                                                <asp:ListItem Text="General English" Value="GE"></asp:ListItem>
                                                <asp:ListItem Text="IELTS" Value="IS"></asp:ListItem>
                                                <asp:ListItem Text="Practical Classroom English" Value="PC"></asp:ListItem>
                                                <asp:ListItem Text="TOEIC" Value="TC"></asp:ListItem>
                                                <asp:ListItem Text="Young Learner English" Value="YL"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-6">
                                            <label >Plan &nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <asp:DropDownList ID="dpdnPlan" runat="server" class="frm-cntrl" style="width:100%;">
                                                <asp:ListItem Text="Choose..." Value= "" Selected="True" hidden></asp:ListItem>
                                                <asp:ListItem Text="Light Plan" Value="LP"></asp:ListItem>
                                                <asp:ListItem Text="Standard Plan" Value="SP"></asp:ListItem>
                                                <asp:ListItem Text="Intensive Plan" Value="IP"></asp:ListItem>
                                                <asp:ListItem Text="Immersion Plan" Value="IMP"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top:20px;">
                                        <div class="col-sm-3" style="padding:10px;">
                                            <label for="classDTStart">Start Date</label>
                                            <asp:TextBox ID="txtCourseDateS" type="date" ClientIDMode="Static" class="frm-cntrl" runat="server" style="width: auto;"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3" style="padding:10px;">
                                            <label for="classDTEnd">Finish Date</label>
                                            <asp:TextBox ID="txtCourseDateF" type="date" ClientIDMode="Static" class="frm-cntrl" runat="server" style="width: auto;"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
							</div>
                        </div>
                        <%--End of Course Selection--%>
                        <%--Accommodation Field--%>
                        <div class="card" style="margin-bottom:10px;">
                            <div class="card-header"><h5>Select Accommodation</h5></div>
                            <div class="card-block">
                                <div class="form-control">
                                    <asp:UpdatePanel ID="upHotel" runat="server" ClientIDMode="Static" >
                                        <ContentTemplate>
                                            <div class="col-md-6">
                                                <label >Accommodation </label>
                                                <asp:DropDownList ID="dpdnAccomo" runat="server" class="frm-cntrl" style="width:100%;" OnSelectedIndexChanged="dpdnAccomo_SelectedIndexChanged" AutoPostBack="true" onchange="showTextBox(this)">
                                                    <asp:ListItem Text="Choose..." Value= "" Selected="True" hidden></asp:ListItem>
                                                    <asp:ListItem Text="Quest Hotel" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="Elizabeth Hotel" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="Golden Prince Hotel & Suites" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="Diamond Suites and Residences" Value="4"></asp:ListItem>
                                                    <asp:ListItem Text="Other Accommodations" Value="5"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-sm-12" style="margin-top:10px;">
                                                <asp:Label ID="lblifOther" runat="server" Text="For other accommodations, please specify: (Hotel Name/Room Type)" style="display:none; font-size:12px;"></asp:Label>
                                                <asp:TextBox ID="txtOtherOption" runat="server" style="display:none; width:600px;"></asp:TextBox>
                                            </div>
                                            <div id="rmType" runat="server" class="form-group col-sm-5" style="display:none;">
                                                <label >Room Type</label>
                                                <asp:DropDownList ID="dpdnRoom" runat="server" class="frm-cntrl" style="width:250px;">
                                                </asp:DropDownList>
                                            </div>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="dpdnAccomo" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                    <%--onchange="showTextBox(this)"
                                        <asp:ListItem Text="Choose..." Value= "" Selected="True" hidden></asp:ListItem>
                                                    <asp:ListItem Text="Executive Suite" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="Junior Suite" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="Premier Deluxe Suite" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="Deluxe Room" Value="4"></asp:ListItem>
                                        --%>
                                    
                                    <div id="dtAccom" runat="server" class="row" style="display:none;">
                                        <div class="col-sm-3" style="padding:10px;">
                                            <label for="roomACCStart">Start Date</label>
                                            <asp:TextBox ID="txtAccDateS" type="date" ClientIDMode="Static" class="frm-cntrl" runat="server" style="width: auto;"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3" style="padding:10px;">
                                            <label for="roomACCEnd">Finish Date</label>
                                            <asp:TextBox ID="txtAccDateF" type="date" ClientIDMode="Static" class="frm-cntrl" runat="server" style="width: auto;"></asp:TextBox>
                                        </div>
                                    </div>
							    </div>
                            </div>
                        </div>
                        <%--End of Accomodation Field--%>
                        <%--Personal Information Field--%>
                        <div class="card">
						    <div class="card-header"><h5>Personal Information</h5></div>
                            <div class="card-block" style="margin-bottom:10px;">
                                <div class="row">
							        <div class="col-sm-5">
							          <label for="title">Title</label>
                                       <asp:TextBox ID="txttitle" type="text" ClientIDMode="Static" class="frm-cntrl" placeholder="Mr/Mrs/Miss" runat="server"></asp:TextBox>
							        </div>
						        </div>
                                <div class="row" style="margin-top:10px;">
							        <div class="col-sm-5" style="padding:10px;">
                                        <label for="fname">Given Name</label>
                                        <asp:TextBox ID="txtfname" type="text" ClientIDMode="Static" class="frm-cntrl" placeholder="Given Name" runat="server" onblur="validateTextbox(this)" style="width:100%;"></asp:TextBox>
                                        <label class="title"><strong style="font-size: 12px;">Please fill in according to the passport description.</strong> </label>
                                        <asp:RequiredFieldValidator ID="rfvFName" ClientIDMode="Static" runat="server" ControlToValidate="txtfname" ErrorMessage="名前を入力してください" ValidationGroup="myValidationGroup" Enabled="true"></asp:RequiredFieldValidator>
							        </div>
							        <div class="col-sm-5" style="padding:10px;">
                                        <label for="lname">Surname</label>
                                        <asp:TextBox ID="txtlname" type="text" ClientIDMode="Static" class="frm-cntrl" placeholder="Surname" runat="server" onblur="validateTextbox(this)" style="width:100%;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvLName" ClientIDMode="Static" runat="server" ControlToValidate="txtlname" ErrorMessage="姓を入力してください" ValidationGroup="myValidationGroup" Enabled="true"></asp:RequiredFieldValidator>
							        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4" style="padding:10px;">
							          <label for="phone">Phone Number</label>
                                      <asp:TextBox ID="txtphone" type="phone" ClientIDMode="Static" class="frm-cntrl" placeholder="Phone Number" runat="server" style="margin-bottom:-2px; width:100%;" onblur="validateTextbox(this)"></asp:TextBox>
                                      <asp:RegularExpressionValidator ID="regNumber" runat="server" ControlToValidate="txtphone" ValidationExpression="\d+" ErrorMessage="正しい番号を入力してください" font-size="Small" ForeColor="IndianRed" style="padding: 0 25px 0;" Enabled="true"></asp:RegularExpressionValidator>
							        </div>
							        <div class="col-sm-4" style="padding:10px;">
							          <label for="email">Email</label>
                                      <asp:TextBox ID="txtemail" type="email" ClientIDMode="Static" class="frm-cntrl" placeholder="Email" runat="server" onblur="validateTextbox(this)" style="width:100%;"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtemail" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ErrorMessage="無効なメールアドレス" font-size="Small" ForeColor="IndianRed" style="padding: 0 25px 0;" Enabled="true"></asp:RegularExpressionValidator>
							        </div>
							        <div class="col-sm-3" style="padding:10px;">
							          <label for="dob">Date of Birth</label>
                                       <asp:TextBox ID="txtdob" type="date" ClientIDMode="Static" class="frm-cntrl" runat="server" style="width:100%;"></asp:TextBox>
							        </div>
							        <div class="col-sm-6">
                                        <label for="gender">Gender</label><br/>
								        <div class="radio-inline">
                                            <label><input id="rdbtnMal" runat="server" ClientIDMode="Static" type="radio" name="sex" value="male" checked  style="height:auto; width:auto; margin: 4px 10px 0 3px;">Male</label>
								        </div>
								        <div class="radio-inline">
                                            <label><input id="rdbtnFem" runat="server" ClientIDMode="Static" type="radio" name="sex" value="female" style="height:auto; width:auto; margin: 4px 10px 0 3px;">Female</label>
								        </div>
							        </div>
						        </div>
                                <div class="row" style="margin-top:20px;">
                                    <div class="col-sm-4">
                                        <label for="nationality">Nationality</label><br/>
                                        <asp:TextBox ID="txtnationality" type="text" ClientIDMode="Static" class="frm-cntrl" runat="server" placeholder="Nationality" style="width:100%;"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="city">City/Town</label><br/>
                                        <asp:TextBox ID="txtcity" type="text" ClientIDMode="Static" class="frm-cntrl" runat="server" placeholder="City/Town" style="width:100%;"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="country">Country</label><br/>
                                        <asp:DropDownList ID="dpCountry" runat="server" ClientIDMode="Static" class="frm-cntrl" style="width:100%;"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row" style="margin-top:20px;">
                                    <div class="col-sm-5">
								        <label for="inputAddress">Address &nbsp;&nbsp;&nbsp;</label>
                                        <asp:TextBox type="label" class="frm-cntrl" ID="txtaddr" runat="server" ClientIDMode="Static" TextMode="MultiLine" style="min-height: 80px; width:100%;"></asp:TextBox>
							        </div>
                                </div>
                            </div>
					    </div>
                        <%--End of Personal Information--%>
                        <%--Additional Information--%>
                        <div class="card">
                            <div class="card-header"><h5>Additional Information</h5></div>
                            <div class="card-block">
                                <div class="form-control">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label >I am making this booking for someone else </label>
                                                    <asp:DropDownList ID="dpdnAddInfo" runat="server" ClientIDMode="Static" class="frm-cntrl" style="width:250px;" AutoPostBack="true" OnSelectedIndexChanged="dpdnAddInfo_SelectedIndexChanged">
                                                        <asp:ListItem Text="Choose..." Value= "" Selected="True" hidden></asp:ListItem>
                                                        <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="No" Value="2"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div id="addInf" runat="server" class="row" style="display:none; margin-top:30px;">
                                                <div class="row">
                                                    <div class="col-sm-5">
							                            <label for="fname">First Name</label>
                                                        <asp:TextBox ID="aFName" type="text" ClientIDMode="Static" class="frm-cntrl" placeholder="First Name" runat="server"></asp:TextBox>
							                        </div>
							                        <div class="col-sm-5">
							                            <label for="lname">Last Name</label>
                                                        <asp:TextBox ID="aLName" type="text" ClientIDMode="Static" class="frm-cntrl" placeholder="Last Name" runat="server"></asp:TextBox>
							                        </div>
                                                </div>
                                                <div class="row" style="margin-top:10px;">
                                                    <div class="col-sm-5">
							                            <label for="email">Email ID</label>
                                                        <asp:TextBox ID="aEmail" type="email" ClientIDMode="Static" class="frm-cntrl" placeholder="email" runat="server"></asp:TextBox>
							                        </div>
                                                    <div class="col-sm-5">
							                            <label for="phone">Phone Number</label>
                                                        <asp:TextBox ID="aPhone" type="phone" ClientIDMode="Static" class="frm-cntrl" runat="server" style="margin-bottom:-2px;"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="aPhone" ValidationExpression="\d+" ErrorMessage="Please enter a valid number" font-size="Small" ForeColor="IndianRed" style="padding: 0 25px 0;"></asp:RegularExpressionValidator>
							                        </div>
                                                 </div>
                                                <div class="row" style="margin-left:20px;">
                                                    <asp:Button class="btn btn-success" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" style="background-color:lightgreen; color:black; width: 100px;"/>
                                                </div>
                                                <div class="row" style="overflow:auto;">
                                                    <div class="card-body">
                                                        <div class="body">
                                                            <div class="table-responsive">
                                                                 <asp:GridView ID="grdAddInfo" AutoGenerateColumns="false" runat="server" OnRowCommand="grdAddInfo_RowCommand" OnRowDataBound="grdAddInfo_RowDataBound" class="table pmd-table table-hover">
                                                                    <Columns>
                                                                        <asp:BoundField DataField="FName" HeaderText="First Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                                                        <asp:BoundField DataField="LName" HeaderText="Last Name" HeaderStyle-BorderStyle="Solid" ItemStyle-HorizontalAlign="Center" />
                                                                        <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                                                        <asp:BoundField DataField="Phone" HeaderText="Phone" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                                                        <asp:TemplateField HeaderText="Action" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:Button ID="btnDel" runat="server" Text="Delete" CommandName="DelRow" Width="80" BackColor="IndianRed" ForeColor="Black" margin-top="10"/>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <RowStyle BackColor="#EFF3FB" />
                                                                    <AlternatingRowStyle BackColor="White" /> 
                                                                    <%--<HeaderStyle BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" Font-Bold="true" />--%>
                                                                </asp:GridView>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                       </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="dpdnAddInfo" EventName="SelectedIndexChanged" />
                                            <asp:AsyncPostBackTrigger ControlID="btnAdd" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </div>
                                 <%--<div class="h-captcha" data-sitekey="46633f59-2537-47a0-8a71-bb70a0ef99e6"></div>--%>
                                <div class="row" style="margin-left:10px; margin-top:20px;">
                                    <%--<button id="btnOpenModal">Open Modal</button>--%>
                                    <div class="g-recaptcha" data-sitekey="6LeCWTMpAAAAAN094Hh73pUFwObcswjgAB260Ra7" style="margin-left:-15px; margin-bottom:10px"></div>
                                    <asp:Button class="btn btn-success" ID="btnOpenModal" runat="server" OnClick="btnOpenModal_Click" data-toggle="modal" ClientIDMode="Static" Value="Submit" Text="Submit" style="background-color:lightgreen; color:black; width: 100px;"/>
                                </div>
                            </div>
                        </div>
                        <%--End of Additional Information--%>
                       
	            </div>
            </div>
             <%--Booking Summary Modal--%>
                     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <div runat="server" id="modalBook" ClientIDMode="Static" class="modal" role="dialog" style="display:none;">
                                <div class="">

                                </div>
                                <div id="mod_Content" runat="server" ClientIDMode="Static" class="modal-content">
                                    <div id="ifEmp" runat="server" class="row" style="display:none; padding: 20px;">
                                        <div class="modal-body">
                                            <h5 class="text-center" style="color: #af0202;"> Some fields are empty! </h5>
                                            <h5 class="text-center" style="color: #af0202;"> Please fill in empty fields! </h5>
                                        </div>
                                        <div class="row text-center">
                                            <asp:Button class="btn btn-success" ID="btnOk" runat="server" OnClick="closeMod_Click" ClientIDMode="Static" Text="Ok" style="background-color:lightgreen; color:black; width: 100px; margin:auto!important;"/>
                                        </div>
                                    </div>
                                    <div id="ifNot" runat="server" class="row" style="display:none; padding: 20px;">
                                        <div class="modal-header" style="padding:0;">
                                            <div class="row" style="width: 100%;"><h3 class="modal-title text-center" style="color: #4b5986;">Booking Summary</h3></div>
                                            <asp:LinkButton ID="closeMod" ClientIDMode="Static" runat="server" style="font-size: xxx-large;" OnClick="closeMod_Click">&times;</asp:LinkButton>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row" style="border-bottom: 1px solid #dee2e6;">
                                                <fieldset class="scheduler-border">
                                                    <legend class="scheduler-border" style="color: #4b5986;">Course/Plan</legend>
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <label >Course : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="modCourse" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <label >Plan : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="modPlan" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="margin-top:20px;">
                                                        <div class="col-sm-6">
                                                            <label for="classDTStart">Start Date : </label>&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="modClassS" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <label for="classDTEnd">Finish Date : </label>&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="modClassF" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>
                                            <div class="row" style="margin-top:5px; border-bottom: 1px solid #dee2e6;">
                                                <fieldset class="scheduler-border">
                                                    <legend class="scheduler-border" style="color: #4b5986;">Accommodation</legend>
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <label>Hotel : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lblHotel" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div id="ifQuest" runat="server" ClientIDMode="Static" class="col-sm-6" style="display:none;">
                                                            <label>Room : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lblRoomType" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div id="ifOthers" runat="server" ClientIDMode="Static" class="col-sm-12" style="display:none;">
                                                            <asp:Label ID="lblOthers" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-weight: 500;"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <label>Start Date :</label>&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="lblAccDateS" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <label>Finish Date :</label>&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="lblAccDateF" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>
                                            <div class="row" style="margin-top:5px">
                                                <fieldset class="scheduler-border">
                                                    <legend class="scheduler-border" style="color: #4b5986;">Personal Information</legend>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <label>Title : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lbltitle" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div class="col-sm-12">
                                                            <label>Name : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lblName" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <label>Date of Birth : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lbldob" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="margin-top:10px;">
                                                        <div class="col-sm-4">
                                                            <label>Gender : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lblgender" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <label>Email : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lblemail" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 16px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <label>Phone : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lblphone" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="margin-top:10px; border-bottom: 1px solid #dee2e6;">
                                                        <div class="col-sm-6">
                                                            <label>Country : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lblCountry" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <label>City : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lblCity" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <label>Nationality : </label>&nbsp;&nbsp;
                                                            <asp:Label ID="lblnationality" runat="server" class="frm-cntrl" Text="" ClientIDMode="Static" style="font-size: 18px; font-weight: 500;"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="margin-top:10px;">
								                        <label>Address : </label>
                                                        <asp:TextBox type="text" class="frm-cntrl" ID="lblAddres" runat="server" placeholder="Adress" name="reason" TextMode="MultiLine" Wrap="true" ReadOnly="true" style="height: 60px; font-weight: 500; border:0;"></asp:TextBox>
                                                    </div>
                                                </fieldset>
                                            </div>
                                            <div class="row">
                                                <fieldset class="scheduler-border">
                                                    <legend class="scheduler-border" style="color: #4b5986;">Additional Information</legend>
                                                    <asp:Label ID="lblAddIn" runat="server" ClientIDMode="Static" Text="No Additional Info." Visible="false"></asp:Label>
                                                    <div class="row">
                                                        <div class="table-responsive">
                                                            <asp:GridView ID="gdvDis" ClientIDMode="Static" AutoGenerateColumns="false" runat="server" class="table pmd-table table-hover">
                                                                <Columns>
                                                                    <asp:BoundField DataField="FName" HeaderText="First Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                                                    <asp:BoundField DataField="LName" HeaderText="Last Name" HeaderStyle-BorderStyle="Solid" ItemStyle-HorizontalAlign="Center" />
                                                                    <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                                                    <asp:BoundField DataField="Phone" HeaderText="Phone" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                                                </Columns>
                                                                <RowStyle BackColor="#EFF3FB" />
                                                                <AlternatingRowStyle BackColor="White" /> 
                                                                <%--<HeaderStyle BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" Font-Bold="true" />--%>
                                                            </asp:GridView>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <asp:Button ID="btnCancelBook" class="btn btn-secondary" runat="server" Text="Cancel" OnClick="closeMod_Click" style="background-color:darkgray; color:black; width: 100px;"/>
                                            <asp:Button ID="btnSaveBook" class="btn btn-success" runat="server" Text="Send" OnClick="btnSaveBook_Click" style="background-color:lightgreen; color:black; width: 100px;"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnOpenModal"/>
                        </Triggers>
                    </asp:UpdatePanel>
                     
        </div>
    </section>
</asp:Content>
<asp:Content ID="jsS" ContentPlaceHolderID="forJScript" runat="server">
    <script>
        function showTextBox(ddl) {
            var txt = document.getElementById('<%= txtOtherOption.ClientID %>');
            var txt2 = document.getElementById('<%= lblifOther.ClientID %>');
            var dpdn = document.getElementById('<%= rmType.ClientID %>');
            var dpdnDT = document.getElementById('<%= dtAccom.ClientID %>');
            if (ddl.value == "6") {
                txt.style.display = "block";
                txt2.style.display = "block";
                dpdn.style.display = "none";
                dpdnDT.style.display = "flex";
            } else {
                txt2.style.display = "none";
                txt.style.display = "none";
                dpdn.style.display = "block";
                dpdnDT.style.display = "flex";
            }
        }
        $(document).ready(function () {
            const openModalButton = $("#btnOpenModal");
            const modald = $("#modalBook");
            $('#modalBook').click(function (event) {
                if (event.target == this) {
                    $(this).modal.style.display('none');
                }
            });
            $(document).click(function (event) {
                if (!$(event.target).closest('.modal-content').length && !$(event.target).is(openModalButton)) {
                    modald.fadeOut();
                }
            });
        });
        function validateTextbox(textbox) {
            if (textbox.value == '') {
                textbox.classList.add('red-glow');
            } else {
                textbox.classList.remove('red-glow');
            }
        }

    </script>
</asp:Content>