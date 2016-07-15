import './Lesson.sol';
import 'cashflow/BoardOfDirectors.sol';

contract Lesson_11 is Lesson {
    function Lesson_11(address _air, uint _reward)
             Lesson(_air, _reward) {}
    
    function execute(BoardOfDirectors _bod) {
        if (_bod.voting().current_proposal() > 0)
            passed(msg.sender);
    }
}
