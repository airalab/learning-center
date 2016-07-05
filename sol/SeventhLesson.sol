import './Lesson.sol';
import '../market/Market.sol';
import '../market/DAOMarketRegulator.sol';

contract SeventhLesson is Lesson {
    function SeventhLesson(address _ownerAir)
             Lesson(_ownerAir)
    {}
	
    function execute(address _market, address _regulator) {
		if (accountOf[msg.sender]) throw;
		Market market = Market(_market);
		DAOMarketRegulator regulator = DAOMarketRegulator(_regulator);
		if (market.open() == false && market.owner() == _regulator && regulator.market() == market) {
			ownerAir.deal(msg.sender, 100);
			accountOf[msg.sender] = true;
		}
    }
}