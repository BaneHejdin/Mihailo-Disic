using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rad_za_ocenu
{
    public partial class prijava : System.Web.UI.Page
    {
        public string ime
        {
            get { return txtImeiPrezime.Text; }
        }
        public string email
        {
            get { return txtEmail.Text; }
        }
        public string god
        {
            get { return txtAge.Text; }
        }
        public string raz
        {
            get { return RadioButtonList1.Text; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnPosalji_Click(object sender, EventArgs e)
        {
            if (txtImeiPrezimeValidator.IsValid && txtEmailValidator.IsValid
                               && txtEmailExpression.IsValid && txtEmailConfirm.IsValid &&
                               PorediEmailValidator.IsValid && RequiredFieldValidator1.IsValid &&
                                RequiredFieldValidator2.IsValid)
            {
                btnPosalji.PostBackUrl = "izvestaj.aspx";
                lblPoruka.Text = "Ispravno su popunjena sva polja.";
            }

            else
                lblPoruka.Text = "Neka polja nisu ipravno popunjena!";
        }
    }
}