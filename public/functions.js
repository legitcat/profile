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
