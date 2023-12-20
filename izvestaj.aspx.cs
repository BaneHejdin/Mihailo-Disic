using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rad_za_ocenu
{
    public partial class izvestaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null)
                lbl_izv.Text=PreviousPage.ime + " ("+ PreviousPage.email + ") , rodjen " + PreviousPage.god + " . godine, učenik "
                + PreviousPage.raz + " razreda , uspešno je popunio obrazac za prijavu. ";
        }
    }
}