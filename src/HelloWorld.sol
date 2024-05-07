// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract HelloWorld{
    string public  message;

    constructor(string memory theMessage){
        require(bytes(theMessage).length > 0, "Message cannot be empty");
        message=theMessage;
    }

    function viewMessage()external view returns(string memory){
       return (message);
    }
}

