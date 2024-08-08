ArrayList<Student> studentList = new ArrayList<Student>();
void setup()
{
  //Student s1 = new Student(100, "Bob", "5A", "Hillcrest Road", "Hillcrest", "Hamilton");
  //Student s2 = new Student(200, "Mary", "10", "Te Huia Drive", "Flagstaff", "Hamilton");
  //Student s3 = new Student(300, "Jess", "20", "Knighton Road", "Hillcrest", "Hamilton");
  
  //s1.setPaidFees(true);
  //println(s1.toString());
  
  //s1.setHouseNum("19");
  //s1.setStreetName("Raleigh Ave");
  
  //studentList.add(s1);
  //studentList.add(s2);
  //studentList.add(s3);


  
  for(Student s: studentList)
  {
    println(s.getName() + " " + s.getSuburb()); 
  }
  // load all lines from the file into an array
  String[] lineArray = loadStrings("students.txt");

  // for each string in the array
  for (String s: lineArray) {
    // split the csv data in the line
      String[] csvArray = split(s, ',');
      // create a new student object
      studentList.add(new Student(parseInt(csvArray[0]), csvArray[1], csvArray[2],
      csvArray[3], csvArray[4], csvArray[5]));
      
  }
  
  for(Student s: studentList)
  {
    println(s.toString()); 
  }
  
  
}
