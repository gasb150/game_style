import Weather from './apiWeather';
import Location from './apiLocation';
import Icons from './icons'
const loadPage = ( () => {

    const load = async () => {
      
      
        const locData = await Location().then((response => {
         
             const city = response.city;
             return city;
         })
        ).catch(err => {
            console.log(err)
        })
        
 

        let cityInput = locData;
      

        const data = await Weather(cityInput);
        const tempValue = data.main.temp;
        const cityName = document.getElementById('cityName')
        const cityTemp = document.getElementById('temp')
        const cityCloud = document.getElementById('cloud')
        const cityHumidity = document.getElementById('humidity')

      
        
        cityName.innerHTML = data.name +', ' + data.sys.country
        cityTemp.innerHTML = ` ${Math.round(tempValue - 273.15, -1)}°C`;
        cityCloud.innerHTML = `<img src="http://openweathermap.org/img/wn/${data.weather[0].icon}.png"> </img>`
        cityCloud.innerHTML = `<p class="w-icon"> ${Icons(data)} </p>`
        cityHumidity.innerHTML = `<div><p class="iconify" data-icon="carbon:humidity" data-inline="false"></p> <p>${data.main.humidity}%</p></div>`


    }
      load()
     
});

loadPage()
