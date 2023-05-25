// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import {VRFv2DirectFundingConsumer} from "./DirectVRF.sol";

interface ERC20{
    function transfer(address to, uint256 amount) external returns (bool);
}

contract test {

  VRFv2DirectFundingConsumer contra;
  address linktoken=0x326C977E6efc84E512bB9C30f76E30c160eD06FB;
  ERC20 token;
  bool public valid;
  constructor(){
    contra = new VRFv2DirectFundingConsumer();
    token = ERC20(linktoken);
  }


  function transferLink() public returns(bool){
    return token.transfer(address(contra),1);
  }
  function get_requested_num(uint _id) public view returns (uint[] memory vals){
    uint paid;
    bool fulfilled;
    ( paid, fulfilled,vals)=contra.getRequestStatus(_id);
    return vals;
  }
}