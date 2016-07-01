import './Lesson.sol';
import '../cashflow/Proposal.sol';

contract FourthLesson is Lesson {	
	function FourthLesson(address _ownerAir) 
		     Lesson(_ownerAir)
	{}
	
    function execute(address _proposal, uint _total) {
		if (accountOf[msg.sender]) throw;
		// проверяем что баланс 5Ether
		Proposal proposal = Proposal(_proposal);
		if (proposal.targetValue() == _total && proposal.closed() > 0) {			
			ownerAir.deal(msg.sender, 100);
			accountOf[msg.sender] = true;
		}
    }
}