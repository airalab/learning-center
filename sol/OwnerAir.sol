import '../common/Owned.sol';
import '../token/TokenEmission.sol';

contract OwnerAir is Owned {
    
    TokenEmission public token;
    
    function OwnerAir(address _token) {
        token = TokenEmission(_token);
    }
	
    function delegateToken(address _owner) onlyOwner {
        token.delegate(_owner);
    }
	
    function changeToken(address _token) onlyOwner {
        token = TokenEmission(_token);
    }
    
    function deal(address to, uint count) {
        token.emission(count);
        token.transfer(to, count);
    }
}