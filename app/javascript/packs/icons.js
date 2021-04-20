export default function icons(data) {
  const status = (data.weather[0].id);
  let url = '';
  if (status <= 232) {
   url = `<span class="iconify" data-icon="carbon:thunderstorm-strong" data-inline="false"></span>`;
  } else if (status <= 321) {
    url = `<span class="iconify" data-icon="bi-cloud-drizzle" data-inline="false"></span>`;
  } else if (status <= 531) {
    url = `<span class="iconify" data-icon="carbon:rain-heavy" data-inline="false"></span>`
  } else if (status <= 622) {
    url = `<span class="iconify" data-icon="fluent:weather-snow-20-regular" data-inline="false"></span>`;
  } else if (status <= 781) {
     url = `<span class="iconify" data-icon="bi:cloud-fog2-fill" data-inline="false"></span>`
  } else if (status === 800) {
    url = `<span class="iconify" data-icon="cil:sun" data-inline="false"></span>`
  } else if (status <= 802) {
    url = `<span class="iconify" data-icon="bi:cloud-sun" data-inline="false"></span>`
  } else if (status <= 804) {
    url =  `<span class="iconify" data-icon="bi:clouds" data-inline="false"></span>`
  }

  return url;
}