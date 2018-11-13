pragma solidity ^0.4.25;
contract HelloWorld {
    string message;
    
    constructor  (string _msg) public payable {
        message = _msg;
    }
    
    function setMessage(string _msg) public {
        message = _msg;
    }
    
    function getMessage() constant returns(string) {
        return message;
    }
    
    function multiply(int arg1, int arg2) constant returns(int) {
        return arg1 * arg2;
    }
}
