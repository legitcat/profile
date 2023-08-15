function openNav() {
      document.getElementById("mySidenav").style.width = "250px";
      //document.getElementById("hammen").style.visibility = "hidden";
    }


function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    } 


function accordian(id){ 

      for (let i = 1; i < 5; i++) {
             if (id==i && document.getElementById("panel"+i).style.display==""){
                   document.getElementById("accordian"+i).style.backgroundColor = "orange"; 
                   document.getElementById("panel"+i).style.display="block"; 
                }
             else{
                   document.getElementById("accordian"+i).style.backgroundColor = "#F0F0F0"; 
                   document.getElementById("panel"+i).style.display=""; 
                }

        }   

   }


function modal_popup() {

     document.getElementById("modal1").style.display="block";

}


function animate(){

     var image = [ 'cat1.png', 'cat2.png', 'cat3.png','cat4.png','cat5.png'];

     value=0;
     img='';

     const t=setInterval(function() {  
          if (value <5){  
             //alert(image[value]);
             img='./images/' + image[value];
             $('#img1').attr('src', img);
             $('.hide').show(800);
             value++;
           }
          else{
               clearInterval(t);
            }
        }, 1000);

 }

    
