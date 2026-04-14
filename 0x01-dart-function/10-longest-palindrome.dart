String longestPalindrome(String s) {
	if (s.length < 3) {
		return "none"; 
	}
	String longest = "";
	String expandAroundCenter(String s, int left, int right) {
		while (left >= 0 && right < s.length && s[left] == s[right]) {
		left--;
		right++;
		}
		return s.substring(left + 1, right);
	}
	for (int i = 0; i < s.length; i++) {
		String odd = expandAroundCenter(s, i, i);
		if (odd.length > longest.length) {
		longest = odd;
		}
		String even = expandAroundCenter(s, i, i + 1);
		if (even.length > longest.length) {
		longest = even;
		}
	}
	return longest.length >= 3 ? longest : "none";
}