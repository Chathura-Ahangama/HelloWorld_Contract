// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test{
    HelloWorld public helloWorld;
    function setUp() public{
      helloWorld=new HelloWorld("hello world");
    }

    function test_sayHello() public view{
      helloWorld.viewMessage();
      assertEq(helloWorld.message(),"hello world");
    }

}