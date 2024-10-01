let province = document.getElementById("provinces");
let district = document.getElementById("district");
let cells = document.getElementById("cells");
let sectors = document.getElementById("sector");
let villages = document.getElementById("villages");
$(document).ready((e) => {
  const settings = {
    async: true,
    crossDomain: true, 
    url: "https://rwanda-address.onrender.com/Provinces",
    method: "GET", 
  };
  $.ajax(settings).done(function (response) {
    province.innerHTML =
      '<option value="" disabled selected> Select Province</option>';
    for (const prv of response.data) {
      console.log(prv);
      let result = `<option value="${prv}">${prv}</option>`;
      province.innerHTML += result;
    }
  });
});
province.addEventListener("change", () => {
  const settings = {
    async: true,
    crossDomain: true,
    url: `https://rwanda-address.onrender.com/District?province=${$(
      "#provinces"
    ).val()}`, 
    method: "GET", 
  };

  $.ajax(settings).done(function (response) {
    district.innerHTML =
      '<option value="" disabled selected> Select District</option>';
    for (const dist of response.data) {
      let result = `<option value="${dist}">${dist}</option>`;
      district.innerHTML += result;
    }
  });
});
district.addEventListener("change", () => {
  const settings = {
    async: true,
    crossDomain: true,
    url: `https://rwanda-address.onrender.com/Sector?province=${$(
      "#provinces"
    ).val()}&district=${$("#district").val()}`, 
    method: "GET", 
  };

  $.ajax(settings).done(function (response) {
    sectors.innerHTML =
      '<option value="" disabled selected> Select Sector</option>';
    for (const sect of response.data) {
      let result = `<option value="${sect}">${sect}</option>`;
      sectors.innerHTML += result;
    }
  });
});
sectors.addEventListener("change", () => {
  const settings = {
    async: true,
    crossDomain: true,
    url: `https://rwanda-address.onrender.com/Cells?province=${$("#provinces").val()}&district=${$(
      "#district"
    ).val()}&sector=${$("#sector").val()}`, 
    method: "GET", 
  };
  $.ajax(settings).done(function (response) {
    cells.innerHTML =
      '<option value="" disabled selected> Select Cell</option>';
    for (const cel of response.data) {
      let result = `<option value="${cel}">${cel}</option>`;
      cells.innerHTML += result;
    }
  });
});
cells.addEventListener("change", () => {
  const settings = {
    async: true,
    crossDomain: true,
    url: `https://rwanda-address.onrender.com/Villages?province=${$(
      "#provinces"
    ).val()}&district=${$("#district").val()}&sector=${$("#sector").val()}&cell=${$(
      "#cells"
    ).val()}`, 
    method: "GET", 
  };
  $.ajax(settings).done(function (response) {
    villages.innerHTML =
      '<option value="" disabled selected> Select Village</option>';
    for (const vil of response.data) {
      let result = `<option value="${vil}">${vil}</option>`;
      villages.innerHTML += result;
    }
  });
});
