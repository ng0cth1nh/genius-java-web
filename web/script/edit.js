/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
const form = document.getElementById('form');
const date = document.getElementById('date');
const year = document.getElementById('year');
const month = document.getElementById('month');
const pass = document.getElementById('password');
const rePass = document.getElementById('rePassword');
const eRePass = document.getElementById('error-repassword');
const eDate = document.getElementById('error-date');


form.addEventListener('submit', (e) => {
  if (pass.value.localeCompare(rePass.value) != 0) {
    e.preventDefault();
    eRePass.style.display = 'flex';
  } else {
    eRePass.style.display = 'none';
  }
  if (isValidDate(month.value + "/" + date.value + "/" + year.value) == false) {
    e.preventDefault();
    eDate.style.display = 'flex';
  } else {
    eDate.style.display = 'none';
  }
})

function isValidDate(dateString) {
  // First check for the pattern
  if (!/^\d{1,2}\/\d{1,2}\/\d{4}$/.test(dateString))
    return false;
  // Parse the date parts to integers
  let parts = dateString.split("/");
  let day = parseInt(parts[1], 10);
  let month = parseInt(parts[0], 10);
  let year = parseInt(parts[2], 10);
  // Check the ranges of month and year
  if (year < 1000 || year > 3000 || month == 0 || month > 12)
    return false;
  let monthLength = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  // Adjust for leap years
  if (year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
    monthLength[1] = 29;

  // Check the range of the day
  return day > 0 && day <= monthLength[month - 1];
}

