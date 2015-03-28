

function fibonacci(n){
    if(n===0){
        return 0;
    }else if(n===1){
    return 1;
    }else{
        return fibonacci(n-1) + fibonacci(n-2);
    }
}

function sumOfFibs(){
    var sum=0;
    for(var i=0;;i++){
        var fib=fibonacci(i);
        if(fib<4000000){
            if(fib%2===0){
                sum+=fib;
            }
        }else{
            break;
        }
    }
    return sum;
}


$(document).ready(function(){    
   alert("Fibonaccies are "+ sumOfFibs());
});