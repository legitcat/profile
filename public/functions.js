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


<!--The script section triggers the modal/popup-->

const modal = document.querySelector(".modal");
const trigger = document.querySelector(".trigger");
const closeButton = document.querySelector(".close-button");

const modal2 = document.querySelector(".modal2");
const trigger2 = document.querySelector(".trigger2");
const closeButton2 = document.querySelector(".close-button2");

const modal3 = document.querySelector(".modal3");
const trigger3 = document.querySelector(".trigger3");
const closeButton3 = document.querySelector(".close-button3");

const modal4 = document.querySelector(".modal4");
const trigger4 = document.querySelector(".trigger4");
const closeButton4 = document.querySelector(".close-button4");

const modal5 = document.querySelector(".modal5");
const trigger5 = document.querySelector(".trigger5");
const closeButton5 = document.querySelector(".close-button5");


function toggleModal() {
    modal.classList.toggle("show-modal");
}

function toggleModal2() {
    modal2.classList.toggle("show-modal2");
}

function toggleModal3() {
    modal3.classList.toggle("show-modal3");
}

function toggleModal4() {
    modal4.classList.toggle("show-modal4");
}


function toggleModal5() {
    modal5.classList.toggle("show-modal5");
}

function windowOnClick(event) {

    if (event.target === modal) {
        toggleModal();
       }
    else if (event.target === modal2) {
        toggleModal2();
       }
    else if (event.target === modal3) {
        toggleModal3();
       }
    else if (event.target === modal4) {
        toggleModal4();
       }
    else if (event.target === modal5) {
        toggleModal5();
       }

}

trigger.addEventListener("click", toggleModal);
closeButton.addEventListener("click", toggleModal);

trigger2.addEventListener("click", toggleModal2);
closeButton2.addEventListener("click", toggleModal2);

trigger3.addEventListener("click", toggleModal3);
closeButton3.addEventListener("click", toggleModal3);

trigger4.addEventListener("click", toggleModal4);
closeButton4.addEventListener("click", toggleModal4);

trigger5.addEventListener("click", toggleModal5);
closeButton5.addEventListener("click", toggleModal5);

window.addEventListener("click", windowOnClick);


