pragma solidity ^0.5.0;

contract Marketplace {
  string public name;
  uint256 public productCount = 0;
  mapping(uint256 => Product) public products;

  struct Product {
    uint256 id;
    string name;
    uint256 price;
    address payable owner;
    bool purchased;
  }

  event ProductCreated(
    uint256 id,
    string name,
    uint256 price,
    address payable owner,
    bool purchased
  );

  constructor() public {
    name = 'SPeshov MarketPlace';
  }

  function createProduct(string memory _name, uint256 _price) public {
    // Verify parametars, crate product and emit an event

    // Require a valid name
    require(bytes(_name).length > 0);
    // Require a valid price
    require(_price > 0);
    // Increment product count
    productCount++;
    // Create the product
    products[productCount] = Product(
      productCount,
      _name,
      _price,
      msg.sender,
      false
    );
    // Trigger an event
    emit ProductCreated(productCount, _name, _price, msg.sender, false);
  }
}
