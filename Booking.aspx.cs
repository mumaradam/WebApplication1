using System;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;
using System.Drawing;
using System.Collections.Generic;
using System.Net;
using System.Net.Mail;
using Newtonsoft.Json;
using System.Data;
using System.Text;

namespace WebApplication1
{
	public partial class Booking : System.Web.UI.Page
	{
        DataTable dt3 = new DataTable();
        string[] countries = {"Choose...",
        "Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Antigua and Barbuda", "Argentina", "Armenia", "Australia", "Austria",
        "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bhutan",
        "Bolivia", "Bosnia and Herzegovina", "Botswana", "Brazil", "Brunei", "Bulgaria", "Burkina Faso", "Burundi", "Cabo Verde", "Cambodia",
        "Cameroon", "Canada", "Central African Republic", "Chad", "Chile", "China", "Colombia", "Comoros", "Democratic Republic of the Congo", "Republic of the Congo",
        "Costa Rica", "Cote d'Ivoire", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic",
        "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Eswatini", "Ethiopia", "Fiji", "Finland",
        "France", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Greece", "Grenada", "Guatemala", "Guinea",
        "Guinea-Bissau", "Guyana", "Haiti", "Honduras", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq",
        "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Kosovo",
        "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania",
        "Luxembourg", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Mauritania", "Mauritius",
        "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro", "Morocco", "Mozambique", "Myanmar", "Namibia",
        "Nauru", "Nepal", "Netherlands", "New Zealand", "Nicaragua", "Niger", "Nigeria", "North Korea", "North Macedonia", "Norway",
        "Oman", "Pakistan", "Palau", "Palestine", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Poland",
        "Portugal", "Qatar", "Romania", "Russia", "Rwanda", "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Samoa", "San Marino",
        "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia",
        "Solomon Islands", "Somalia", "South Africa", "South Korea", "South Sudan", "Spain", "Sri Lanka", "Sudan", "Suriname", "Sweden", "Switzerland", "Syria", 
        "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Timor-Leste", "Togo", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", 
        "Turkmenistan", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States of America", "Uruguay", 
        "Uzbekistan", "Vanuatu", "Vatican City", "Venezuela", "Vietnam", "Yemen", "Zambia", "Zimbabwe"
         };
        string[] Quest_Hotel = { "Choose...", "Executive Suite", "Junior Suite", "Premier Deluxe Room", "Deluxe Room" };
        string[] Elizabeth_Hotel = { "Choose...", "Deluxe King Room", "Deluxe Twin Room", "Deluxe Twin Room", "Junior Suite", "Executive Suite" };
        string[] Golden_Prince = { "Choose...", "Golden Prince Suite", "Royal One Bedroom Suite", " Royal Two Bedroom Suite", "Deluxe Premier", "Deluxe Room" };
        string[] Diamond_Suites = { "Choose...", "Deluxe Twin Room", "Superior Twin Room", "Premium Superior Twin Room" };
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                //dpdnAccomo.Attributes.Add("onchange", "showTextBox(this);");
                loadCountry();
                dpdnAddInfo.SelectedIndex = 0;
                rfvFName.Enabled = true;
                rfvLName.Enabled = true;
            }
            else
            {

            }
			
		}
        protected void loadCountry()
        {
            dpCountry.DataSource = countries;
            dpCountry.DataBind();
            dpCountry.Items[0].Attributes.Add("disabled", "disabled");
            dpCountry.SelectedIndex = 0;
        }
        protected void dpdnAccomo_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Clear previous items in dpdnRoom DropDownList
            dpdnRoom.Items.Clear();

            // Get the selected value from dpdnAccomo
            string selectedAccomo = dpdnAccomo.SelectedValue;
            if (selectedAccomo == "1") // Quest Hotel
            {
                lblifOther.Style.Add("display", "none");
                txtOtherOption.Style.Add("display", "none");
                rmType.Style.Add("display", "block");
                dpdnRoom.DataSource = Quest_Hotel;
                dpdnRoom.DataBind();
                dpdnRoom.Items[0].Attributes.Add("disabled", "disabled");
                dpdnRoom.Items[1].Attributes.Add("value", "EXS");
                dpdnRoom.SelectedIndex = 0;
            }
            else if (selectedAccomo == "2") // Elizabeth Hotel
            {
                // Populate dpdnRoom with Elizabeth Hotel room types
                lblifOther.Style.Add("display", "none");
                txtOtherOption.Style.Add("display", "none");
                rmType.Style.Add("display", "block");
                dpdnRoom.DataSource = Elizabeth_Hotel;
                dpdnRoom.DataBind();
                dpdnRoom.Items[0].Attributes.Add("disabled", "disabled");
                dpdnRoom.SelectedIndex = 0;
            }
            else if (selectedAccomo == "3") // Golden Prince Hotel & Suites
            {
                // Populate dpdnRoom with Golden Prince Hotel room types
                lblifOther.Style.Add("display", "none");
                txtOtherOption.Style.Add("display", "none");
                rmType.Style.Add("display", "block");
                dpdnRoom.DataSource = Golden_Prince;
                dpdnRoom.DataBind();
                dpdnRoom.Items[0].Attributes.Add("disabled", "disabled");
                dpdnRoom.SelectedIndex = 0;
            }
            else if (selectedAccomo == "4") // Diamond Suites and Residences
            {
                // Populate dpdnRoom with Diamond Suites room types
                lblifOther.Style.Add("display", "none");
                txtOtherOption.Style.Add("display", "none");
                rmType.Style.Add("display", "block");
                dpdnRoom.DataSource = Diamond_Suites;
                dpdnRoom.DataBind();
                dpdnRoom.Items[0].Attributes.Add("disabled", "disabled");
                dpdnRoom.SelectedIndex = 0;
            }
            else
            {
                lblifOther.Style.Add("display","block");
                txtOtherOption.Style.Add("display","block");
                rmType.Style.Add("display", "none");
            }
        }
        protected void dpdnAddInfo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dpdnAddInfo.SelectedValue == "1")
            {
                addInf.Style.Add("display", "block");
            }
            else
            {
                addInf.Style.Add("display", "none");
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("FName"), new DataColumn("LName"), new DataColumn("Email"), new DataColumn("Phone") });
            if (aFName.Text != "" || aLName.Text != "")
            {
                if (grdAddInfo.Rows.Count > 0)
                {
                    // Add existing rows to the DataTable
                    foreach (GridViewRow row in grdAddInfo.Rows)
                    {
                        string fname = row.Cells[0].Text;
                        string lname = row.Cells[1].Text;
                        string email = row.Cells[2].Text;
                        string phone = row.Cells[3].Text;

                        dt.Rows.Add(fname, lname, email, phone);
                    }
                }

                // Add new row to the DataTable
                string newFName = aFName.Text;
                string newLName = aLName.Text;
                string newEmail = aEmail.Text;
                string newPhone = aPhone.Text;

                dt.Rows.Add(newFName, newLName, newEmail, newPhone);
                ViewState["dt"] = dt;
                // Bind the DataTable to the GridView
                grdAddInfo.DataSource = dt;
                grdAddInfo.DataBind();
                gdvDis.DataSource = dt;
                gdvDis.DataBind();
                //Clear textboxes after add
                aFName.Text = "";
                aLName.Text = "";
                aEmail.Text = "";
                aPhone.Text = "";

            }
            

           
        }
        protected void grdAddInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "DelRow"){
                DataTable dt = ViewState["dt"] as DataTable;
                dt.Rows.RemoveAt(rowIndex);
                ViewState["dt"] = dt;
                grdAddInfo.DataSource = dt;
                grdAddInfo.DataBind();
                gdvDis.DataSource = dt;
                gdvDis.DataBind();
            }
           
        }
        protected void grdAddInfo_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int rowIndex = e.Row.RowIndex;
                Button btnDel = (Button)e.Row.FindControl("btnDel");
                btnDel.CommandArgument = rowIndex.ToString(); // Set the CommandArgument of the delete button to the index of the row
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
        protected void btnOpenModal_Click(object sender, EventArgs e)
        {
            if (dpdnCourse.SelectedIndex == 0 || dpdnPlan.SelectedIndex == 0)
            {

                modalBook.Style.Add("display", "block");
                ifEmp.Style.Add("display", "block");
                ifNot.Style.Add("display", "none");
                mod_Content.Style.Add("top","50%");
            }
            else
            {
                if (Page.IsValid)
                {
                    if (txtfname.Text == "" && txtlname.Text == "" && txtemail.Text == "" && txtphone.Text == "")
                    {
                        mod_Content.Style.Add("top", "50%");
                        modalBook.Style.Add("display", "block");
                        ifEmp.Style.Add("display", "block");
                        ifNot.Style.Add("display", "none");
                    }
                    else
                    {
                        string secretKey = "6LeCWTMpAAAAABqbIdAbMxrrHz0tE1-YV2IXDO43"; // Replace with your Secret Key
                        string captchaResponse = Request.Form["g-recaptcha-response"];
                        using (var client = new WebClient())
                        {
                            var googleReply = client.DownloadString("https://www.google.com/recaptcha/api/siteverify?secret=" + secretKey + "&response=" + captchaResponse);

                            var captchaResponseData = JsonConvert.DeserializeObject<ReCaptchaResponse>(googleReply);

                            if (captchaResponseData.Success)
                            {
                                // reCAPTCHA verification successful - Process your form submission here
                                // Your code to handle the form submission
                                // Perform required action
                                modalBook.Style.Add("display", "block");
                                ifNot.Style.Add("display", "block");
                                ifEmp.Style.Add("display", "none");
                                displayModal();
                                mod_Content.Style.Add("top", "5%");
                            }
                            else
                            {
                                // reCAPTCHA verification failed
                                // Handle the error or inform the user
                                Response.Write("reCAPTCHA verification failed");
                            }
                        }
                    }
                    
                }
                else
                {
                    mod_Content.Style.Add("top", "50%");
                    modalBook.Style.Add("display", "block");
                    ifEmp.Style.Add("display", "block");
                    ifNot.Style.Add("display", "none");
                    // Display error message
                }
            }
            
            
        }
        public class ReCaptchaResponse
        {
            public bool Success { get; set; }
            public string ChallengeTs { get; set; }
            public string Hostname { get; set; }
            [JsonProperty("error-codes")]
            public List<string> ErrorCodes { get; set; }
        }
        protected void displayModal()
        {
            //Course and Plan
            modCourse.Text = dpdnCourse.SelectedItem.Text;
            modPlan.Text = dpdnPlan.SelectedItem.Text;
            modClassS.Text = txtCourseDateS.Text;
            modClassF.Text = txtCourseDateF.Text;
            //Accommodation
            lblHotel.Text = dpdnAccomo.SelectedItem.Text;
            if(dpdnAccomo.SelectedIndex != 5)
            {
                ifQuest.Style.Add("display", "block");
                ifOthers.Style.Add("display", "none");
                lblOthers.Text = "";
                lblRoomType.Text = dpdnRoom.SelectedItem.Text;
                lblAccDateS.Text = txtAccDateS.Text;
                lblAccDateF.Text = txtAccDateF.Text;
            }
            else if (dpdnAccomo.SelectedIndex == 5)
            {
                ifOthers.Style.Add("display", "block");
                ifQuest.Style.Add("display", "none");
                lblOthers.Text = txtOtherOption.Text;
                lblRoomType.Text = "";
                lblAccDateS.Text = txtAccDateS.Text;
                lblAccDateF.Text = txtAccDateF.Text;
            }
            else
            {
                lblHotel.Text = "";
            }
            //Personal Information
            lbltitle.Text = txttitle.Text;
            lblName.Text = txtfname.Text + " " + txtlname.Text;
            lbldob.Text = txtdob.Text;
            lblemail.Text = txtemail.Text;
            lblphone.Text = txtphone.Text;
            if(rdbtnMal.Checked == true){
                lblgender.Text = "Male";
            }
            else
            {
                lblgender.Text = "Female";
            }
            lblnationality.Text = txtnationality.Text;
            lblCity.Text = txtcity.Text;
            lblCountry.Text = dpCountry.SelectedItem.Text;
            lblAddres.Text = txtaddr.Text;
            //Addition Information
            if(gdvDis.Rows.Count > 0)
            {
                lblAddIn.Visible = false;
            }
            else
            {
                lblAddIn.Visible = true;
            }
        }
        protected void closeMod_Click(object sender, EventArgs e)
        {
            modalBook.Style.Add("display", "none");
        }
        protected void btnSaveBook_Click(object sender, EventArgs e)
        {
            if (txtemail.Text != "")
            {
                sendE(txtemail.Text, "Application to Study Abroad");
                modalBook.Style.Add("display", "none");
                string data = Guid.NewGuid().ToString();
                Response.Redirect("~/Booking?bid=" + data);
            }
            
        }
        protected string getModalContent()
        {
            string rmtype = "";
            string gndr = "";
            string selectedAccomo = dpdnAccomo.SelectedValue;

            if (selectedAccomo != "5") { rmtype = "Room: " + dpdnRoom.Text; } else { rmtype = txtOtherOption.Text; }
            if (rdbtnMal.Checked == true) { gndr = "Male"; } else { gndr = "Female"; }

            // Assuming your GridView is named "myGridView"
            DataTable dt = ViewState["dt"] as DataTable;
            string gridViewDataAsString = ConvertDataSourceToString(dt);

            string modalContent = @"
        Dear Student,
        Thank you for booking with us. 
        
        This is the Booking Summary:

        Course/Plan
        ------------
        Course: " + modCourse.Text + "                  Plan: " + modPlan.Text + @"
        Start Date: " + modClassS.Text + "              Finish Date: " + modClassF.Text + @"
        
        Accommodation
        -------------
        Hotel : " + dpdnAccomo.SelectedItem.ToString() + @"
        " + rmtype + @"
        Start Date: " + txtAccDateS.Text + "            Finish Date: " + txtAccDateF.Text + @"
        
        Personal Information
        --------------------
        Title: " + txttitle.Text + @"
        Name : " + txtlname.Text + ", " + txtfname.Text + @"   
        Date of Birth : " + txtdob.Text + @"
        Gender: " + gndr + @"
        Email: " + txtemail.Text + @"  
        Phone: " + txtphone.Text + @"

        Country: " + dpCountry.Text + @"
        City: " + txtcity.Text + @" 
        Nationality: " + txtnationality.Text + @"

        Address: " + txtaddr.Text + @"


        Additional Information
        ----------------------
        " + gridViewDataAsString + @"        

        One of our representative will contact you for further information.
        There is no need to reply to this message.
        Thank you! Have a nice Day!";
            return modalContent;

        }
        protected void sendE(string strRepEmail, string strESubject)
        {
            // Email Configuration
            string mAddressFrom = "no-reply@seihaglobalacademy.com";
            string mAddressTo = strRepEmail;
            // Sending Email
            try
            {
                //string modalHTML = modalBook.InnerHtml;
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(mAddressFrom); // Sender's email address
                mail.To.Add(mAddressTo); // Receiver's email address
                mail.Bcc.Add("customerservice@seihaglobalacademy.com, uptalk.itmumar@gmail.com, shutaro_nishii@seiha.com, yuka_iguchi@seiha.com, fumie_kawashima@seiha.com, maryannsato.seiha.kumamoto@gmail.com");
                mail.Subject = strESubject; // Email subject
                mail.Body = getModalContent(); ; // Body of the email containing the modal content

                SmtpClient smtp = new SmtpClient("smtp.ionos.com"); // Your SMTP server details
                smtp.Port = 587; // Specify your SMTP port
                smtp.Credentials = new NetworkCredential("customerservice@seihaglobalacademy.com", "Seiha0615"); // Your SMTP credentials
                smtp.EnableSsl = true; // Enable SSL if required

                smtp.Send(mail); // Send the email
                // You can add success messages or other logic here


            }
            catch (Exception ex)
            {
                Response.Write(@"<script> alert(" + ex.Message + ") </script>");
                // Handle exceptions or show error messages here
            }
        }
        protected string ConvertDataSourceToString(DataTable dtable)
        {
            DataTable dataTable = dtable as DataTable;
            StringBuilder sb = new StringBuilder();
            // Check if the GridView has a data source and if it's a DataTable
            if (dataTable != null)
            {
                // Loop through each column in the row
                foreach (DataRow row in dataTable.Rows)
                {
                    // Append the column value to the StringBuilder
                    sb.AppendFormat("Name: {1}, {0} | Email: {2} | Phone: {3}\n",
                        row["FName"], row["LName"], row["Email"], row["Phone"]);
                }
                return sb.ToString(); // Return the constructed string
            }
            else
            {
                return "No Additional information.";
            }
        }
	}
}