import './Lesson.sol';
import 'cashflow/CrowdSale.sol';

contract Lesson_12 is Lesson {
	function Lesson_12(address _air, uint _reward) 
		     Lesson(_air, _reward) {}
	
    function execute(CrowdSale _crowdSale) {
		if (_crowdSale.creditsOf(msg.sender) >= 5)
            passed(msg.sender);
    }
}
