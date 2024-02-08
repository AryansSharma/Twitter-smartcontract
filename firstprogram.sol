// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Twitter {
 
 
 struct send{
  address value1;
  string content;
 }
 
 send public s1;
  mapping(address=>mapping(address=>bool))public permission;
  function givingaccess(address key, address value, string calldata _content,bool confirmation) public returns(uint){
    if(confirmation==true){
          permission [key] [value] = true;
          s1.value1 = value;
          s1.content = _content;

    }
          return block.timestamp;  
    }
  function denyaccess(address key, address value) public returns(uint){
        permission [key] [value] = false;
        return block.timestamp;
  }
  function resenddata(address key, address value, string calldata _content) public returns(string memory){
    s1.value1=value;
    if( permission [key] [value] = true){
      s1.content=_content;
      return "done";
    }else{
      permission [key] [value] = true;
      return "Yo may try again";
    }

  }

}
      
