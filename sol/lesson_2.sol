import './Lesson.sol';
import '../dao/Core.sol';
import '../token/TokenEmission.sol';

contract SecondLesson is Lesson {
    
	address public airalab_learning_center;
	
	function SecondLesson(address _emissionRegulator, address _airalab_learning_center) 
		     Lesson(_emissionRegulator) {
		airalab_learning_center = _airalab_learning_center;
    }
	
    function execute(address _dao, string _shares_name) {
		if (accountOf[msg.sender]) throw;
		// проверяем что дан approve 1 акции
		TokenEmission shares = TokenEmission(Core(_dao).getModule(_shares_name));
		if (shares.allowance(msg.sender, airalab_learning_center) == 1) {			
			emissionRegulator.deal(msg.sender, 50);
			accountOf[msg.sender] = true;
		}
    }
}