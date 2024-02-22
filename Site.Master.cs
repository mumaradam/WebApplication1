using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = Request.Url.AbsolutePath;
            if(currentPage.EndsWith("Login.aspx")){
                lblAboutUs.CssClass = "";
                lblPlans.CssClass = "";
                lblCourse.CssClass = "";
                //lblAct.CssClass = "";
                lblBull.CssClass = "";
                lblGall.CssClass = "";
            }
            else if (currentPage.EndsWith("History.aspx") || currentPage.EndsWith("Message.aspx") || currentPage.EndsWith("Strength.aspx") || currentPage.EndsWith("WhyCebu.aspx") || currentPage.EndsWith("Location.aspx"))
            {
                lblAboutUs.CssClass = "active";
                lblPlans.CssClass = "";
                lblCourse.CssClass = "";
                //lblAct.CssClass = "";
                lblBull.CssClass = "";
                lblGall.CssClass = "";
            }
            else if (currentPage.EndsWith("Plan.aspx") || currentPage.EndsWith("Procedure.aspx"))
            {
                lblAboutUs.CssClass = "";
                lblPlans.CssClass = "active";
                lblCourse.CssClass = "";
                //lblAct.CssClass = "";
                lblBull.CssClass = "";
                lblGall.CssClass = "";
            }
            else if (currentPage.EndsWith("Gallery.aspx") || currentPage.EndsWith("Activities.aspx"))
            {
                lblAboutUs.CssClass = "";
                lblPlans.CssClass = "";
                lblCourse.CssClass = "";
                //lblAct.CssClass = "";
                lblBull.CssClass = "";
                lblGall.CssClass = "active";
            }

            else if (currentPage.EndsWith("BusinessEng.aspx") || currentPage.EndsWith("CustomerRel.aspx") || currentPage.EndsWith("FamilyEng.aspx") || currentPage.EndsWith("GeneralEng.aspx") || currentPage.EndsWith("IELTS.aspx") || currentPage.EndsWith("PracticalEng.aspx") || currentPage.EndsWith("TOEIC.aspx") || currentPage.EndsWith("YoungLearners.aspx"))
            {
                lblAboutUs.CssClass = "";
                lblPlans.CssClass = "";
                lblCourse.CssClass = "active";
                //lblAct.CssClass = "";
                lblBull.CssClass = "";
                lblGall.CssClass = "";
            }
            
            else
            {
                lblAboutUs.CssClass = "";
                lblPlans.CssClass = "";
                lblCourse.CssClass = "";
                //lblAct.CssClass = "";
                lblBull.CssClass = "";
                lblGall.CssClass = "";
            }
            
        }
        protected void lblHomeMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
        protected void lblHis_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("~/AboutUs/History");
                //string historyUrl = VirtualPathUtility.ToAbsolute("./AboutUs/History");
                //System.Diagnostics.Debug.WriteLine("Redirect URL: " + historyUrl);
                //Response.Redirect(historyUrl);
            }
            catch (Exception ex)
            {
                // Log the exception details
                System.Diagnostics.Debug.WriteLine("Error during redirection: " + ex.Message);
                // Handle the exception as needed
            }
        }
        protected void lblPlans_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Plan");
        }
        protected void lblGall_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs/Gallery");
        }
        protected void lblAct_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs/Activities");
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
            Response.Redirect("~/AboutUs/Strength");
        }
        protected void lblWhy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs/WhyCebu");
        }
        protected void lblEnroll_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Booking");
            
        }
        protected void lnkbtnPhotos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Photos");
        }
        protected void lblLocation_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Location");
        }
        protected void lnkbtnNews_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Bulletin/News");
        }
        protected void lnkbtnFAQ_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Bulletin/FAQ");
        }
        protected void lnkbtnTestimonials_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Bulletin/Testimonials");
        }
        protected void lnkbtnProcedure_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procedure");
        }
    }
}