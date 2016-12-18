using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PokeMap
{
    public partial class PokeMapHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void imgbtnPokedex_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Pokedex.aspx");
        }

    }
}