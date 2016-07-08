import './Lesson.sol';
import '../cashflow/CrowdSale.sol';

contract TwelfthLesson is Lesson {
    
	address public airalab_learning_center;
	
	function TwelfthLesson(address _emissionRegulator) 
		     Lesson(_emissionRegulator)
	{}
	
    function execute(address _crowdSale) {
		if (accountOf[msg.sender]) throw;
		CrowdSale crowdSale = CrowdSale(_crowdSale);
		if (crowdSale.creditsOf(msg.sender) >= 5) {			
			emissionRegulator.deal(msg.sender, 200);
			accountOf[msg.sender] = true;
		}
    }
}