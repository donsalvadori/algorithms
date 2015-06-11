var expandAroundCenter = function (string, c1, c2){
	var length = string.length();
	while(c1 >= 0 && c2 <= length - 1 && string[c1] == string[c2]) {
		c1++;
		c2--;
	}
	return string.substr(c1+1,c2-c1-1);
}

var longestPalindrome = function (string){
	var length = string.length();
	if (length == 0) {return "";}
	var longest = string.substr(0,1); // a single char is a palindrome technically
	
	for(var i = 0; i < length - 1; i++){
		var pal1 = expandAroundCenter(string, i, i); //pal1 is short for palindrome1
		if (pal1.length() > longest.length()){
			longest = pal1; 
		}

		var pal2 = expandAroundCenter(string, i, i+1);
		if(pal2.length() > longest.length()){
			longest = pal2;
		}
	}
	return longest;
}


longestPalindrome("A man, a plan, anana a canal - Panama!");