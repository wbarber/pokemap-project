<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pokedex.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/main.css" rel="stylesheet" />
    <title></title>
</head>

<body>

    <form id="form1" runat="server">

        <div class="container"> 
               
            <div class="navbar navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                    <img src="images/Pokedexlogo.png" width="500" style="opacity:10;" />
                        <%--Theme buttons--%>
                        <asp:ImageButton ID="Instinct" runat="server" ImageUrl="~/images/Icons/instinctIcon.png" OnClick="Instinct_Click" Height="150px" Width="150" CssClass="floatRight" /> 
                        <asp:ImageButton ID="Valor" runat="server" ImageUrl="~/images/Icons/valorIcon.png" OnClick="Valor_Click" Height="150px" Width="150" CssClass="floatRight"/>
                        <asp:ImageButton ID="Mystic" runat="server" ImageUrl="~/images/Icons/mysticIcon.png" OnClick="Mystic_Click" Height="150px" Width="150" CssClass="floatRight"/>
                        
                        <div class="input-group">
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Go!</button>
                        </span>
                        <input type="text" class="form-control" placeholder="Search for..." />
                        </div>
                    </div>
                </div>
            </div>
            
                   
            <div class="row">
        
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Bulbasaur</p>
                    <asp:ImageButton ID="ImageButton1" runat="server"   ImageUrl="Images/001.png" onclick="button_click" CssClass="imgcenter" />
                    <p>Pokedex #001</p>
                    <p>Grass | Poison</p>
                    
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Ivysaur</p>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="Images/002.png" onclick="button_click" CssClass="imgcenter" />
                    <p>Pokedex #002</p>
                    <p>Grass | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Venusaur</p>
                    <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="Images/003.png" onclick="button_click" CssClass="imgcenter"/>
                    <p>Pokedex #003</p>
                    <p>Grass | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Charmander</p>
                    <asp:ImageButton ID="ImageButton4" runat="server"  ImageUrl="Images/004.png" onclick="button_click" CssClass="imgcenter"/>
                    <p>Pokedex #004</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Charmeleon</p>
                    <asp:ImageButton ID="ImageButton5" runat="server"  ImageUrl="Images/005.png" onclick="button_click" CssClass="imgcenter"/>
                    <p>Pokedex #005</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Charizard</p>
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="Images/006.png" onclick="button_click"  CssClass="imgcenter" />
                    <p>Pokedex #006</p>
                    <p>Fire | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Squirtle</p>
                    <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="Images/007.png" onclick="button_click"  CssClass="imgcenter"/>
                    <p>Pokedex #007</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Wartortle</p>
                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="Images/008.png"  onclick="button_click" CssClass="imgcenter"/>
                    
                    <p>Pokedex #008</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Blastoise</p>
                    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="Images/009.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #009</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Caterpie</p>
                    <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="Images/010.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #010</p>
                    <p>Bug</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Metapod</p>
                    <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="Images/011.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #011</p>
                    <p>Bug</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Butterfree</p>
                    <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="Images/012.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #012</p>
                    <p>Bug | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Weedle</p>
                    <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="Images/013.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #013</p>
                    <p>Bug | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Kakuna</p>
                    <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="Images/014.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #014</p>
                    <p>Bug | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Beedrill</p>
                    <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="Images/015.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #015</p>
                    <p>Bug | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Pidgey</p>
                    <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="Images/016.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #016</p>
                    <p>Normal | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Pidgeotto</p>
                    <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="Images/017.png"  onclick="button_click" CssClass="imgcenter"/>
                    
                    <p>Pokedex #017</p>
                    <p>Normal | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Pidgeot</p>
                    <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="Images/018.png"  onclick="button_click" CssClass="imgcenter"/>
                    
                    <p>Pokedex #018</p>
                    <p>Normal | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Rattata</p>
                    <asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="Images/019.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #019</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Raticate</p>
                    <asp:ImageButton ID="ImageButton20" runat="server" ImageUrl="Images/020.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #020</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Spearow</p>
                    <asp:ImageButton ID="ImageButton21" runat="server" ImageUrl="Images/021.png" onclick="button_click"  CssClass="imgcenter"/>
                   
                    <p>Pokedex #021</p>
                    <p>Normal | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Fearow</p>
                    <asp:ImageButton ID="ImageButton22" runat="server" ImageUrl="Images/022.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #022</p>
                    <p>Normal | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Ekans</p>
                    <asp:ImageButton ID="ImageButton23" runat="server" ImageUrl="Images/023.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #023</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Arbok</p>
                    <asp:ImageButton ID="ImageButton24" runat="server" ImageUrl="Images/024.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #024</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Pikachu</p>
                    <asp:ImageButton ID="ImageButton25" runat="server" ImageUrl="Images/025.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #025</p>
                    <p>Electric</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Raichu</p>
                    <asp:ImageButton ID="ImageButton26" runat="server" ImageUrl="Images/026.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #026</p>
                    <p>Electric</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Sandshrew</p>
                    <asp:ImageButton ID="ImageButton27" runat="server" ImageUrl="Images/027.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #027</p>
                    <p>Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Sandslash</p>
                    <asp:ImageButton ID="ImageButton28" runat="server" ImageUrl="Images/028.png" onclick="button_click"  CssClass="imgcenter"/>
                   
                    <p>Pokedex #028</p>
                    <p>Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Nidoran</p>
                    <asp:ImageButton ID="ImageButton29" runat="server" ImageUrl="Images/029.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #029</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Nidorina</p>
                    <asp:ImageButton ID="ImageButton30" runat="server" ImageUrl="Images/030.png"  onclick="button_click" CssClass="imgcenter"/>
                    
                    <p>Pokedex #030</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Nidoqueen</p>
                    <asp:ImageButton ID="ImageButton31" runat="server" ImageUrl="Images/031.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #031</p>
                    <p>Poison | Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Nidoran</p>
                    <asp:ImageButton ID="ImageButton32" runat="server" ImageUrl="Images/032.png" onclick="button_click"  CssClass="imgcenter"/>
                   
                    <p>Pokedex #032</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Nidorino</p>
                    <asp:ImageButton ID="ImageButton33" runat="server" ImageUrl="Images/033.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #033</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Nidoking</p>
                    <asp:ImageButton ID="ImageButton34" runat="server" ImageUrl="Images/034.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #034</p>
                    <p>Poison | Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Clefairy</p>
                    <asp:ImageButton ID="ImageButton35" runat="server" ImageUrl="Images/035.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #035</p>
                    <p>Fairy</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Clefable</p>
                    <asp:ImageButton ID="ImageButton36" runat="server" ImageUrl="Images/036.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #036</p>
                    <p>Fairy</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Vulpix</p>
                    <asp:ImageButton ID="ImageButton37" runat="server" ImageUrl="Images/037.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #037</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Ninetales</p>
                    <asp:ImageButton ID="ImageButton38" runat="server" ImageUrl="Images/038.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #038</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Jigglypuff</p>
                    <asp:ImageButton ID="ImageButton39" runat="server" ImageUrl="Images/039.png" onclick="button_click"  CssClass="imgcenter"/>
                   
                    <p>Pokedex #039</p>
                    <p>Normal | Fairy</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Wigglypuff</p>
                    <asp:ImageButton ID="ImageButton40" runat="server" ImageUrl="Images/040.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #040</p>
                    <p>Normal | Fairy</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Zubat</p>
                    <asp:ImageButton ID="ImageButton41" runat="server" ImageUrl="Images/041.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #041</p>
                    <p>Poison | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Golbat</p>
                    <asp:ImageButton ID="ImageButton42" runat="server" ImageUrl="Images/042.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #042</p>
                    <p>Poison | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Oddish</p>
                    <asp:ImageButton ID="ImageButton43" runat="server" ImageUrl="Images/043.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #043</p>
                    <p>Grass | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Gloom</p>
                    <asp:ImageButton ID="ImageButton44" runat="server" ImageUrl="Images/044.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #044</p>
                    <p>Grass | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Vilephume</p>
                    <asp:ImageButton ID="ImageButton45" runat="server" ImageUrl="Images/045.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #045</p>
                    <p>Grass | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Paras</p>
                    <asp:ImageButton ID="ImageButton46" runat="server" ImageUrl="Images/046.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #046</p>
                    <p>Bug | Grass</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Parasect</p>
                    <asp:ImageButton ID="ImageButton47" runat="server" ImageUrl="Images/047.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #047</p>
                    <p>Bug | Grass</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Venonat</p>
                    <asp:ImageButton ID="ImageButton48" runat="server" ImageUrl="Images/048.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #048</p>
                    <p>Bug | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Venomoth</p>
                    <asp:ImageButton ID="ImageButton49" runat="server" ImageUrl="Images/049.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #049</p>
                    <p>Bug | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Diglett</p>
                    <asp:ImageButton ID="ImageButton50" runat="server" ImageUrl="Images/050.png" onclick="button_click"  CssClass="imgcenter"/>
                    
                    <p>Pokedex #050</p>
                    <p>Ground</p>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="thumbnail">
                    <p>Dugtrio</p>
                    <asp:ImageButton ID="ImageButton51" runat="server" ImageUrl="Images/051.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #051</p>
                    <p>Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Meowth</p>
                    <asp:ImageButton ID="ImageButton52" runat="server" ImageUrl="Images/052.png"  onclick="button_click" CssClass="imgcenter" />
                    
                    <p>Pokedex #052</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Persian</p>
                    <asp:ImageButton ID="ImageButton53" runat="server" ImageUrl="Images/053.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #053</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Psyduck</p>
                    <asp:ImageButton ID="ImageButton54" runat="server" ImageUrl="Images/054.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #054</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Golduck</p>
                    <asp:ImageButton ID="ImageButton55" runat="server" ImageUrl="Images/055.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #055</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Mankey</p>
                    <asp:ImageButton ID="ImageButton56" runat="server" ImageUrl="Images/056.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #056</p>
                    <p>Fighting</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Primeape</p>
                    <asp:ImageButton ID="ImageButton57" runat="server" ImageUrl="Images/057.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #057</p>
                    <p>Fighting</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Growlithe</p>
                    <asp:ImageButton ID="ImageButton58" runat="server" ImageUrl="Images/058.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #058</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Arcanine</p>
                    <asp:ImageButton ID="ImageButton59" runat="server" ImageUrl="Images/059.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #059</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Poliwag</p>
                    <asp:ImageButton ID="ImageButton60" runat="server" ImageUrl="Images/060.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #060</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Poliwhirl</p>
                    <asp:ImageButton ID="ImageButton61" runat="server" ImageUrl="Images/061.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #061</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Poliwrath</p>
                    <asp:ImageButton ID="ImageButton62" runat="server" ImageUrl="Images/062.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #062</p>
                    <p>Water | Fighting</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Abra</p>
                    <asp:ImageButton ID="ImageButton63" runat="server" ImageUrl="Images/063.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #063</p>
                    <p>Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Kadabra</p>
                    <asp:ImageButton ID="ImageButton64" runat="server" ImageUrl="Images/064.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #064</p>
                    <p>Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Alakazam</p>
                    <asp:ImageButton ID="ImageButton65" runat="server" ImageUrl="Images/065.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #065</p>
                    <p>Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Machop</p>
                    <asp:ImageButton ID="ImageButton66" runat="server" ImageUrl="Images/066.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #066</p>
                    <p>Fighting</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Machoke</p>
                    <asp:ImageButton ID="ImageButton67" runat="server" ImageUrl="Images/067.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #067</p>
                    <p>Fighting</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Machamp</p>
                    <asp:ImageButton ID="ImageButton68" runat="server" ImageUrl="Images/068.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #068</p>
                    <p>Fighting</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Bellsprout</p>
                    <asp:ImageButton ID="ImageButton69" runat="server" ImageUrl="Images/069.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #068</p>
                    <p>Grass | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Weepinbell</p>
                    <asp:ImageButton ID="ImageButton70" runat="server" ImageUrl="Images/070.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #069</p>
                    <p>Grass | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Victreebel</p>
                    <asp:ImageButton ID="ImageButton71" runat="server" ImageUrl="Images/071.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #071</p>
                    <p>Grass | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Tentacool</p>
                    <asp:ImageButton ID="ImageButton72" runat="server" ImageUrl="Images/072.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #072</p>
                    <p>Water | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Tentacruel</p>
                    <asp:ImageButton ID="ImageButton73" runat="server" ImageUrl="Images/073.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #073</p>
                    <p>Water | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Geodude</p>
                    <asp:ImageButton ID="ImageButton74" runat="server" ImageUrl="Images/074.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #074</p>
                    <p>Rock | Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Graveler</p>
                    <asp:ImageButton ID="ImageButton75" runat="server" ImageUrl="Images/075.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #075</p>
                    <p>Rock | Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Golem</p>
                    <asp:ImageButton ID="ImageButton76" runat="server" ImageUrl="Images/076.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #076</p>
                    <p>Rock | Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Ponyta</p>
                    <asp:ImageButton ID="ImageButton77" runat="server" ImageUrl="Images/077.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #077</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Rapidash</p>
                    <asp:ImageButton ID="ImageButton78" runat="server" ImageUrl="Images/078.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #078</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Slowpoke</p>
                    <asp:ImageButton ID="ImageButton79" runat="server" ImageUrl="Images/079.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #079</p>
                    <p>Water | Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Slowbro</p>
                    <asp:ImageButton ID="ImageButton80" runat="server" ImageUrl="Images/080.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #080</p>
                    <p>Water | Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Magnemite</p>
                    <asp:ImageButton ID="ImageButton81" runat="server" ImageUrl="Images/081.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #081</p>
                    <p>Electric | Steel</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Magneton</p>
                    <asp:ImageButton ID="ImageButton82" runat="server" ImageUrl="Images/082.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #082</p>
                    <p>Electric | Steel</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Farfetch'd</p>
                    <asp:ImageButton ID="ImageButton83" runat="server" ImageUrl="Images/083.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #083</p>
                    <p>Normal | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Doduo</p>
                    <asp:ImageButton ID="ImageButton84" runat="server" ImageUrl="Images/084.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #084</p>
                    <p>Normal | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Dodrio</p>
                    <asp:ImageButton ID="ImageButton85" runat="server" ImageUrl="Images/085.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #085</p>
                    <p>Normal | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Seel</p>
                    <asp:ImageButton ID="ImageButton86" runat="server" ImageUrl="Images/086.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #086</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Dewgong</p>
                    <asp:ImageButton ID="ImageButton87" runat="server" ImageUrl="Images/087.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #087</p>
                    <p>Water | Ice</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Grimer</p>
                    <asp:ImageButton ID="ImageButton88" runat="server" ImageUrl="Images/088.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #088</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Muk</p>
                    <asp:ImageButton ID="ImageButton89" runat="server" ImageUrl="Images/089.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #089</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Shellder</p>
                    <asp:ImageButton ID="ImageButton90" runat="server" ImageUrl="Images/090.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #090</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Cloyster</p>
                    <asp:ImageButton ID="ImageButton91" runat="server" ImageUrl="Images/091.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #091</p>
                    <p>Water | Ice</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Gastly</p>
                    <asp:ImageButton ID="ImageButton92" runat="server" ImageUrl="Images/092.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #092</p>
                    <p>Ghost | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Haunter</p>
                    <asp:ImageButton ID="ImageButton93" runat="server" ImageUrl="Images/093.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #093</p>
                    <p>Ghost | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Gengar</p>
                    <asp:ImageButton ID="ImageButton94" runat="server" ImageUrl="Images/094.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #094</p>
                    <p>Ghost | Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Onix</p>
                    <asp:ImageButton ID="ImageButton95" runat="server" ImageUrl="Images/095.png" onclick="button_click" CssClass="imgcenter" />
                    
                    <p>Pokedex #095</p>
                    <p>Rock | Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Drowzee</p>
                    <asp:ImageButton ID="ImageButton96" runat="server" ImageUrl="Images/096.png"  onclick="button_click" CssClass="imgcenter" />
                    
                    <p>Pokedex #096</p>
                    <p>Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Hypno</p>
                    <asp:ImageButton ID="ImageButton97" runat="server" ImageUrl="Images/097.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #097</p>
                    <p>Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Krabby</p>
                    <asp:ImageButton ID="ImageButton98" runat="server" ImageUrl="Images/098.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #098</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Kingler</p>
                    <asp:ImageButton ID="ImageButton99" runat="server" ImageUrl="Images/099.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #099</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Voltorb</p>
                    <asp:ImageButton ID="ImageButton100" runat="server" ImageUrl="Images/100.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #100</p>
                    <p>Electric</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Electrode</p>
                    <asp:ImageButton ID="ImageButton101" runat="server" ImageUrl="Images/101.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #101</p>
                    <p>Electric</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Exeggcute</p>
                    <asp:ImageButton ID="ImageButton102" runat="server" ImageUrl="Images/102.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #102</p>
                    <p>Grass | Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Exeggutor</p>
                    <asp:ImageButton ID="ImageButton103" runat="server" ImageUrl="Images/103.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #103</p>
                    <p>Grass | Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Cubone</p>
                    <asp:ImageButton ID="ImageButton104" runat="server" ImageUrl="Images/104.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #104</p>
                    <p>Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Marowak</p>
                    <asp:ImageButton ID="ImageButton105" runat="server" ImageUrl="Images/105.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #105</p>
                    <p>Ground</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Hitmonlee</p>
                    <asp:ImageButton ID="ImageButton106" runat="server" ImageUrl="Images/106.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #106</p>
                    <p>Fighting</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Hitmonchan</p>
                    <asp:ImageButton ID="ImageButton107" runat="server" ImageUrl="Images/107.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #107</p>
                    <p>Fighting</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Lickitung</p>
                    <asp:ImageButton ID="ImageButton108" runat="server" ImageUrl="Images/108.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #108</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Koffing</p>
                    <asp:ImageButton ID="ImageButton109" runat="server" ImageUrl="Images/109.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #109</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Weezing</p>
                    <asp:ImageButton ID="ImageButton110" runat="server" ImageUrl="Images/110.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #110</p>
                    <p>Poison</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Rhyhorn</p>
                    <asp:ImageButton ID="ImageButton111" runat="server" ImageUrl="Images/111.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #111</p>
                    <p>Ground | Rock</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Rhydon</p>
                    <asp:ImageButton ID="ImageButton112" runat="server" ImageUrl="Images/112.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #112</p>
                    <p>Ground | Rock</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Chansey</p>
                    <asp:ImageButton ID="ImageButton113" runat="server" ImageUrl="Images/113.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #113</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Tangela</p>
                    <asp:ImageButton ID="ImageButton114" runat="server" ImageUrl="Images/114.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #114</p>
                    <p>Grass</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Kangaskhan</p>
                    <asp:ImageButton ID="ImageButton115" runat="server" ImageUrl="Images/115.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #115</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Horsea</p>
                    <asp:ImageButton ID="ImageButton116" runat="server" ImageUrl="Images/116.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #116</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Seadra</p>
                    <asp:ImageButton ID="ImageButton117" runat="server" ImageUrl="Images/117.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #117</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Goldeen</p>
                    <asp:ImageButton ID="ImageButton118" runat="server" ImageUrl="Images/118.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #118</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Seaking</p>
                    <asp:ImageButton ID="ImageButton119" runat="server" ImageUrl="Images/119.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #119</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Staryu</p>
                    <asp:ImageButton ID="ImageButton120" runat="server" ImageUrl="Images/120.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #120</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Starmie</p>
                    <asp:ImageButton ID="ImageButton121" runat="server" ImageUrl="Images/121.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #121</p>
                    <p>Water | Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Mr. Mime</p>
                    <asp:ImageButton ID="ImageButton122" runat="server" ImageUrl="Images/122.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #122</p>
                    <p>Psychic | Fairy</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Scyther</p>
                    <asp:ImageButton ID="ImageButton123" runat="server" ImageUrl="Images/123.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #123</p>
                    <p>Bug | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Jynx</p>
                    <asp:ImageButton ID="ImageButton124" runat="server" ImageUrl="Images/124.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #124</p>
                    <p>Ice | Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Electabuzz</p>
                    <asp:ImageButton ID="ImageButton125" runat="server" ImageUrl="Images/125.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #125</p>
                    <p>Electric</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Magmar</p>
                    <asp:ImageButton ID="ImageButton126" runat="server" ImageUrl="Images/126.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #126</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Pinsir</p>
                    <asp:ImageButton ID="ImageButton127" runat="server" ImageUrl="Images/127.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #127</p>
                    <p>Bug</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Tauros</p>
                    <asp:ImageButton ID="ImageButton128" runat="server" ImageUrl="Images/128.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #128</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Magikarp</p>
                    <asp:ImageButton ID="ImageButton129" runat="server" ImageUrl="Images/129.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #129</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Gyarados</p>
                    <asp:ImageButton ID="ImageButton130" runat="server" ImageUrl="Images/130.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #130</p>
                    <p>Water | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Lapras</p>
                    <asp:ImageButton ID="ImageButton131" runat="server" ImageUrl="Images/131.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #131</p>
                    <p>Water | Ice</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Ditto</p>
                    <asp:ImageButton ID="ImageButton132" runat="server" ImageUrl="Images/132.png"  onclick="button_click" CssClass="imgcenter" />
                    
                    <p>Pokedex #132</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Eevee</p>
                    <asp:ImageButton ID="ImageButton133" runat="server" ImageUrl="Images/133.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #133</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Vaporeon</p>
                    <asp:ImageButton ID="ImageButton134" runat="server" ImageUrl="Images/134.png"  onclick="button_click" CssClass="imgcenter" />
                    
                    <p>Pokedex #134</p>
                    <p>Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Jolteon</p>
                    <asp:ImageButton ID="ImageButton135" runat="server" ImageUrl="Images/135.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #135</p>
                    <p>Electric</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Flareon</p>
                    <asp:ImageButton ID="ImageButton136" runat="server" ImageUrl="Images/136.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #136</p>
                    <p>Fire</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Porygon</p>
                    <asp:ImageButton ID="ImageButton137" runat="server" ImageUrl="Images/137.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #137</p>
                    <p>Normal</p>
                </div>
            </div>

            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Omanyte</p>
                    <asp:ImageButton ID="ImageButton138" runat="server" ImageUrl="Images/138.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #138</p>
                    <p>Rock | Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Omastar</p>
                    <asp:ImageButton ID="ImageButton139" runat="server" ImageUrl="Images/139.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #139</p>
                    <p>Rock | Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Kabuto</p>
                    <asp:ImageButton ID="ImageButton140" runat="server" ImageUrl="Images/140.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #140</p>
                    <p>Rock | Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Kabutops</p>
                    <asp:ImageButton ID="ImageButton141" runat="server" ImageUrl="Images/141.png" onclick="button_click" CssClass="imgcenter" />
                    
                    <p>Pokedex #141</p>
                    <p>Rock | Water</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Aerodactyl</p>
                    <asp:ImageButton ID="ImageButton142" runat="server" ImageUrl="Images/142.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #142</p>
                    <p>Rock | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Snorlax</p>
                    <asp:ImageButton ID="ImageButton143" runat="server" ImageUrl="Images/143.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #143</p>
                    <p>Normal</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Articuno</p>
                    <asp:ImageButton ID="ImageButton144" runat="server" ImageUrl="Images/144.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #144</p>
                    <p>Ice | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Zapdos</p>
                    <asp:ImageButton ID="ImageButton145" runat="server" ImageUrl="Images/145.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #145</p>
                    <p>Electric | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Moltres</p>
                    <asp:ImageButton ID="ImageButton146" runat="server" ImageUrl="Images/146.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #146</p>
                    <p>Fire | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Dratini</p>
                    <asp:ImageButton ID="ImageButton147" runat="server" ImageUrl="Images/147.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #147</p>
                    <p>Dragon</p>
                </div>
            </div>

            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Dragonair</p>
                    <asp:ImageButton ID="ImageButton148" runat="server" ImageUrl="Images/148.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #148</p>
                    <p>Dragon</p>
                </div>
            </div>

            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Dragonite</p>
                    <asp:ImageButton ID="ImageButton149" runat="server" ImageUrl="Images/149.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #149</p>
                    <p>Dragon | Flying</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Mewtwo</p>
                    <asp:ImageButton ID="ImageButton150" runat="server" ImageUrl="Images/150.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #150</p>
                    <p>Psychic</p>
                </div>
            </div>
            <div class="col-xs-3">
                <div class="thumbnail">
                    <p>Mew</p>
                    <asp:ImageButton ID="ImageButton151" runat="server" ImageUrl="Images/151.png" onclick="button_click"  CssClass="imgcenter" />
                    
                    <p>Pokedex #151</p>
                    <p>Psychic</p>
                </div>
            </div>

            </div>

        </div>


    </form>
</body>
</html>