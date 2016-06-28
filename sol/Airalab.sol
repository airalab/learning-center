import '../token/TokenEther.sol';

contract Airalab {
    
    TokenEther public token;
    
    function Airalab(address _token) {
        token = TokenEther(_token);
    }
    
    function ping() {
		token.withdraw(5000000000000000000); // 5 Ether
		msg.sender.send(5000000000000000000); // 5 Ether
    }
}