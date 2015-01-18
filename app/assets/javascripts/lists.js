function add_button_handler(button_number)
{
    $("#press_play_"+button_number).on("click", function() {
	$(".audio-play-"+button_number)[0].currentTime = 0;
	return $(".audio-play-"+button_number)[0].play();
    });         
}


var callback = function doc_ready()
{
    var word_audios  = $('p').filter(
	function() {
	    return this.id.match(/press_play*/);
	});

    for(var i = 1; i<=65 ; i++)
    {
	add_button_handler(i);
    }
    
    console.log(word_audios.length);
    
    /*$("#press_play_1").on("click", function() {

	$(".audio-play-1")[0].currentTime = 0;
	return $(".audio-play-1")[0].play();
    });
    $("#press_play_2").on("click", function() {

	$(".audio-play-2")[0].currentTime = 0;
	return $(".audio-play-2")[0].play();
    });*/
    
};



jQuery(callback);
  /*  function(){
	$("#press_play_1").on("click", function() {
	    
	    $(".audio-play-1")[0].currentTime = 0;
	    return $(".audio-play-1")[0].play();
	});	   
	$("#press_play_2").on("click", function() {

	    $(".audio-play-2")[0].currentTime = 0;
	    return $(".audio-play-2")[0].play();
	});
    }*/

