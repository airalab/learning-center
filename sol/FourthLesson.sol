import './Lesson.sol';
import '../cashflow/IPO.sol';

contract FourthLesson is Lesson {	
	function FourthLesson(address _ownerAir) 
		     Lesson(_ownerAir)
	{}
	
    function execute(address _ipo) {
		// проверяем что баланс 5Ether
		if (IPO(_ipo).getFoundedCredits() == 1000000000000000000) {			
			ownerAir.deal(msg.sender, 100);
		}
    }
}