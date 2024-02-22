using System;
using System.Data.OleDb;
using System.Data;
using System.Configuration;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void lblHomeMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
        protected void lblPlans_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Plan");
        }
        protected void lblGall_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs/Gallery");
        }
        protected void lblMess_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs/Message");
        }
        protected void lblStrength_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs/Strength");
        }
        protected void lblBusEng_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Course/BusinessEng");
        }
        protected void lblCusRel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Course/CustomerRel");
        }
        protected void lblFamEng_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Course/FamilyEng");
        }
        protected void lblGenEng_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Course/GeneralEng");
        }
        protected void lblIELTS_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Course/IELTS");
        }
        protected void lblPracEng_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Course/PracticalEng");
        }
        protected void lblTOEIC_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Course/TOEIC");
        }
        protected void lblYLEng_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Course/YoungLearners");
        }
        protected void lblReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register");
        }
        protected void lblLog_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Login");

        }
        protected void lblStren_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Strenth");
        }
        protected void lblWhy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WhyCebu");
        }
        protected void lblEnroll_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Booking");
        }
        protected void lnkbtnEsti_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Estimate");
        }
        protected void lnkbtnEnroll_Click(object sender, EventArgs e)
        {
            string data = Guid.NewGuid().ToString();
            //string md5Hash = WebApplication1.Hashing.CalculateMD5Hash(data);
            //string sha1Hash = WebApplication1.Hashing.CalculateSHA1Hash(data);
            //string sha256Hash = WebApplication1.Hashing.CalculateSHA256Hash(data);
            Response.Redirect("~/Booking?bid=" + data);
        }
        protected void lnkbtnAddFriend_Click(object sender, EventArgs e)
        {
            string lineFriendID = "3D1446101138";
            //string lineAddFriendUrl = "https://line.me/R/ti/p/" + lineFriendID;
            string lineAddFriendUrl = "https://access.line.me/oauth2/v2.1/login?returnUri=%2Foauth2%2Fv2.1%2Fauthorize%2Fconsent%3Fresponse_type%3Dcode%26client_id%" + lineFriendID + "%26state%3D2f4d4b2026d1905676b261ea304480%26redirect_uri%3Dhttps%253A%252F%252Fsocial-plugins.line.me%252Fwidget%252FloginCallback%253FreturnUrl%253Dhttps%25253A%25252F%25252Fsocial-plugins.line.me%25252Fwidget%25252Fclose%26scope%3Dopenid%2Bprofile%2Bfriends%2Bgroups%2Btimeline.post%2Bmessage.write&loginChannelId=1446101138&loginState=hct8lC8fYWEWIiADohqVvf#/";
            string script = "window.open('" + lineAddFriendUrl + "', '_blank')";
            ScriptManager.RegisterStartupScript(this, GetType(), "OpenNewTab", script, true);
        }
    }
    
}