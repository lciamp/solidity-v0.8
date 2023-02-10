// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State Vars
    uint public myUint = 1;
    uint256 public myUint256  = 1;

    string public myString = "Hello World!";
    bytes32 public myBytes32 = "hello world";

    address public myAddress = 0x958022786C530a428be5407E05345A8675CAfCB6;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    // arrays
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple", "orange", "bananna"];
    string[] public values;
    uint256[][] public array2D = [[1,2,3], [4,5,6]];

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns(uint){
        return values.length;
    }

    // maps
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    // mapping of mapping
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    address public owner;

    constructor() {
        names[1] = "Lou";
        names[2] = "Hudson";
        names[3] = "Bean";

        owner = msg.sender;
    }
    
    function addBook(
        uint _id, 
        string memory _title, 
        string memory _author ) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint _id, 
        string memory _title, 
        string memory _author ) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

    MyStruct public myStruct = MyStruct(1, "Hello world!");

    // Local Vars
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }

    // conditionals and loops
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function countEventNumbers() public view returns(uint) {
        uint count = 0;

        for(uint i = 0; i < numbers.length; i++) {
            if(isEvenNumber(numbers[i])) {
                count++;
            } 
        }

        return count;
    }

    function isEvenNumber(uint _number) public pure returns(bool){
        if(_number % 2 == 0){
            return true;
        } else {
            return false;
        }
    }

    function isOwner() public view returns(bool) {
        return(msg.sender == owner);
    }
}