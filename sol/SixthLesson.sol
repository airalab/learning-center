import './Lesson.sol';
import '../market/Market.sol';

contract SixthLesson is Lesson {
    function SixthLesson(address _ownerAir)
             Lesson(_ownerAir)
    {}
	
    function execute(address _market) {
		if (accountOf[msg.sender]) throw;
		if (Market(_market).size() >= 2) {
			ownerAir.deal(msg.sender, 100);
			accountOf[msg.sender] = true;
		}
    }
}