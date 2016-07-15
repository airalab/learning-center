import './Lesson.sol';
import 'market/Market.sol';
import 'market/DAOMarketAgent.sol';

contract Lesson_8 is Lesson {
    function Lesson_8(address _air, uint _reward)
             Lesson(_air, _reward) {}

    function execute(Market _market, DAOMarketAgent _agent) {
        if (_agent.regulator().market() == _market)
            passed(msg.sender);
    }
}
