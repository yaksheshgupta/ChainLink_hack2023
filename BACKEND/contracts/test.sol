// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 ;

interface ERC20{
    function name() external view  returns (string memory);

    function symbol() external view returns (string memory);

    function transfer(address to, uint256 amount) external returns (bool);

}

contract test{
    address linkaddress=0x326C977E6efc84E512bB9C30f76E30c160eD06FB;

    ERC20 token;
    constructor(){
        token=ERC20(linkaddress);
        token.transfer(0x569402E6D161155e6C77632ac35908305da4E7a0,1);
    }

    function name() public view returns (string memory){
        return token.name();
    }

}