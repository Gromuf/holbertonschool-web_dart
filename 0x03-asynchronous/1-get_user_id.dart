import '1-util.dart';

Future<String> getUserId() async {
	String userId = await fetchUserData()
		.then((data) => data.split(',')[0].split(':')[1].trim().replaceAll('"', ''));
	return userId;
}