/// A user that belongs to a MongoDB Stitch application.
class CoreRealmUser {
  final String? id;
  final String? deviceId;
  final StitchUserProfile? profile;
  final Map? customData;

  CoreRealmUser({
    required this.id,
    this.deviceId,
    this.profile,
    this.customData,
  });

//  final String loggedInProviderType;
//  final String loggedInProviderName;
  //final StitchUserProfileImpl profile;
//  final bool isLoggedIn;
//  final DateTime lastAuthActivity;

  static fromMap(Map? map) {
    return (map == null)
        ? null
        : CoreRealmUser(
            id: map["id"],
            deviceId: map["device_id"],
            customData: map['customData'] ?? Map(),
            profile: StitchUserProfile.fromMap(map['profile'] ?? Map()));
  }
}

class StitchUserProfile {
  final String? name;
  final String? email;
  final String? pictureUrl;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? birthday;
  final String? minAge;
  final String? maxAge;

  StitchUserProfile({
    this.name,
    this.email,
    this.pictureUrl,
    this.firstName,
    this.lastName,
    this.gender,
    this.birthday,
    this.minAge,
    this.maxAge,
  });

  StitchUserProfile.fromMap(Map map)
      : name = map["name"] ?? '',
        email = map["email"] ?? '',
        pictureUrl = map["pictureUrl"] ?? '',
        firstName = map["firstName"] ?? '',
        lastName = map["lastName"] ?? '',
        gender = map["gender"] ?? '',
        birthday = map["birthday"] ?? '',
        minAge = map["minAge"] ?? '',
        maxAge = map["maxAge"] ?? '';
}

class UserProfile {
  final String? id;
  final String? userId;
  final String? userLevel;
  final String? phoneNumber;
  final int? dateAdded;
  final String? fbmToken;
  final String? profileId;

  UserProfile({
    this.id,
    this.userId,
    this.userLevel,
    this.phoneNumber,
    this.dateAdded,
    this.fbmToken,
    this.profileId,
  });

  UserProfile.fromMap(Map map)
      : id = map["_id"] ?? '',
        userId = map["userId"] ?? '',
        userLevel = map["userLevel"] ?? '',
        phoneNumber = map["phoneNumber"] ?? '',
        dateAdded = map["dateAdded"] ?? '',
        profileId = map["profileId"] ?? '',
        fbmToken = map["fbmToken"] ?? '';
}
