class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? github;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.github,
  });
}

// #################
// PROFESSIONAL PROJECTS

List<ProjectUtils> profProjectUtils = [
  ProjectUtils(
      title: "Cafe App",
      subtitle: "App to manage your restaurant business",
      webLink: "https://cafe-app-01.web.app/",
      image: 'assets/projects/1.png'),
  ProjectUtils(
      title: "Event Management App",
      subtitle: "App to manage your Event Seamlessly",
      webLink: "https://cafe-app-01.web.app/",
      image: 'assets/projects/efi.png'),
  ProjectUtils(
      title: "Wordpress - Flutter RESTApi App",
      subtitle: "App to connect your wordpress backend to flutter",
      webLink: "https://cafe-app-01.web.app/",
      image: 'assets/projects/Wp1.png'),
  // ProjectUtils(
  //     title: "Cafe App",
  //     subtitle: "App to manage your restaurant business",
  //     webLink: "https://cafe-app-01.web.app/",
  //     image: 'assets/projects/1.png'),
];

// #################
// PRACTICE PROJECTS

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      title: "Laravel - Flutter Communication",
      subtitle: "Connection Laravel backend to Flutter Frontend",
      webLink: "https://cafe-app-01.web.app/",
      image: 'assets/projects/Laravel.png'),

  ProjectUtils(
      title: "WhatsApp Flutter UI",
      subtitle: "Clone of WhatsApp UI",
      webLink: "https://cafe-app-01.web.app/",
      image: 'assets/projects/WA1.png'),

  ProjectUtils(
      title: "Maze Runner Game",
      subtitle: "Maze Runner Game Made using flutter package",
      webLink: "https://cafe-app-01.web.app/",
      image: 'assets/projects/Maze.png'),

  // ProjectUtils(
  //   title: "p App",
  //   subtitle: "App to manage your restaurant business",
  //   webLink: "https://cafe-app-01.web.app/",
  //   image: 'assets/projects/1.png'),
];
