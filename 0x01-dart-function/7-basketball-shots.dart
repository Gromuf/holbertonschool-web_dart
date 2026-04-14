int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
	int calculatePoints(Map<String, int> stats) {
		int freeThrows = (stats['Free throws'] ?? 0) * 1;
		int twoPointers = (stats['2 pointers'] ?? 0) * 2;
		int threePointers = (stats['3 pointers'] ?? 0) * 3;
		return freeThrows + twoPointers + threePointers;
	}
	int scoreA = calculatePoints(teamA);
	int scoreB = calculatePoints(teamB);
	if (scoreA > scoreB) {
		return 1;
	} else if (scoreA < scoreB) {
		return 2;
	} else {
		return 0;
	}
}