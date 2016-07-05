import './Lesson.sol';
import '../market/Market.sol';
import '../market/DAOMarketAgent.sol';

contract EighthLesson is Lesson {
    function EighthLesson(address _ownerAir)
             Lesson(_ownerAir)
    {}
	
    function execute(address _market, address _agent) {
		if (accountOf[msg.sender]) throw;
		Market market = Market(_market);
		DAOMarketAgent agent = DAOMarketAgent(_agent);
		if (agent.regulator().market() == market) {
			ownerAir.deal(msg.sender, 100);
			accountOf[msg.sender] = true;
		}
    }
}