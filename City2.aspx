<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="City2.aspx.cs" Inherits="TeamA.City2" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather Application</title>
    <link href="./global.css" rel="stylesheet" />

        <style>
/* import google fonts */
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,600,700&display=swap');

/* reset*/
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* fonts */
    --font-raleway: Raleway;
    --font-inter: Inter;

    /* font sizes */
    --font-size-13xl: 32px;
    --font-size-8xl: 27px;
    --font-size-21xl: 40px;
    --font-size-5xl: 24px;
    --font-size-29xl: 48px;
    --font-size-51xl: 70px;
    --font-size-81xl: 100px;

    /* Colors */
    --color-white: #fff;
    --color-gray: rgba(24, 7, 25, 0.6);

    /* Border radiuses */
    --br-13xl: 32px;
    --br-85xl: 104px;
}

html {
    height: 100%;
}

body {
    font-family: 'Montserrat', sans-serif;
    display: flex;
    justify-content: center;
    align-content: center;
    align-items: center;
    flex-direction: column;
    min-height: 100%;
    font-size: 20px;
    color: #fff;
    padding: 40px 10px;
    line-height: 1.5;
    font-weight: 600;
    position: relative;
    width: 100%;
    height: 100vh;
    overflow: scroll;
    background-image: url(./public/desktop--5@3x.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    background-position: top;
    text-align: left;
}

.container {
    max-width: 800px;
}
.logo{
    position: absolute;
    left: 20px;
    top: 20px;
    font-size: 30px;
}


#app {
    padding: 40px;
    min-height: 500px;
    border-radius: 30px;
    min-width: 800px;
    background: #4fa3a5;
    box-shadow: 10px 20px 23px rgba(0, 0, 0, 0.3);
    position: relative;
    border-radius: var(--br-13xl);
    background-color: var(--color-gray);

    mix-blend-mode: normal;
    border: 2px solid rgba(255, 255, 255, .3);
}

.landing-page {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 500px;
    text-align: center;
}

h1 {
    font-size: 45px;
    font-weight: 700;
    color: #fff;
}

.datetime {
    color: #fff;
    font-size: 18px;

}

.search {
    margin-bottom: 20px;
    position: relative;
    display: flex;
    align-items: center;
}

.search label {
    width: 330px;
    font-size: 25px;
}

.search_input {
    border-radius: 30px;
    border: 2px solid rgba(255, 255, 255, .3);
    color: #fff;
    width: 100%;
    padding: 15px 30px;
    font-family: 'Montserrat', sans-serif;
    font-weight: 600;
    font-size: 25px;
    mix-blend-mode: normal;
    background-color: var(--color-gray);
}

.search .button {
    padding: 10px;
    background: none;
    color: #fff;
    font-size: 17px;
    border: none;
    border-left: none;
    cursor: pointer;
    position: absolute;
    right: 13px;
    top: 5px;
}


.city {
    margin-bottom: 20px;
}

.weather-detail {
    padding: 30px 0 10px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.weather-detail .temp {
    font-size: 100px;
    font-weight: 600;
}

.weather-desc {
    text-align: center;
    margin-bottom: 40px;
}

.main-weather {
    margin-bottom: 50px;
    font-size: 45px;
    text-align: center;
}


.weather-info {
    list-style: none;
    font-size: 20px;
    column-count: 2;
    column-gap: 20px;
}

.weather-info li:not(:last-child) {
    margin-bottom: 10px;
}


/* Media query for devices smaller than 600px*/
@media only screen and (max-width: 600px) {
    #app {
        padding: 30px 20px;
    }

    h1 {
        font-size: 30px;
    }
}

    </style>

</head>
<body>
    <div class="container">
        <h1 class="logo">Crystal Clear</h1>
<form id="form1" runat="server">
    <label for="City">Select Location :</label>
    <select id="City" name="City" class="search_input" onchange="updateWeather(this.value)">
        <% String[] municipalities = { "Helsinki", "Jyväskylä", "Turku", "Lahti" };
           foreach (String municipality in municipalities) { %>
            <option value="<%= municipality %>"><%= municipality %></option>
        <% } %>
    </select>
</form>

