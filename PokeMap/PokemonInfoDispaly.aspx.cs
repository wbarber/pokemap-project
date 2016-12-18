using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;
using System.Data.OleDb;

namespace PokeMap
{
    public partial class PokemonInfoDispaly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connectionString = "Provider=Microsoft.Jet.Oledb.4.0;Data Source=~\\excelData\\PokemonInfo.xlsx; Extended Properties=Excel 8.0";
            OleDbConnection connection = new OleDbConnection(connectionString);

        }
    }
}