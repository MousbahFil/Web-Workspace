function newGrid(){    
    $('.container').empty();
    $('.container').prepend('<button onclick="newGrid()">New Grid</button>');
    var size=prompt("Please enter the dimensions of the grid",null);
    var container=$('.container');
    for(var i=0;i<size;i++){
        container.append('<ul></ul>');
    }
    
   var uls=$('ul');
     for(var i=0;i<size;i++){
        uls.append('<li></li>');
    }
    
$('li').css({
display: 'inline-block',
'list-style-type': 'none',
height: '25px',
width: '25px',
border: '1px black solid',
margin: '0 1px',
'box-sizing': 'border-box'
}).hover(function() {
$(this).css('background-color','blue')
});
    
    
$('.container').css({
margin: '0 auto'
});
    
$('ul').css({
padding: '0',
margin: '0'
});
    
$('button').css({
margin: '10px 0',
padding: '10px',
'font-size': '16px'
});
    
};


$(document).ready(function(){
$('body').prepend('<div class="container"></div>')
$('.container').prepend('<button onclick="newGrid()">New Grid</button>')
.append('<ul></ul>').append('<ul></ul>').append('<ul></ul>').append('<ul></ul>');
    
$('ul').append('<li></li>').append('<li></li>').append('<li></li>').append('<li></li>')

$('li').css({
display: 'inline-block',
'list-style-type': 'none',
height: '25px',
width: '25px',
border: '1px black solid',
margin: '0 1px',
'box-sizing': 'border-box'
}).hover(function() {
$(this).css('background-color','blue')
});
    
    
$('.container').css({
margin: '0 auto'
});
    
$('ul').css({
padding: '0',
margin: '0'
});
    
$('button').css({
margin: '10px 0',
padding: '10px',
'font-size': '16px'
});
   

});