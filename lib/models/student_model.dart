
class Student{
  final String studentName;
  final String Text;
  final String teacherName;
  final String imageUrl;

  Student({
    required this.studentName,
    required this.Text,
    required this.teacherName,
    required this.imageUrl,
  });
}

// Dummy static data
List<Student> studentSummaries = [
  Student(
    studentName: 'Kemampuan Merangkum \nTulisan',
    Text: 'BAHASA SUNDA',
    teacherName: 'Oleh Al-Baiqi Samaan',
    imageUrl: 'assets/1.png',
  ),
  Student(
    studentName: 'Kemampuan Merangkum \nTulisan',
    Text: 'BAHASA SUNDA',
    teacherName: 'Oleh Al-Baiqi Samaan',
    imageUrl: 'assets/2.png',
  ),
  Student(
    studentName: 'Bilel yousfi',
    Text: 'BAHASA SUNDA',
    teacherName: 'Oleh Al-Baiqi Samaan',
    imageUrl: 'assets/5.png',
  ),
  Student(
    studentName: 'Yusif yousfi',
    Text: 'BAHASA SUNDA',
    teacherName: 'Oleh Al-Baiqi Samaan',
    imageUrl: 'assets/3.png',
  ),
  Student(
    studentName: 'Kemampuan Merangkum \nTulisan',
    Text: 'BAHASA SUNDA',
    teacherName: 'Oleh Al-Baiqi Samaan',
    imageUrl: 'assets/4.png',
  ),
];
