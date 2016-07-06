import './Lesson.sol';
import '../cashflow/ShareSale.sol';

contract FifthLesson is Lesson {	
	function FifthLesson(address _emissionRegulator) 
		     Lesson(_emissionRegulator)
	{}
	
    function execute(address _shareSale) {
		if (accountOf[msg.sender]) throw;
		ShareSale shareSale = ShareSale(_shareSale);
		if (shareSale.closed() > 0) {			
			emissionRegulator.deal(msg.sender, 100);
			accountOf[msg.sender] = true;
		}
    }
}