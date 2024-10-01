const form = document.querySelector(".form");
const loginBtn = document.querySelector(".loginBtn");
const errorText = document.querySelector(".error-msg");
const successText = document.querySelector(".success-msg");

form.onsubmit = (e) => {
  e.preventDefault();
};
loginBtn.onclick = () => {
  let xhr = new XMLHttpRequest(); // create new xml object
  xhr.open("POST", "default/php/login.php", true);
  xhr.onload = () => {
    // once ajax loaded
    if (xhr.readyState == 4 && xhr.status == 200) {
      let response = xhr.response;
      // errorText.textContent = response;
      // console.log(response);
      function myFunction(x) {
        if (x.matches) {
          // If media query matches
          if (response == "success") {
            location.href = './dash_p/index.php';
            console.log("this success");
          } else {
            alert(response);
          }
        } else {
          if (response == "success") {
            location.href = "./dash_p/index.php";
            console.log("this link");

            successText.textContent = "Login Successfully";
            errorText.style.display = "none";
            successText.style.display = "block";
          } else if (response == "welcome") {
            location.href = "./dash_p/viewClient.php";
            console.log("this client link");

            successText.textContent = "Welcome to client portal ";
            errorText.style.display = "none";
            successText.style.display = "block";
          } else {
            console.log("this bloc");
            successText.style.display = "none";
            errorText.textContent = response;
            errorText.style.display = "block";
          }
        }
      }

      var x = window.matchMedia("(max-width: 400px)");
      myFunction(x); // Call listener function at run time
      x.addListener(myFunction); // Attach listener function on state changes
    }
  };
  let formData = new FormData(form);
  xhr.send(formData);
};
