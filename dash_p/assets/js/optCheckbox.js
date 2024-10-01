const downContOpt = document.querySelector('.downContOpt');
const returnWay = document.getElementById('return');
const oneway = document.getElementById('oneway');
const returnContainer = document.querySelector('.returnContainer');

if (oneway.checked == true) {
    downContOpt.style.display = 'block';
    returnContainer.style.display = 'none';
} else {
    downContOpt.style.display = 'none';
}

function myOneWay() {
    if (oneway.checked == true) {
        downContOpt.style.display = 'block';
        returnContainer.style.display = 'none';
    } else {
        downContOpt.style.display = 'none';
    }
}

function myReturnWay() {
    if (returnWay.checked == true) {
        downContOpt.style.display = 'block';
        returnContainer.style.display = 'block';
    } else {
        downContOpt.style.display = 'none';
    }

}