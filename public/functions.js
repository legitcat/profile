function openNav() {
      document.getElementById("mySidenav").style.width = "250px";
      //document.getElementById("hammen").style.visibility = "hidden";
    }


function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    } 


function accordian(id){ 


      if (id=="1" && document.getElementById("panel1").style.display==""){
          document.getElementById("accordian1").style.backgroundColor = "orange"; 
          document.getElementById("panel1").style.display="block";
          document.getElementById("accordian2").style.backgroundColor = "#eee"; 
          document.getElementById("panel2").style.display="";
          document.getElementById("accordian3").style.backgroundColor = "#eee"; 
          document.getElementById("panel3").style.display="";
      }
      else if (id=="2" && document.getElementById("panel2").style.display==""){
          document.getElementById("accordian2").style.backgroundColor = "orange"; 
          document.getElementById("panel2").style.display="block";
          document.getElementById("accordian1").style.backgroundColor = "#eee"; 
          document.getElementById("panel1").style.display="";
          document.getElementById("accordian3").style.backgroundColor = "#eee"; 
          document.getElementById("panel3").style.display="";
      }
      else if (id=="3" && document.getElementById("panel3").style.display==""){
          document.getElementById("accordian3").style.backgroundColor = "orange"; 
          document.getElementById("panel3").style.display="block";
          document.getElementById("accordian1").style.backgroundColor = "#eee"; 
          document.getElementById("panel1").style.display="";
          document.getElementById("accordian2").style.backgroundColor = "#eee"; 
          document.getElementById("panel2").style.display="";
      }
      else if ((id=="1" && document.getElementById("panel1").style.display=="block")||(id=="2" && document.getElementById("panel2").style.display=="block")||(id=="3" && document.getElementById("panel3").style.display=="block")){

          for (let i = 1; 3 < 4; i++) {
             document.getElementById("accordian"+i).style.backgroundColor = "#eee"; 
             document.getElementById("panel"+i).style.display="";            
          }

      }   

   }


function modal_popup() {

     document.getElementById("modal1").style.display="block";

}

    