if(highscore_value(10)<=score){
 
  
 var player_name = get_string("Please enter your name -maximun 14 letters or numbers, can include @ and _- :","");
 highscore_add(player_name,score); 
 




//popup to enter a score
var player_score = score;
hashkey = "55c65b6a490a014390628903";
/* Encrypting your tagid is optional, but strongly recommended.
to encrypt simply add the player name and score as a string onto the end of the hash key and use the function below to make a hash string(sha1)
your hash key can be found by editing your game info on gmscoreboard.com and TURNING ON the require hash setting. 
The hash key will be visible from your dashboard once enabled */
hash = sha1_string_utf8(string(hashkey) + string(player_name) + string(player_score));




//send the name and score to gmscoreboard.com
gmsb_post = http_post_string("http://gmscoreboard.com/handle_score.php?tagid="+string(tagid)+
"&player="+string(player_name)+
"&score="+string(player_score)+
"&hash="+string(hash),"");
 

 }
 
score=0;
