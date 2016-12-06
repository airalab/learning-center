pragma solidity ^0.4.4;
import './Lesson.sol';
import 'cashflow/BoardOfDirectors.sol';

contract Lesson_6 is Lesson {
    function Lesson_6(address _dealer, uint _reward)
             Lesson(_dealer, _reward) {}
    
    function execute(BoardOfDirectors _bod) {
        if (_bod.voting().current_proposal() > 0)
            passed(msg.sender);
    }
}
