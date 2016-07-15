import './Lesson.sol';
import '../market/Market.sol';

contract SixthLesson is Lesson {
    function SixthLesson(address _emissionRegulator)
             Lesson(_emissionRegulator)
    {}
	
    function execute(address _market) {
		if (accountOf[msg.sender]) throw;
		if (Market(_market).size() >= 2) {
			emissionRegulator.deal(msg.sender, 100);
			accountOf[msg.sender] = true;
		}
    }
}