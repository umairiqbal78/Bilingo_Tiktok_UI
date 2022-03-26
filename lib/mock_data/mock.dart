import 'package:tiktokapp/models/user.dart';
import 'package:tiktokapp/models/video.dart';

User currentUser = User('firstUser',
    'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80');

User demoUser1 = User('demoUser1',
    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60');

User demoUser2 = User('demoUser2',
    'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60');

User demoUser3 = User('demoUser3',
    'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60');

User demoUser4 = User('demoUser4',
    'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60');

final List<Video> videos = [
  Video('v1.mp4', demoUser1, 'caption', 'audioName', '12.6k', '123'),
  Video('v2.mp4', demoUser2, 'caption', 'audioName', '1k', '144K'),
  Video('v3.mp4', demoUser3, 'caption', 'audioName', '12M', '3'),
  Video('v4.mp4', demoUser4, 'caption', 'audioName', '4k', '13'),
];
