class Student
{
  private int _id;
  private String _name;
  private boolean _paidFees;
  // an object inside the student object that stores an address.
  private Address _address;
  
  public Student(int id, String name, String houseNumber, String streetName,
  String suburb, String city)
  {
    _id = id;
    _name = name;
    _address = new Address(houseNumber, streetName, suburb, city);
    _paidFees = false;
  }
  
  public int getId()
  {
    return _id; 
  }
  
  public String getName()
  {
    return _name; 
  }
  
  public String getPaidFees()
  {
    if (_paidFees == true)
    {
      return "Has Paid"; 
    }
    else
    {
     return "Has not paid"; 
    }
  }
  
  public void setPaidFees(boolean paidFees)
  {
     _paidFees = paidFees;
  }
  
  
  public String getAddress(){
   return  _address.toString();
  }
  
  public String getSuburb() {
   return _address.getSuburb(); 
  }
  
  
  public String toString()
  {
    return _id + " " + _name + " " + " " + getPaidFees() + " " + _address; 
  }
  
  public void setHouseNum(String houseNum){
    _address.setHouseNum(houseNum);
  }
  
  public void setStreetName(String streetName) {
   _address.setStreetName(streetName); 
  }
  
  
  
}
