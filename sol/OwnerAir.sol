import '../token/TokenEmission.sol';

contract OwnerAir {
    
    TokenEmission public token;
    
    function OwnerAir(address _token) {
        token = TokenEmission(_token);
    }
    
    function deal(address to, uint count) {
        token.emission(count);
        token.transfer(to, count);
    }
}