class NotificationClassModel {
  String? title;
  String? subtitle;
  String? img;
  NotificationClassModel({this.title, this.subtitle, this.img});
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

List<NotificationClassModel> notificationlist = [
  NotificationClassModel(
      title: 'Hey, it’s time for lunch',
      subtitle: 'About 1 minutes ago',
      img: 'assets/images/notification_icon/lunch.png'),
  NotificationClassModel(
      title: 'Don’t miss your lowerbody workout',
      subtitle: 'About 3 hours ago',
      img: 'assets/images/notification_icon/lowerbody.png'),
  NotificationClassModel(
      title: 'Hey, let’s add some meals for your b..',
      subtitle: 'About 3 hours agoo',
      img: 'assets/images/notification_icon/meals.png'),
  NotificationClassModel(
      title: 'Congratulations, You have finished A..',
      subtitle: '29 May',
      img: 'assets/images/notification_icon/workout.png'),
  NotificationClassModel(
      title: 'Hey, it’s time for lunch',
      subtitle: '8 April',
      img: 'assets/images/notification_icon/lunch.png'),
  NotificationClassModel(
      title: 'Ups, You have missed your Lowerbo...',
      subtitle: '3 April',
      img: 'assets/images/notification_icon/lowerbody.png'),
];
