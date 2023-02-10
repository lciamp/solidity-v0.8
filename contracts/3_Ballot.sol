pragma solidity ^0.4.17;

  /**
   * @title Inbox
   * @dev ContractDescription
   * @custom:dev-run-script "3_Ballot.sol"
   */
contract Inbox {
    string public message;

    constructor(string initialMessage) public {
        message = initialMessage;
    }

    function setMessage(string newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string) {
        return message;
    }

}