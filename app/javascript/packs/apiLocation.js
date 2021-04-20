export default async function getInfoByLocation() {
 
  const response = await fetch('https://ipapi.co/json/', { mode: 'cors' }).then(response => response.json());

  return response;
}
