<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PokemonInfoDispaly.aspx.cs" Inherits="PokeMap.PokemonInfoDispaly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="header">
        <img src="images/PokeMapLogo.png" width="300" />
    </div>
    <form id="PokemonInfoDisplay_Form" runat="server">
    <div>
        <asp:GridView ID="PokemonInfoDisplay_GridView" runat="server" Height="431px" style="margin-left: 100px" Width="1382px">

        </asp:GridView>
    </div>
    </form>
</body>
</html>
