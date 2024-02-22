using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.AboutUs
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // Code that might throw an exception
            }
            catch (Exception ex)
            {
                // Handle the exception, log it, and provide a user-friendly error message
                // Log the exception for debugging purposes
                Console.WriteLine("An error occurred: " + ex.Message);
                // Provide a user-friendly error message
                Response.Write("An error occurred while processing your request. Please try again later.");
            }
        }
    }
}