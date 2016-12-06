pragma solidity ^0.4.4;
import './Lesson.sol';
import 'cashflow/CrowdSale.sol';

contract Lesson_7 is Lesson {
	function Lesson_7(address _dealer, uint _reward) 
		     Lesson(_dealer, _reward) {}
	
    function execute(CrowdSale _crowdSale) {
		if (_crowdSale.creditsOf(msg.sender) >= 5)
            passed(msg.sender);
    }
}
