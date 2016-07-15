import '../token/TokenEther.sol';

contract Airalab {
    
    TokenEther public token;
    
    function Airalab(address _token) {
        token = TokenEther(_token);
    }
    
    function ping() {
		token.withdraw(5 ether);
		msg.sender.send(5 ether);
    }
}
