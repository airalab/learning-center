import './Lesson.sol';
import 'market/Market.sol';
import 'market/DAOMarketRegulator.sol';

contract Lesson_7 is Lesson {
    function Lesson_7(address _air, uint _reward)
             Lesson(_air, _reward) {}
 
    function execute(Market _market, DAOMarketRegulator _regulator) {
        if (_market.regulatorEnabled()
         && _market.owner() == address(_regulator)
         && _regulator.market() == _market)
            passed(msg.sender);
    }
}
