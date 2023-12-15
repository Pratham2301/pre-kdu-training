const add_btn = document.getElementById('add');
const sub_btn = document.getElementById('sub');
const div_btn = document.getElementById('div');
const mul_btn = document.getElementById('mul');


add_btn.onclick = () => {
    const value1 = parseInt(document.getElementById('val1').value);
    const value2 = parseInt(document.getElementById('val2').value);
    alert(value1 + value2);
}

sub_btn.onclick = () => {
    const value1 = parseInt(document.getElementById('val1').value);
    const value2 = parseInt(document.getElementById('val2').value);
    alert(value1 - value2);
}

div_btn.onclick = () => {
    const value1 = parseInt(document.getElementById('val1').value);
    const value2 = parseInt(document.getElementById('val2').value);
    alert(value1 / value2);
}

mul_btn.onclick = () => {
    const value1 = parseInt(document.getElementById('val1').value);
    const value2 = parseInt(document.getElementById('val2').value);
    alert(value1 * value2);
}