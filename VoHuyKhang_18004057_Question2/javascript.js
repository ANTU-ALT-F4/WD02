patch = ['<img src="./img/daffodils.jpg">','<img src="./img/rosee.jpg">'];

function plant(){
    var num = document.getElementById('count').value;
    if (num <= 0){
        alert('Error');
    }else if(num <= 20){
        document.getElementById('img').innerHTML = "";
        for(var i=0; i <num ; i++){
            var choice = Math.floor(Math.random()*2);
            document.getElementById('img').innerHTML += patch[choice];
        }
    }else{
        alert('Number Maximun is 20');
    }
}

function clear_plant(){
    document.getElementById('count').value = "";
    document.getElementById('img').innerHTML = "";
}