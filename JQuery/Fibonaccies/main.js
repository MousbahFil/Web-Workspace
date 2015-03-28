var isMultipleOf=function(number, target){
    return number%target==0;
}

var sum=0;
for(var i=0;i<100;i++)    {
    if(isMultipleOf(i,3)||isMultipleOf(i,5)){
        sum+=i;
    }
}
console.log("The total sum is : " + sum);
