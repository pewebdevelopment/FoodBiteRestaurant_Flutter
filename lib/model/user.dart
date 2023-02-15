class User {
  String firstName;
  String lastName;
  String email;
  String avatar;
  int reviews;
  int followers;
  int following;
  bool isFriend;
  bool isFollowing;
  bool isFollower;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
    required this.reviews,
    required this.followers,
    required this.following,
    required this.isFriend,
    required this.isFollowing,
    required this.isFollower,
  });

  String getName() {
    return '$firstName $lastName';
  }
}

final users = [
  User(
    firstName: 'Deanna',
    lastName: 'Murray',
    email: 'd.murray@gmail.com',
    avatar: 'assets/images/1.jpg',
    reviews: 22,
    followers: 452,
    following: 334,
    isFriend: false,
    isFollowing: false,
    isFollower: true,
  ),
  User(
    firstName: 'Abby',
    lastName: 'Lehner',
    email: 'ab.lehner@gmail.com',
    avatar: 'assets/images/2.jpg',
    reviews: 26,
    followers: 354,
    following: 366,
    isFriend: false,
    isFollowing: true,
    isFollower: false,
  ),
  User(
    firstName: 'Tiana',
    lastName: 'Huel',
    email: 'huel-tiana99@icloud.com',
    avatar: 'assets/images/3.jpg',
    reviews: 10,
    followers: 332,
    following: 412,
    isFriend: false,
    isFollowing: true,
    isFollower: true,
  ),
  User(
    firstName: 'Matt',
    lastName: 'Aufderhar',
    email: 'mr-mattx9@hotmail.com',
    avatar: 'assets/images/4.jpg',
    reviews: 45,
    followers: 50,
    following: 99,
    isFriend: true,
    isFollowing: true,
    isFollower: true,
  ),
  User(
    firstName: 'Ignacio',
    lastName: 'Monahan',
    email: 'ignaciomonahan@gmail.com',
    avatar: 'assets/images/5.jpg',
    reviews: 37,
    followers: 64,
    following: 54,
    isFriend: true,
    isFollowing: true,
    isFollower: false,
  ),
  User(
    firstName: 'Ona',
    lastName: 'Wolff',
    email: 'ona90wolff@mail.com',
    avatar: 'assets/images/6.jpg',
    reviews: 6,
    followers: 411,
    following: 174,
    isFriend: false,
    isFollowing: false,
    isFollower: true,
  ),
  User(
    firstName: 'Jerrold',
    lastName: 'Satterfield',
    email: 'j.satterfield@gmail.com',
    avatar: 'assets/images/7.jpg',
    reviews: 11,
    followers: 17,
    following: 86,
    isFriend: false,
    isFollowing: false,
    isFollower: true,
  ),
  User(
    firstName: 'Jacey',
    lastName: 'Jerde',
    email: 'jerde1979@gmail.com',
    avatar: 'assets/images/8.jpg',
    reviews: 5,
    followers: 85,
    following: 180,
    isFriend: true,
    isFollowing: true,
    isFollower: true,
  ),
  User(
    firstName: 'Aron',
    lastName: 'Boyle',
    email: 'baron0101@gmail.com',
    avatar: 'assets/images/9.jpg',
    reviews: 24,
    followers: 76,
    following: 93,
    isFriend: false,
    isFollowing: true,
    isFollower: false,
  ),
  User(
    firstName: 'Richmond',
    lastName: 'Koch',
    email: 'dr.koch@gmail.com',
    avatar: 'assets/images/10.jpg',
    reviews: 19,
    followers: 120,
    following: 209,
    isFriend: false,
    isFollowing: true,
    isFollower: false,
  ),
  User(
    firstName: 'Carlie',
    lastName: 'Herman',
    email: 'ch9herman@yahoo.com',
    avatar: 'assets/images/11.jpg',
    reviews: 21,
    followers: 114,
    following: 100,
    isFriend: false,
    isFollowing: false,
    isFollower: true,
  ),
  User(
    firstName: 'Jaycee',
    lastName: 'Nienow',
    email: 'jn1998.jaycee@gmail.com',
    avatar: 'assets/images/12.jpg',
    reviews: 2,
    followers: 230,
    following: 216,
    isFriend: false,
    isFollowing: false,
    isFollower: false,
  ),
  User(
    firstName: 'Clair',
    lastName: 'Graham',
    email: 'miss.gc@aol.com',
    avatar: 'assets/images/13.jpg',
    reviews: 13,
    followers: 248,
    following: 142,
    isFriend: true,
    isFollowing: true,
    isFollower: true,
  ),
  User(
    firstName: 'Ahmed',
    lastName: 'Strosin',
    email: 'ahmeds88@icloud.com',
    avatar: 'assets/images/14.jpg',
    reviews: 8,
    followers: 391,
    following: 321,
    isFriend: false,
    isFollowing: false,
    isFollower: false,
  ),
  User(
    firstName: 'Garnett',
    lastName: 'Hane',
    email: 'garnett@hotmail.com',
    avatar: 'assets/images/15.jpg',
    reviews: 46,
    followers: 42,
    following: 79,
    isFriend: false,
    isFollowing: false,
    isFollower: true,
  ),
  User(
    firstName: 'Junior',
    lastName: 'Okuneva',
    email: 'j_okun1993@gmail.com',
    avatar: 'assets/images/16.jpg',
    reviews: 40,
    followers: 33,
    following: 68,
    isFriend: false,
    isFollowing: false,
    isFollower: false,
  ),
  User(
    firstName: 'Stone',
    lastName: 'Johns',
    email: 'sstonej1@mail.com',
    avatar: 'assets/images/17.jpg',
    reviews: 30,
    followers: 117,
    following: 102,
    isFriend: false,
    isFollowing: true,
    isFollower: false,
  ),
  User(
    firstName: 'Tamia',
    lastName: 'Marks',
    email: 'tima-marks@gmail.com',
    avatar: 'assets/images/18.jpg',
    reviews: 49,
    followers: 273,
    following: 354,
    isFriend: false,
    isFollowing: true,
    isFollower: false,
  ),
  User(
    firstName: 'Jessie',
    lastName: 'Kassulke',
    email: 'jessica23@gmail.com',
    avatar: 'assets/images/19.jpg',
    reviews: 22,
    followers: 96,
    following: 40,
    isFriend: false,
    isFollowing: false,
    isFollower: true,
  ),
  User(
    firstName: 'Tina',
    lastName: 'Grimes',
    email: 'grimes-tina@gmail.com',
    avatar: 'assets/images/20.jpg',
    reviews: 5,
    followers: 331,
    following: 114,
    isFriend: true,
    isFollowing: true,
    isFollower: true,
  ),
];