<script type="text/javascript">
    function updateWeather(selectedCity) {
        var T = 20; // Example temperature
        var W = 12.3; // Example wind speed

        // Create the HTML content for the weather report
        var weatherHtml = `
            <h1 class='city-name'>Weather Report In ${selectedCity}</h1>
            <p class='feels-like'>Feels like ${(T * W).toFixed(2)}</p>
        `;

        // Set the innerHTML of the weatherReport element
        document.getElementById('weatherReport').innerHTML = weatherHtml;
    }
</script>


<!-- You would need a container in your HTML to display the weather. -->

        


        <main id="app">
            <div class="container landing-page">
                <div id="weatherReport" class='response'>
                <h1> Accurate daily forecast from Crystal Clear</h1>
                <!-- The weather details will be inserted here -->

            </div></div>
        </main>  </div>
    <script>

        function updateWeather(selectedCity) {
            // Perform your logic to fetch weather and update the page
            console.log("The selected city is: " + selectedCity);
            // Assuming you fetch weather data and want to display it on the page,
            // you would update the DOM with the new data here.
        }

        //function updateWeather() {
          //  var selectElement = document.getElementById("location");
          //  var selectedValue = selectElement.value;
          //  //r appContainer = document.getElementById("app");
            
            // Dummy content for each city, replace with actual content or API calls
            var weatherContent = {
                "default": '<div class="container landing-page"><h1> Accurate daily forecast from Crystal Clear</h1></div>',
                "helsinki": '<div class="container"><div class="datetime">Sunday, October 15 at 2:37 PM</div><h1 class="city">Today’s Forecast for Helsinki, FI</h1><div class="weather-detail"><img src="http://openweathermap.org/img/wn/04d@2x.png" alt="Clouds"><span class="temp">7°C</span></div><div class="weather-desc"><div class="main-weather">Clouds</div><p>Feels like 2°C. Broken clouds</p></div><ul class="weather-info"><li><span class="min">Min: 6°C to Max: 9 °C</span></li><li class="windspeed">Wind Speed: 12.52 m/s</li><li class="humidity">Humidity: 75%</li><li class="visibility">Visibility: 10 km</li></ul></div>',
                "jyvaskyla": '<div class="container"><div class="datetime">Monday, October 16 at 3:00 PM</div><h1 class="city">Today’s Forecast for Jyväskylä, FI</h1><div class="weather-detail"><img src="http://openweathermap.org/img/wn/10d@2x.png" alt="Rain"><span class="temp">5°C</span></div><div class="weather-desc"><div class="main-weather">Rain</div><p>Feels like 1°C. Moderate rain</p></div><ul class="weather-info"><li><span class="min">Min: 3°C to Max: 7°C</span></li><li class="windspeed">Wind Speed: 10.00 m/s</li><li class="humidity">Humidity: 80%</li><li class="visibility">Visibility: 9 km</li></ul></div>',
                "turku": '<div class="container"><div class="datetime">Tuesday, October 17 at 4:45 PM</div><h1 class="city">Today’s Forecast for Turku, FI</h1><div class="weather-detail"><img src="http://openweathermap.org/img/wn/01d@2x.png" alt="Clear Sky"><span class="temp">10°C</span></div><div class="weather-desc"><div class="main-weather">Clear Sky</div><p>Feels like 8°C. Clear sky</p></div><ul class="weather-info"><li><span class="min">Min: 8°C to Max: 12°C</span></li><li class="windspeed">Wind Speed: 5.00 m/s</li><li class="humidity">Humidity: 60%</li><li class="visibility">Visibility: 15 km</li></ul></div>',
                "lahti": '<div class="container"><div class="datetime">Wednesday, October 18 at 5:50 PM</div><h1 class="city">Today’s Forecast for Lahti, FI</h1><div class="weather-detail"><img src="http://openweathermap.org/img/wn/09d@2x.png" alt="Shower Rain"><span class="temp">6°C</span></div><div class="weather-desc"><div class="main-weather">Shower Rain</div><p>Feels like 3°C. Shower rain</p></div><ul class="weather-info"><li><span class="min">Min: 4°C to Max: 8°C</span></li><li class="windspeed">Wind Speed: 7.00 m/s</li><li class="humidity">Humidity: 85%</li><li class="visibility">Visibility: 8 km</li></ul></div>',
            };
            
            appContainer.innerHTML = weatherContent[selectedValue] || weatherContent["default"];
        }
    </script>
</body>
</html>

