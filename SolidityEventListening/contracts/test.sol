pragma solidity 0.4.18;

contract EventTest {
    
   string fName;
   uint age;
   
   event Instructor(string name, uint age);
   
   function setInstructor(string _fName, uint _age) public {
       fName = _fName;
       age = _age;
       Instructor(fName, age);
   }
   
   function getInstructor() public constant returns (string, uint) {
       return (fName, age);
   }
    
}