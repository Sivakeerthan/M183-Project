var clickedbtns=0;
var rightansw = false;
var points = 0;

function disablebtns() {
    var btns  = [];
    if(clickedbtns === 2){

        $(".selected").prop('disabled', true);
        $(".selected").each(function () {
            $(this).prop('disabled',true);
            $(this).addClass("disabled");
            btns.push($(this).attr('name'));
        });


        console.log("btn1:"+btns[0]);
        console.log("btn2:"+btns[1]);
        if(btns[0] === btns[1]){
            $(".selected").each(function () {
                $(this).removeClass("selected");
                $(this).addClass("right-answ");
                points += parseInt($(this).attr('points'));
            });
        }
        else{
            $(".selected").each(function () {
                $(this).removeClass("selected");
                $(this).addClass("wrong-answ");
            });
        }

        clickedbtns = 0;
        if($(".right-answ").length + $(".wrong-answ").length === 6){
            $(location).attr('href', './checkFiPa?points='+points+'&solved='+btns[0]);
        }
    }

}
function disablecol(col) {
   if(col === "c1"){

       $("#FiPa .c2 button").each(function () {
           $(this).prop('disabled',false);
       });
       $(".disabled").prop('disabled',true);
       $("#FiPa .c1 button").each(function () {
           $(this).prop('disabled', true);
       })
   }
   if(col === "c2"){

       $("#FiPa .c1 button").each(function () {
           $(this).prop('disabled',false);
       });
       $(".disabled").prop('disabled',true);
       $("#FiPa .c2 button").each(function () {
           $(this).prop('disabled', true);
       })
   }
}

$(".btn11").click(this.btnClicked("btn11","c1"));
$(".btn12").click(this.btnClicked("btn12","c2"));
$(".btn21").click(this.btnClicked("btn21","c1"));
$(".btn22").click(this.btnClicked("btn22","c2"));
$(".btn31").click(this.btnClicked("btn31","c1"));
$(".btn32").click(this.btnClicked("btn32","c2"));

function btnClicked(selectorClass,disable){
    $("."+selectorClass).addClass("selected");
    $("."+selectorClass).prop('disabled', true);
    clickedbtns+=1;
    disablebtns();
    disablecol(disable);
}

$("#answer-div .solut").click(function () {
    $("#answer-div button").addClass("wrong-answ");
    $(this).removeClass("wrong-answ");
    $(this).addClass("right-answ");
});
$("#answer-div button").click(function (){
    if($(this).text() == $('.answ').text()){
        $(this).removeClass("wrong-answ");
        $(this).addClass("right-answ");
        rightansw = true;
    }
    else{
        $(this).addClass("wrong-answ");
        rightansw = false;
    }
    $("#answer-div button").each(
      function(){

          if($(this).text() == $('.answ').text()){
              $(this).removeClass("wrong-answ");
              $(this).addClass("right-answ");
          }
          else{
              $(this).addClass("wrong-answ");
          }
      }
    );



});
$(document).ready(function () {
    $('#mucho_next').click(function () {
        $(location).attr('href', './checkMuCho?solved=' + $('.quest').attr('id') + '&corr=' + rightansw);
    });

});

 function returnToChoice() {
    if(window.confirm("Do you really want to return to Home? (progress won't be saved)")){
        $(location).attr('href','/choice');
    }
    else{
        return false;
    }
}
function callsysopt(){
    $(location).attr('href','/choice/?name='+$("#sysopt").val());
}


