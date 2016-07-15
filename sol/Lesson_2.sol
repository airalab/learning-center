import './Lesson.sol';
import 'dao/Core.sol';
import 'token/Token.sol';

contract Lesson_2 is Lesson {
    function Lesson_2(address _air, uint _reward) 
             Lesson(_air, _reward) {}
    
    function execute(Core _dao, string _shares_name) {
        // Check for allowance of me is positive
        Token shares = Token(_dao.getModule(_shares_name));
        if (shares.allowance(msg.sender, this) > 0)
            passed(msg.sender);
    }
}
