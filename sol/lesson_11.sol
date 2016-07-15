import './Lesson.sol';
import '../cashflow/BoardOfDirectors.sol';

contract EleventhLesson is Lesson {
    function EleventhLesson(address _emissionRegulator)
             Lesson(_emissionRegulator)
    {}
	
	function execute(address _bod) {
		if (accountOf[msg.sender]) throw;
		BoardOfDirectors bod = BoardOfDirectors(_bod);
		if (bod.voting().current_proposal() > 0) {
			emissionRegulator.deal(msg.sender, 200);
			accountOf[msg.sender] = true;
		}
    }
}