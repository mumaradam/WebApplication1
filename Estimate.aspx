<%@ Page Title="Seiha Global Academy/Estimate" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estimate.aspx.cs" Inherits="WebApplication1.Estimate" %>
<asp:Content ID="headBooking" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="AdminAssets/css/style.css"/>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section class="estimate">
        <div class="page-header estimate" style="background-color: white !important;">
            <div class="page-block">
                <div>
                    <h1 class="dark-and-light-blue-line">
                        Study Abroad Quote Calculator     
                    </h1>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 align-self-center">
                    <div class="card" style="margin-top:20px; margin-bottom:10px;flex-direction: row;">
                        <div class="col-md-6">
                            <div class="card-header"><h5>Estimate</h5></div>
                            <div class="card-block" style="background-color:#f8f8ff;">
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
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card-header"><h5>Summary</h5></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
