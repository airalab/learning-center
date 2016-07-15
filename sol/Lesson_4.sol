import './Lesson.sol';
import 'cashflow/ShareSale.sol';

contract Lesson_4 is Lesson {    
    function Lesson_4(address _air, uint _reward) 
             Lesson(_air, _reward) {}
    
    function execute(ShareSale _shareSale) {
        if (_shareSale.closed() > 0)
            passed(msg.sender);
    }
}
