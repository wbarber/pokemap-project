<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PokeMapHome.aspx.cs" Inherits="PokeMap.PokeMapHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Home.css" rel="stylesheet" />
    <script src="scripts/PokemonMarkers.js"></script>
    <title>PokeMap Home</title>
  
</head>
<body>
    <form id="form1" runat="server" defaultbutton="DoNothing">
    <div class="header">
        <img src="images/PokeMapLogo.png" width="500" />
         <asp:ImageButton CssClass="PokedexBtn" ID="ImageButton1" runat="server" src="images/PokedexButton.png" Height="150px" Width="170px" OnClick="imgbtnPokedex_Click" ImageAlign="Right" />
    </div>


    <input id="pac-input" class="controls" type="text" placeholder="Search Box">
    <div id="map"></div>
    <script>


        //////////////////////////////////////////////////////////////////////
       //     This section generates the map with the search bar           //
      //      and adds a custom pokemap marker for the location searched  //
     //////////////////////////////////////////////////////////////////////
      
      function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 41.6005448, lng: -93.60910639999997 },
          zoom: 13,
          styles: [
                          { "elementType": "geometry", "stylers": [{ "color": "#1d2c4d" }] },
                          { "elementType": "labels.text.fill", "stylers": [{ "color": "#8ec3b9" }] },
                          { "elementType": "labels.text.stroke", "stylers": [{ "color": "#1a3646" }] },
                          { "featureType": "administrative.country", "elementType": "geometry.stroke", "stylers": [{ "color": "#4b6878" }] },
                          { "featureType": "administrative.land_parcel", "elementType": "labels.text.fill", "stylers": [{ "color": "#64779e" }] },
                          { "featureType": "administrative.province", "elementType": "geometry.stroke", "stylers": [{ "color": "#4b6878" }] },
                          { "featureType": "landscape.man_made", "elementType": "geometry.stroke", "stylers": [{ "color": "#334e87" }] },
                          { "featureType": "landscape.natural", "elementType": "geometry", "stylers": [{ "color": "#023e58" }] },
                          { "featureType": "poi", "elementType": "geometry", "stylers": [{ "color": "#283d6a" }] },
                          { "featureType": "poi", "elementType": "labels.text.fill", "stylers": [{ "color": "#6f9ba5" }] },
                          { "featureType": "poi", "elementType": "labels.text.stroke", "stylers": [{ "color": "#1d2c4d" }] },
                          { "featureType": "poi.park", "elementType": "geometry.fill", "stylers": [{ "color": "#023e58" }] },
                          { "featureType": "poi.park", "elementType": "labels.text.fill", "stylers": [{ "color": "#3C7680" }] },
                          { "featureType": "road", "elementType": "geometry", "stylers": [{ "color": "#304a7d" }] },
                          { "featureType": "road", "elementType": "labels.text.fill", "stylers": [{ "color": "#98a5be" }] },
                          { "featureType": "road", "elementType": "labels.text.stroke", "stylers": [{ "color": "#1d2c4d" }] },
                          { "featureType": "road.highway", "elementType": "geometry", "stylers": [{ "color": "#2c6675" }] },
                          { "featureType": "road.highway", "elementType": "geometry.stroke", "stylers": [{ "color": "#255763" }] },
                          { "featureType": "road.highway", "elementType": "labels.text.fill", "stylers": [{ "color": "#b0d5ce" }] },
                          { "featureType": "road.highway", "elementType": "labels.text.stroke", "stylers": [{ "color": "#023e58" }] },
                          { "featureType": "transit", "elementType": "labels.text.fill", "stylers": [{ "color": "#98a5be" }] },
                          { "featureType": "transit", "elementType": "labels.text.stroke", "stylers": [{ "color": "#1d2c4d" }] },
                          { "featureType": "transit.line", "elementType": "geometry.fill", "stylers": [{ "color": "#283d6a" }] },
                          { "featureType": "transit.station", "elementType": "geometry", "stylers": [{ "color": "#3a4762" }] },
                          { "featureType": "water", "elementType": "geometry", "stylers": [{ "color": "#0e1626" }] },
                          { "featureType": "water", "elementType": "labels.text.fill", "stylers": [{ "color": "#4e6d70" }] }
          ]
        });

        // Create the search bar
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        // Listen for bounds to change in search bar
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });

        var markers = [];
        searchBox.addListener('places_changed', function() {
          var places = searchBox.getPlaces();

          if (places.length == 0) {
            return;
          }

          // Clear out the old markers.
          markers.forEach(function(marker) {
            marker.setMap(null);
          });
          markers = [];

          // Get the location for whats selected
          var bounds = new google.maps.LatLngBounds();
          places.forEach(function(place) {
            if (!place.geometry) {
              console.log("Returned place contains no geometry");
              return;
            }
            var icon = {
              url: place.icon,
              size: new google.maps.Size(71, 71),
              origin: new google.maps.Point(0, 0),
              anchor: new google.maps.Point(17, 34),
              scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
              map: map,
              icon: 'images/Icons/pokesition.png',
              title: place.name,
              position: place.geometry.location
            }));

            if (place.geometry.viewport) {
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }
          });
          map.fitBounds(bounds);
        });


        //////////////////////////////////////////////////////////////////////
       //     This section generates the spawnpoints for the pokemon       //
      //       and adds a marker for the type of pokemon                  //
     //////////////////////////////////////////////////////////////////////

    
        // Add markers for each type of pokemon
        function addMarker(feature) {
            var marker = new google.maps.Marker({
                position: feature.position,
                icon: icons[feature.type].icon,
                map: map
            });
        }

        //// Add Pokemon and there positions
        var pokemons = [
          {
              position: new google.maps.LatLng(41.63863299, -93.72624062),
              type: 'Bulbasaur'
              }, {
              position: new google.maps.LatLng(41.72486157, -93.6991892),
              type: 'Ivysaur'
          }, {
              position: new google.maps.LatLng(41.53678702, -93.69123847),
              type: 'Venusaur'
          }, {
              position: new google.maps.LatLng(41.58695865, -93.61936902),
              type: 'Charmander'
          }, {
              position: new google.maps.LatLng(41.50116217, -93.65778776),
              type: 'Charmeleon'
          }, {
              position: new google.maps.LatLng(41.49906962, -93.58117276),
              type: 'Charizard'
          }, {
              position: new google.maps.LatLng(41.65201381, -93.50492962),
              type: 'Squirtle'
          }, {
              position: new google.maps.LatLng(41.48568845, -93.68325968),
              type: 'Wartortle'
          }, {
              position: new google.maps.LatLng(41.69485321, -93.71444162),
              type: 'Blastoise'
          }, {
              position: new google.maps.LatLng(41.70437328, -93.70738965),
              type: 'Caterpie'
          }, {
              position: new google.maps.LatLng(41.56347893, -93.67707325),
              type: 'Metapod'
          }, {
              position: new google.maps.LatLng(41.70400394, -93.64371961),
              type: 'Butterfree'
          }, {
              position: new google.maps.LatLng(41.70700615, -93.65611473),
              type: 'Weedle'
          }, {
              position: new google.maps.LatLng(41.67536572, -93.52099924),
              type: 'Kakuna'
          }, {
              position: new google.maps.LatLng(41.5558763, -93.50237392),
              type: 'Beedrill'
          }, {
              position: new google.maps.LatLng(41.61039832, -93.48766094),
              type: 'Pidgey'
          }, {
              position: new google.maps.LatLng(41.56012961, -93.43473022),
              type: 'Pidgeotto'
          }, {
              position: new google.maps.LatLng(41.64045986, -93.42521509),
              type: 'Pidgeot'
          }, {
              position: new google.maps.LatLng(41.58563265, -93.79871947),
              type: 'Rattata'
          }, {
              position: new google.maps.LatLng(41.51133536, -93.50184486),
              type: 'Raticate'
          }, {
              position: new google.maps.LatLng(41.55446015, -93.67959237),
              type: 'Spearow'
          }, {
              position: new google.maps.LatLng(41.57187987, -93.76077611),
              type: 'Fearow'
          }, {
              position: new google.maps.LatLng(41.55764272, -93.58375878),
              type: 'Ekans'
          }, {
              position: new google.maps.LatLng(41.61446804, -93.59312326),
              type: 'Arbok'
          }, {
              position: new google.maps.LatLng(41.56337155, -93.52512223),
              type: 'Pikachu'
          }, {
              position: new google.maps.LatLng(41.73713631, -93.63547577),
              type: 'Raichu'
          }, {
              position: new google.maps.LatLng(41.51759205, -93.51507287),
              type: 'Sandshrew'
          }, {
              position: new google.maps.LatLng(41.70022601, -93.54576447),
              type: 'Sandslash'
          }, {
              position: new google.maps.LatLng(41.59816867, -93.73935659),
              type: 'NidoranF'
          }, {
              position: new google.maps.LatLng(41.56183363, -93.75932667),
              type: 'Nidorina'
          }, {
              position: new google.maps.LatLng(41.56715403, -93.73905916),
              type: 'Nidoqueen'
          }, {
              position: new google.maps.LatLng(41.56652134, -93.6732509),
              type: 'NidoranM'
          }, {
              position: new google.maps.LatLng(41.65721887, -93.56952578),
              type: 'Nidorino'
          }, {
              position: new google.maps.LatLng(41.68057, -93.64450302),
              type: 'Nidoking'
          }, {
              position: new google.maps.LatLng(41.60152555, -93.70125784),
              type: 'Clefairy'
          }, {
              position: new google.maps.LatLng(41.71027803, -93.56463735),
              type: 'Clefable'
          }, {
              position: new google.maps.LatLng(41.61831138, -93.47660638),
              type: 'Vulpix'
          }, {
              position: new google.maps.LatLng(41.62044455, -93.64472692),
              type: 'Ninetales'
          }, {
              position: new google.maps.LatLng(41.55400698, -93.45098533),
              type: 'Jigglypuff'
          }, {
              position: new google.maps.LatLng(41.7294527, -93.69101453),
              type: 'Wigglytuff'
          }, {
              position: new google.maps.LatLng(41.60936722, -93.70277019),
              type: 'Zubat'
          }, {
              position: new google.maps.LatLng(41.52981196, -93.75239796),
              type: 'Golbat'
          }, {
              position: new google.maps.LatLng(41.64765276, -93.78561978),
              type: 'Oddish'
          }, {
              position: new google.maps.LatLng(41.62462448, -93.69745673),
              type: 'Gloom'
          }, {
              position: new google.maps.LatLng(41.61564533, -93.43222389),
              type: 'Vileplume'
          }, {
              position: new google.maps.LatLng(41.61518663, -93.44941318),
              type: 'Paras'
          }, {
              position: new google.maps.LatLng(41.65166498, -93.63493993),
              type: 'Parasect'
          }, {
              position: new google.maps.LatLng(41.63791634, -93.67023418),
              type: 'Venonat'
          }, {
              position: new google.maps.LatLng(41.54878232, -93.73282673),
              type: 'Venomoth'
          }, {
              position: new google.maps.LatLng(41.58216309, -93.63768874),
              type: 'Diglett'
          }, {
              position: new google.maps.LatLng(41.51937723, -93.59005481),
              type: 'Dugtrio'
          }, {
              position: new google.maps.LatLng(41.54308753, -93.62273422),
              type: 'Meowth'
          }, {
              position: new google.maps.LatLng(41.53669241, -93.45689049),
              type: 'Persian'
          }, {
              position: new google.maps.LatLng(41.45862429, -93.60940116),
              type: 'Psyduck'
          }, {
              position: new google.maps.LatLng(41.48892596, -93.63540169),
              type: 'Golduck'
          }, {
              position: new google.maps.LatLng(41.68294212, -93.59836631),
              type: 'Mankey'
          }, {
              position: new google.maps.LatLng(41.64911851, -93.73805453),
              type: 'Primeape'
          }, {
              position: new google.maps.LatLng(41.52282345, -93.67854464),
              type: 'Growlithe'
          }, {
              position: new google.maps.LatLng(41.5544716, -93.73541471),
              type: 'Arcanine'
          }, {
              position: new google.maps.LatLng(41.60404686, -93.70619859),
              type: 'Poliwag'
          }, {
              position: new google.maps.LatLng(41.61238196, -93.523352),
              type: 'Poliwhirl'
          }, {
              position: new google.maps.LatLng(41.66717375, -93.46084606),
              type: 'Poliwrath'
          }, {
              position: new google.maps.LatLng(41.71339177, -93.69758253),
              type: 'Abra'
          }, {
              position: new google.maps.LatLng(41.66510407, -93.47483506),
              type: 'Kadabra'
          }, {
              position: new google.maps.LatLng(41.64044449, -93.55161491),
              type: 'Alakazam'
          }, {
              position: new google.maps.LatLng(41.55233488, -93.78856802),
              type: 'Machop'
          }, {
              position: new google.maps.LatLng(41.66293863, -93.7000495),
              type: 'Machoke'
          }, {
              position: new google.maps.LatLng(41.65705145, -93.44043205),
              type: 'Machamp'
          }, {
              position: new google.maps.LatLng(41.46950131, -93.65322211),
              type: 'Bellsprout'
          }, {
              position: new google.maps.LatLng(41.74348286, -93.62080254),
              type: 'Weepinbell'
          }, {
              position: new google.maps.LatLng(41.71520854, -93.50119658),
              type: 'Victreebel'
          }, {
              position: new google.maps.LatLng(41.74006115, -93.62590184),
              type: 'Tentacool'
          }, {
              position: new google.maps.LatLng(41.63558597, -93.72501311),
              type: 'Tentacruel'
          }, {
              position: new google.maps.LatLng(41.6737596, -93.6227461),
              type: 'Geodude'
          }, {
              position: new google.maps.LatLng(41.47131248, -93.52446371),
              type: 'Graveler'
          }, {
              position: new google.maps.LatLng(41.63750466, -93.62249801),
              type: 'Golem'
          }, {
              position: new google.maps.LatLng(41.66289466, -93.60816987),
              type: 'Ponyta'
          }, {
              position: new google.maps.LatLng(41.54267722, -93.77437218),
              type: 'Rapidash'
          }, {
              position: new google.maps.LatLng(41.70749317, -93.71542421),
              type: 'Slowpoke'
          }, {
              position: new google.maps.LatLng(41.6818006, -93.45098679),
              type: 'Slowbro'
          }, {
              position: new google.maps.LatLng(41.52093454, -93.62625486),
              type: 'Magnemite'
          }, {
              position: new google.maps.LatLng(41.64173127, -93.72872573),
              type: 'Magneton'
          }, {
              position: new google.maps.LatLng(41.56596255, -93.49339886),
              type: 'Farfetchd'
          }, {
              position: new google.maps.LatLng(41.54795734, -93.70727617),
              type: 'Doduo'
          }, {
              position: new google.maps.LatLng(41.58905907, -93.65303639),
              type: 'Dodrio'
          }, {
              position: new google.maps.LatLng(41.54292606, -93.57481868),
              type: 'Seel'
          }, {
              position: new google.maps.LatLng(41.716098, -93.71331781),
              type: 'Dewgong'
          }, {
              position: new google.maps.LatLng(41.58752214, -93.67881824),
              type: 'Grimer'
          }, {
              position: new google.maps.LatLng(41.63946596, -93.42482996),
              type: 'Muk'
          }, {
              position: new google.maps.LatLng(41.54046504, -93.58085209),
              type: 'Shellder'
          }, {
              position: new google.maps.LatLng(41.56719008, -93.43119233),
              type: 'Cloyster'
          }, {
              position: new google.maps.LatLng(41.66431347, -93.44062011),
              type: 'Gastly'
          }, {
              position: new google.maps.LatLng(41.65943901, -93.58721086),
              type: 'Haunter'
          }, {
              position: new google.maps.LatLng(41.55764606, -93.62615721),
              type: 'Gengar'
          }, {
              position: new google.maps.LatLng(41.65637791, -93.65188065),
              type: 'Onix'
          }, {
              position: new google.maps.LatLng(41.51304985, -93.75215956),
              type: 'Drowzee'
          }, {
              position: new google.maps.LatLng(41.66904236, -93.67948349),
              type: 'Hypno'
          }, {
              position: new google.maps.LatLng(41.6605648, -93.65498474),
              type: 'Krabby'
          }, {
              position: new google.maps.LatLng(41.72861536, -93.55286913),
              type: 'Kingler'
          }, {
              position: new google.maps.LatLng(41.72779761, -93.64204602),
              type: 'Voltorb'
          }, {
              position: new google.maps.LatLng(41.70164015, -93.66269368),
              type: 'Electrode'
          }, {
              position: new google.maps.LatLng(41.52087615, -93.67344853),
              type: 'Exeggcute'
          }, {
              position: new google.maps.LatLng(41.66632212, -93.56417485),
              type: 'Exeggutor'
          }, {
              position: new google.maps.LatLng(41.66846744, -93.74384298),
              type: 'Cubone'
          }, {
              position: new google.maps.LatLng(41.53136052, -93.67942184),
              type: 'Marowak'
          }, {
              position: new google.maps.LatLng(41.48619355, -93.63489617),
              type: 'Pikachu'
          }, {
              position: new google.maps.LatLng(41.62322458, -93.56643198),
              type: 'Hitmonlee'
          }, {
              position: new google.maps.LatLng(41.66180387, -93.73946726),
              type: 'Hitmonchan'
          }, {
              position: new google.maps.LatLng(41.74175147, -93.63444616),
              type: 'Lickitung'
          }, {
              position: new google.maps.LatLng(41.67136979, -93.52556797),
              type: 'Koffing'
          }, {
              position: new google.maps.LatLng(41.7244196, -93.560774),
              type: 'Weezing'
          }, {
              position: new google.maps.LatLng(41.67162522, -93.59891855),
              type: 'Rhyhorn'
          }, {
              position: new google.maps.LatLng(41.58327728, -93.69299617),
              type: 'Rhydon'
          }, {
              position: new google.maps.LatLng(41.63817703, -93.64959237),
              type: 'Chansey'
          }, {
              position: new google.maps.LatLng(41.64171163, -93.6419651),
              type: 'Tangela'
          }, {
              position: new google.maps.LatLng(41.56941474, -93.70058294),
              type: 'Kangaskhan'
          }, {
              position: new google.maps.LatLng(41.52653143, -93.66782229),
              type: 'Horsea'
          }, {
              position: new google.maps.LatLng(41.73167047, -93.60894193),
              type: 'Seadra'
          }, {
              position: new google.maps.LatLng(41.51956844, -93.49308259),
              type: 'Goldeen'
          }, {
              position: new google.maps.LatLng(41.6331885, -93.63696469),
              type: 'Seaking'
          }, {
              position: new google.maps.LatLng(41.62758948, -93.48157902),
              type: 'Staryu'
          }, {
              position: new google.maps.LatLng(41.59247914, -93.57021804),
              type: 'Starmie'
          }, {
              position: new google.maps.LatLng(41.56847112, -93.62548752),
              type: 'MrMime'
          }, {
              position: new google.maps.LatLng(41.73917604, -93.65678866),
              type: 'Scyther'
          }, {
              position: new google.maps.LatLng(41.70079206, -93.588899),
              type: 'Jynx'
          }, {
              position: new google.maps.LatLng(41.56983801, -93.58291631),
              type: 'Electabuzz'
          }, {
              position: new google.maps.LatLng(41.69249967, -93.48126379),
              type: 'Magmar'
          }, {
              position: new google.maps.LatLng(41.55118776, -93.49374418),
              type: 'Pinsir'
          }, {
              position: new google.maps.LatLng(41.50382826, -93.52158136),
              type: 'Tauros'
          }, {
              position: new google.maps.LatLng(41.70802323, -93.68411699),
              type: 'Magikarp'
          }, {
              position: new google.maps.LatLng(41.61975501, -93.55578916),
              type: 'Gyarados'
          }, {
              position: new google.maps.LatLng(41.47989392, -93.5419636),
              type: 'Lapras'
          }, {
              position: new google.maps.LatLng(41.65423346, -93.61016045),
              type: 'Ditto'
          }, {
              position: new google.maps.LatLng(41.56762456, -93.59487807),
              type: 'Eevee'
          }, {
              position: new google.maps.LatLng(41.52270392, -93.64357415),
              type: 'Vaporeon'
          }, {
              position: new google.maps.LatLng(41.49610957, -93.71646208),
              type: 'Jolteon'
          }, {
              position: new google.maps.LatLng(41.59706514, -93.53631037),
              type: 'Flareon'
          }, {
              position: new google.maps.LatLng(41.54633197, -93.44446117),
              type: 'Porygon'
          }, {
              position: new google.maps.LatLng(41.63314541, -93.73133574),
              type: 'Omanyte'
          }, {
              position: new google.maps.LatLng(41.57522025, -93.61336692),
              type: 'Omastar'
          }, {
              position: new google.maps.LatLng(41.5271317, -93.56718411),
              type: 'Kabuto'
          }, {
              position: new google.maps.LatLng(41.51463142, -93.61659116),
              type: 'Kabutops'
          }, {
              position: new google.maps.LatLng(41.57165985, -93.48280009),
              type: 'Aerodactyl'
          }, {
              position: new google.maps.LatLng(41.57063303, -93.79333025),
              type: 'Snorlax'
          }, {
              position: new google.maps.LatLng(41.63233532, -93.51082957),
              type: 'Articuno'
          }, {
              position: new google.maps.LatLng(41.63650622, -93.43833835),
              type: 'Zapdos'
          }, {
              position: new google.maps.LatLng(41.55911879, -93.52850138),
              type: 'Moltres'
          }, {
              position: new google.maps.LatLng(41.49120016, -93.70520322),
              type: 'Dratini'
          }, {
              position: new google.maps.LatLng(41.60735299, -93.60790828),
              type: 'Dragonair'
          }, {
              position: new google.maps.LatLng(41.72578957, -93.69551613),
              type: 'Dragonite'
          }, {
              position: new google.maps.LatLng(41.52637258, -93.72100658),
              type: 'Mewtwo'
          }, {
              position: new google.maps.LatLng(41.59183776, -93.65952793),
              type: 'Mew'
          }, {
              position: new google.maps.LatLng(41.55726174, -93.49691051),
              type: 'Mewtwo'
          }, {
              position: new google.maps.LatLng(41.57843623, -93.78041175),
              type: 'Mew'
          }, {
              position: new google.maps.LatLng(41.52535179, -93.66152354),
              type: 'Dragonite'
          }, {
              position: new google.maps.LatLng(41.59204615, -93.54823185),
              type: 'Mewtwo'
          }, {
              position: new google.maps.LatLng(41.57580241, -93.66795076),
              type: 'Mew'
          }, {
              position: new google.maps.LatLng(41.72951814, -93.63918358),
              type: 'Dragonite'
          }, {
              position: new google.maps.LatLng(41.55474426, -93.78761072),
              type: 'Pikachu'
          }, {
              position: new google.maps.LatLng(41.6132736, -93.43857501),
              type: 'Mewtwo'
          }, {
              position: new google.maps.LatLng(41.59083096, -93.50094329),
              type: 'Pikachu'
          }, {
              position: new google.maps.LatLng(41.66005101, -93.67633464),
              type: 'Zapdos'
          }, {
              position: new google.maps.LatLng(41.60787291, -93.53241713),
              type: 'Articuno'
          }, {
              position: new google.maps.LatLng(41.64398524, -93.43477438),
              type: 'Moltres'
          }, {
              position: new google.maps.LatLng(41.58738943, -93.59658614),
              type: 'Articuno'
          }, {
              position: new google.maps.LatLng(41.70080739, -93.69100627),
              type: 'Zapdos'
          }, {
              position: new google.maps.LatLng(41.73031297, -93.65645642),
              type: 'Raichu'
          }, {
              position: new google.maps.LatLng(41.50119586, -93.65641237),
              type: 'Moltres'
          }, {
              position: new google.maps.LatLng(41.50934653, -93.44119878),
              type: 'Dratini'
          }, {
              position: new google.maps.LatLng(41.54481988, -93.55341119),
              type: 'Articuno'
          }, {
              position: new google.maps.LatLng(41.64303582, -93.48358047),
              type: 'Zapdos'
          }, {
              position: new google.maps.LatLng(41.72311185, -93.78175186),
              type: 'Moltres'
          }, {
              position: new google.maps.LatLng(41.54576429, -93.66492334),
              type: 'Articuno'
          }, {
              position: new google.maps.LatLng(41.46327786, -93.59740982),
              type: 'Zapdos'
          }, {
              position: new google.maps.LatLng(41.69236778, -93.58684679),
              type: 'Moltres'
          }, {
              position: new google.maps.LatLng(41.62486266, -93.69313227),
              type: 'Kabutops'
          }, {
              position: new google.maps.LatLng(41.68165825, -93.65645642),
              type: 'Mewtwo'
          }, {
              position: new google.maps.LatLng(41.50119586, -93.5522958),
              type: 'Mew'
          }, {
              position: new google.maps.LatLng(41.465427083, -93.44119878),
              type: 'Mewtwo'
          }, {
              position: new google.maps.LatLng(41.61454293, -93.58684679),
              type: 'Mew'
          }, {
              position: new google.maps.LatLng(41.62486266, -93.61743433),
              type: 'Vaporeon'
          }, {
              position: new google.maps.LatLng(41.67404077, -93.65645642),
              type: 'Jolteon'
          }, {
              position: new google.maps.LatLng(41.50119586, -93.57037406),
              type: 'Flareon'
          }, {
              position: new google.maps.LatLng(41.65476814, -93.44119878),
              type: 'Vaporeon'
          }, {
              position: new google.maps.LatLng(41.54481988, -93.5717299),
              type: 'Jolteon'
          }, {
              position: new google.maps.LatLng(41.70722622, -93.48358047),
              type: 'Flareon'
          }, {
              position: new google.maps.LatLng(41.59247914, -93.97021804),
              type: 'Starmie'
          }, {
              position: new google.maps.LatLng(41.76847112, -93.82548752),
              type: 'MrMime'
          }, {
              position: new google.maps.LatLng(41.73917604, -93.75678866),
              type: 'Scyther'
          }, {
              position: new google.maps.LatLng(41.80079206, -93.988899),
              type: 'Jynx'
          }, {
              position: new google.maps.LatLng(41.76983801, -93.98291631),
              type: 'Electabuzz'
          }, {
              position: new google.maps.LatLng(41.59249967, -93.78126379),
              type: 'Magmar'
          }, {
              position: new google.maps.LatLng(41.45118776, -93.89374418),
              type: 'Pinsir'
          }, {
              position: new google.maps.LatLng(41.90382826, -93.72158136),
              type: 'Tauros'
          }, {
              position: new google.maps.LatLng(41.80802323, -93.78411699),
              type: 'Magikarp'
          }, {
              position: new google.maps.LatLng(41.91975501, -93.65578916),
              type: 'Gyarados'
          }, {
              position: new google.maps.LatLng(41.77989392, -93.9419636),
              type: 'Lapras'
          }, {
              position: new google.maps.LatLng(41.55423346, -93.71016045),
              type: 'Ditto'
          }, {
              position: new google.maps.LatLng(41.86762456, -93.79487807),
              type: 'Eevee'
          }, {
              position: new google.maps.LatLng(41.42270392, -93.74357415),
              type: 'Vaporeon'
          }, {
              position: new google.maps.LatLng(41.29610957, -93.81646208),
              type: 'Jolteon'
          }, {
              position: new google.maps.LatLng(41.79706514, -93.83631037),
              type: 'Flareon'
          }, {
              position: new google.maps.LatLng(41.64633197, -93.84446117),
              type: 'Porygon'
          }, {
              position: new google.maps.LatLng(41.93314541, -93.83133574),
              type: 'Omanyte'
          }, {
              position: new google.maps.LatLng(41.87522025, -93.41336692),
              type: 'Omastar'
          }, {
              position: new google.maps.LatLng(41.707970, -93.611380),
              type: 'Kabuto'
          }, {
              position: new google.maps.LatLng(41.707970, -93.611390),
              type: 'Curtis'
          },
        ];
         
        // Loop through the pokemons array and place marker for each pokemon
        for (var i = 0, pokemon; pokemon = pokemons[i]; i++) {
            addMarker(pokemon);
        }
    }

    </script>
        
         <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBuLexEkvYXnJFMGqwsIbBOpf_PgJaAfZA&libraries=places&callback=initAutocomplete"
         async defer></script>
        
        
        <asp:Button ID="DoNothing" runat="server" Enabled="false" style="display: none;" />
        
       
    </form>
    <footer>
        <img class="footer" src="images/PokeMap%20Footer.png" />
    </footer>
</body>
</html>
