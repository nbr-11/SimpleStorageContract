// SPDX-License-Identifier: MIT

pragma solidity 0.8.19; //stating our version

contract SimpleStorage {
    uint256 favoriteNumber = 88; //default value is 0 //default the view is internal

    // bytes32 and bytes are different

    struct People {
        uint favoriteNumber;
        string name;
    }

    People[] public peopleFavoriteNumber;

    mapping(string => uint256) public nameToFavorite;

    //in a mapping the default value for every key is zero

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function storePeople(uint256 _favoriteNumber, string memory _name) public {
        People memory person = People({
            favoriteNumber: _favoriteNumber,
            name: _name
        });
        peopleFavoriteNumber.push(person);
        nameToFavorite[_name] = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
