pragma solidity ^0.6.0;

contract ST {
    receive() external payable { }

    // A contract can receive a transfer from another address (if it has an external payable method), via mining rewards (coinbase) or via a selfdestruct call from another contract:
    function die() public {
        selfdestruct(payable(0xdef9F308a7169aC13eD97017F38f4441259c4875));
    }
}
