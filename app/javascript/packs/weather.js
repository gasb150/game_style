import Weather from './apiWeather';
import Location from './apiLocation';
import Icons from './icons'
const loadPage = ( (t) => {

    const load = async (t) => {
        console.log(t)
   
        const locData = await Location().then((response => {
         
            const cityName = response.city;

            return cityName;
        }))
        
        let cityInput = locData;
      

        const data = await Weather(cityInput);
        const tempValue = data.main.temp;
        const cityName = document.getElementById('cityName')
        const cityTemp = document.getElementById('temp')
        const cityCloud = document.getElementById('cloud')
        const cityHumidity = document.getElementById('humidity')

      
        
        cityName.innerHTML = data.name
        cityTemp.innerHTML = ` ${Math.round(tempValue - 273.15, -1)}°C`;
        cityCloud.innerHTML = `<img src="http://openweathermap.org/img/wn/${data.weather[0].icon}.png"> </img>`
        cityCloud.innerHTML = `<p class="w-icon"> ${Icons(data)} </p>`
        cityHumidity.innerHTML = `<div><p class="iconify" data-icon="carbon:humidity" data-inline="false"></p> <p>${data.main.humidity}%</p></div>`


    }
      load()
     
});
console.log('sssllll')
loadPage()
console.log('sssllll')