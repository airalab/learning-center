import '../lib/AddressMap.sol';
import '../common/Owned.sol';
import '../token/TokenEmission.sol';

contract EmissionRegulator is Owned {
    
    TokenEmission public token;
	/* map items emission access */
	AddressMap.Data emissionAccess;
    /* Using libraries */
    using AddressList for AddressList.Data;
    using AddressMap for AddressMap.Data;
	
    function EmissionRegulator(address _token) {
        token = TokenEmission(_token);
    }
	
	/**
     * @dev Delegate token
     * @param _owner is a new owner address token
     */
    function delegateToken(address _owner) onlyOwner {
        token.delegate(_owner);
    }
	
	/**
     * @dev Change token
     * @param _token is a token address
     */
    function changeToken(address _token) onlyOwner {
        token = TokenEmission(_token);
    }
	
	/**
     * @dev Add new item for access of emission
     * @param _name is a item name
     * @param _item is a item address
     */
    function setItemAccess(string _name, address _item) onlyOwner {
        emissionAccess.set(_name, _item);
    }
	
	/**
     * @dev Remove item access
     * @param _name is a item name
     */
    function removeItemAccess(string _name) onlyOwner {
        emissionAccess.remove(_name);
    }
	
	/**
     * @dev Exist item access
     * @param _item is a item address
     * @return `true` wnen exist access
     */
	function existItemAccess(address _item) constant returns (bool) {
		return emissionAccess.items.contains(_item);
	}
	
	/**
     * @dev Get item address item by name
     * @param _name is a item name
     * @return item address
     */
	function getItemAccess(string _name) constant returns (address) {
		return emissionAccess.get(_name);
	}
	
	/**
     * @dev Get item name by address
     * @param _item is a item address
     * @return item name
     */
    function getItemNameAccess(address _item) constant returns (string) {
		return emissionAccess.keyOf[_item];
	}
	
	/**
     * @dev Get first item access
     * @return first address
     */
    function firstItemAccess() constant returns (address) {
		return emissionAccess.items.head;
	}

    /**
     * @dev Get next item address
     * @param _item is a item address
     * @return next address
     */
    function nextItemAccess(address _item) constant returns (address) {
		return emissionAccess.items.next(_item);
	}

    /**
     * @dev Request emission and transfer token
     * @param to is recipient address 
     * @param total is total tokens
     */
    function deal(address to, uint total) {
		if (!existItemAccess(msg.sender)) throw;
        token.emission(total);
        token.transfer(to, total);
    }
}