import 'token/TokenEmission.sol';

/**
 * @title The lesson base contract
 */
contract Lesson is Owned {
    // Air token ref
    TokenEmission public air;

    function setToken(TokenEmission _air) onlyOwner
    { air = _air; }
    
    // Lesson reward
    uint public reward;

    function setReward(uint _reward) onlyOwner
    { reward = _reward; }

    // Address passed the lesson
    mapping(address => bool) public isPassed;

    /**
     * @dev The lesson base constructor
     * @param _air is an air token
     * @param _reward is a lesson reward
     */
    function Lesson(address _air, uint _reward) {
        air    = TokenEmission(_air);
        reward = _reward;
    }

    /**
     * @dev This function called when lesson assertion passed
     * @param _sender is a sender address
     */
    function passed(address _sender) internal {
        // Throw wnen sender already pass me
        if (isPassed[_sender]) throw;

        isPassed[_sender] = true;
        air.emission(reward);
        air.transfer(_sender, reward);
    }
}
