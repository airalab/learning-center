import '../token/TokenEther.sol';
import './Lesson.sol';

contract Lesson_0 {
    mapping(address => bool) public isSended;
    
    function ping() {
        if (isSended[msg.sender]) throw;

        isSended[msg.sender] = true;
        msg.sender.send(5 ether);
    }
}
