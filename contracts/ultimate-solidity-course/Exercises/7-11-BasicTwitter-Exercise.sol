// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Create a Twitter Contract 
// 2️⃣ Create a mapping between user and tweet 
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet 
// 5️⃣ Add array of tweets 

contract Twitter {
    mapping(address => string[]) public myTweets;

    function createTweets(string calldata _tweet) public {
        myTweets[msg.sender].push(_tweet);
    }

    function getAllTweets() view public returns (string[] memory) {
        return myTweets[msg.sender];
    }

    function getTweet(uint _i) view public returns (string memory) {
        return myTweets[msg.sender][_i];
    }
}