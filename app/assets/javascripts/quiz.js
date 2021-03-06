word_index_array = []; 
jQuery(
    function()
    {
	
	
	if(quiz_page){
	    word_index_array = get_random_words(5);
	    console.log(word_index_array);
	    load_words(words);
	    
	}
	quiz_page = false;
    }
);

function randomIntFromInterval(min,max) {
    return Math.floor(Math.random()*(max-min+1)+min);
}

function get_random_words(num)
{
    var array = [];
    for(var i=0; i<num ;i++)
    {
	array[i] = randomIntFromInterval(0,(words.length-1));
    }

    return array; 
}


function load_words(words)
{
    console.log(current_word);
    document.getElementById("qs").innerHTML = words[word_index_array[current_index]].translation;

}

function check_answer()
{
    var chinese_answer = document.getElementById("chinese_answer").value;
    var pinyin_answer  = document.getElementById("pinyin_answer").value;
    var c_correct = (chinese_answer === words[word_index_array[current_index]].chinese);
    var p_correct = (pinyin_answer  === words[word_index_array[current_index]].pinyin); 

    if((c_correct)&&(p_correct))
    {
	current_index++;
	if(current_index === 5)
	{
	    alert("You are finished. Well done");
	}
	current_word = word_index_array[current_index];
	document.getElementById("qs").innerHTML = words[current_word].translation;
	document.getElementById("chinese_answer").value = "" ;
	document.getElementById("pinyin_answer").value = "";
	
    }else if((!c_correct)&&(p_correct)){
	alert("Correct Chinese: "+ words[word_index_array[current_index]].chinese);
    }else if((c_correct)&&(!p_correct)){
	alert("Correct Pinyin: "+ words[word_index_array[current_index]].pinyin);
    }else if((!c_correct)&&(!p_correct)){
	alert("Correct Chinese: "+ words[word_index_array[current_index]].chinese +"\n"+ "Correct Pinyin: "+ words[word_index_array[current_index]].pinyin  );
    }
    
}

