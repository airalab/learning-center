import './Lesson.sol';
import 'market/Market.sol';

contract Lesson_6 is Lesson {
    function Lesson_6(address _air, uint _reward)
             Lesson(_air, _reward) {}

    function execute(Market _market) {
		if (_market.size() >= 2)
            passed(msg.sender);
    }
}
