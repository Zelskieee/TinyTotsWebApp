using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinyTotsWebApp
{
    public partial class Homepage : System.Web.UI.Page
    {
        // Define a Boolean variable to represent gender
        private bool isBoy;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Run this code only on the initial page load
                var img = Resource1.Logo_Tadika_Arep;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle the dropdown selection change event (if needed)
        }

        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            // Handle the RadioButton selection event
            RadioButton selectedRadioButton = (RadioButton)sender;

            if (selectedRadioButton.ID == "RadioButton1")
            {
                // "Boy" is selected
                isBoy = true;
            }
            else if (selectedRadioButton.ID == "RadioButton2")
            {
                // "Girl" is selected
                isBoy = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string firstName = TextBox1.Text; // Get the value from the first name TextBox

            // Generate a message based on the gender Boolean value
            string genderMessage = isBoy ? "Boy" : "Girl";

            // Update the "SubmitLabel" control with a greeting message
            SubmitLabel.Text = "Thank you " + firstName + "! You have submitted the registration form on " + DateTime.Now.ToString();
        }
    }
}
