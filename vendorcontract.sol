pragma solidity ^0.4.0;
contract vendorContract {
    
    uint public vendorID;
    uint public ownerID;
    uint256 public contractValue;
    string public contractDescription;
    string public contractStatus;
    string public paymentStatus;
    address public contractOwner;
    address public contractVendor;
    string constant newcon = "New";
    string constant wipcon =  "WIP";
    string constant reqcon  = "Requested";
    string constant shipcon = "Shipped";
    string constant endcon = "Completed";
    string constant err = "Error";
    
    
    modifier isOwner()
    {
        require (msg.sender == contractOwner);
        _ ;
    }
   
    modifier isVendor()
   {
        require (msg.sender == contractVendor);
        _ ;
    }
   
    constructor  (uint _vid, string _desc) public payable {
        vendorID = _vid;
        contractStatus="New";
        contractOwner=msg.sender;
        contractDescription= _desc;
        
    }
    
      function acceptContract(uint256 _cvalue, uint _vidd) public {
	    contractStatus = err;
	    require(vendorID == _vidd);
	   
    	contractStatus=wipcon;
    	contractValue = _cvalue;
    	contractVendor = msg.sender;
	    }

    function requestPayment() isVendor {
	paymentStatus=reqcon;
	contractStatus=shipcon;
    }

    function paymentStatus() returns (string) {
	return paymentStatus;
    }
 
    
    function payVendor() payable isOwner {
        require (contractVendor.send(contractValue));
     /* if  (!contractVendor.send(contractValue))
		throw;*/ 
	contractStatus = endcon;
     

    }

   }
