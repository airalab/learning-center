import './Lesson.sol';
import 'market/DAOMarketRegulator.sol';

contract Lesson_9 is Lesson {
    function Lesson_9(address _air, uint _reward)
             Lesson(_air, _reward) {}

    function execute(DAOMarketRegulator _regulator, address _asset, address _rule) {
        if (_regulator.currentRuleOf(_asset) == _rule)
            passed(msg.sender);
    }
}
