pragma solidity ^0.8.7;
contract HelloWorld {
    string message;

    constructor  (string memory _msg) public payable {
        message = _msg;
    }

    function setMessage(string memory _msg) public {
        message = _msg;
    }

     function getMessage() public view returns(string memory)  {
        return message;
    }

    function multiply(int arg1, int arg2) public pure returns(int) {
        return arg1 * arg2;
    }
}
