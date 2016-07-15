import './Lesson.sol';
import 'market/Market.sol';
import 'market/Lot.sol';

contract Lesson_10 is Lesson {
    function Lesson_10(address _air, uint _reward)
             Lesson(_air, _reward) {}
    
    mapping(address => bool) isProceed;
    
    function execute(Market _market) {
        if (_market.size() != 5) throw;

        var lot = _market.first();
        while (address(lot) != 0) {
            if (!isProceed[lot.sale()])
                isProceed[lot.sale()] = true;
            else
                throw;

            lot = _market.next(lot);
        }

        passed(msg.sender);
    }
}
