import './Lesson.sol';
import '../dao/Core.sol';
import '../token/TokenEther.sol';

contract ThirdLesson is Lesson {
    
	address public airalab_learning_center;
	
	function ThirdLesson(address _ownerAir) 
		     Lesson(_ownerAir)
	{}
	
    function execute(address _token) {
		if (accountOf[msg.sender]) throw;
		// проверяем что баланс 0.1
		TokenEther token = TokenEther(_token);
		if (token.balanceOf(msg.sender) == 100000000000000000) {			
			ownerAir.deal(msg.sender, 50);
			accountOf[msg.sender] = true;
		}
    }
}