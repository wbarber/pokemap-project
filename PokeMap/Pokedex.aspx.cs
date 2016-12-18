using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //one listner for all buttons.  need to tie this into all buttons.  example - button1.click += button_Click;
        protected void button_click(object sender, ImageClickEventArgs e)
        {
            string ID = "";
            ImageButton b = (ImageButton)sender;  // sender of event will be the button the was clicked.  can get the ID and use in query
            ID = b.ID;

            //storing ID in session state and redirecting to the PokemonInfoDisplay code behind page.
            Session["idTracker"] = ID;
            Response.Redirect("PokemonInfoDispaly.aspx");
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            switch (Request.QueryString["theme"])
            {
                case "Instinct":
                    Page.Theme = "Instinct";
                    break;
                case "Mystic":
                    Page.Theme = "Mystic";
                    break;
                case "Valor":
                    Page.Theme = "Valor";
                    break;
            }
        }


        protected void Instinct_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Pokedex.aspx?theme=Instinct");
        }

        protected void Mystic_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Pokedex.aspx?theme=Mystic");
        }

        protected void Valor_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Pokedex.aspx?theme=Valor");
        }
    }
}
    
