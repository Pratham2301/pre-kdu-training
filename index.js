const inc_btn = document.getElementById('incr');
const dec_btn = document.getElementById('decr');
const number = document.getElementById('num');

inc_btn.onclick = () => {
    console.log("clicked+")
    number.innerHTML = parseInt(number.innerHTML) + 1;
}

dec_btn.onclick = () => {
    console.log("clicked-")
    number.innerHTML = parseInt(number.innerHTML) - 1;
}