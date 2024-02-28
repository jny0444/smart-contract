// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {store} from "./store.sol";

contract mainStore {
    store[] public listOfStore;

    function createStoreContract() public {
        store newStore = new store();
        listOfStore.push(newStore);
    }

    function mStore(uint256 _index, uint256 _number) public {
        listOfStore[_index].storeNumber(_number);
    }

    function mGet(uint256 _index) public view returns(uint256) {
        return listOfStore[_index].getNumber();
    }
}