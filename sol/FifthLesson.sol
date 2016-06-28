import './Lesson.sol';
import '../cashflow/Proposal.sol';

contract FifthLesson is Lesson {	
	function FifthLesson(address _ownerAir) 
		     Lesson(_ownerAir)
	{}
	
    function execute(address _proposal, uint _total) {
		// проверяем что баланс 5Ether
		Proposal proposal = Proposal(_proposal);
		if (proposal.targetValue() == _total && proposal.closed() > 0) {			
			ownerAir.deal(msg.sender, 100);
		}
    }
}