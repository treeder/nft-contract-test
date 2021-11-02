// @openzeppelin v4.0.0
pragma solidity ^0.8.4;

// import "./lib/oz/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";
import "./lib/oz/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "./lib/oz/contracts/utils/Counters.sol";

/**
Using a general purpose NFT contract here. The tokenURI includes the content hash in it.

Upgrades:

* Could optimize storage by using a baseURI and passing in the hash for each one rather than a full URL for each. 
    * Then getTokenURI would return baseURI + hash

 */

contract SMA is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Stategic Area", "SMA") {}

    function mint(address owner, string memory tokenURI)
        public
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(owner, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
