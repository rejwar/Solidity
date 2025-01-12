// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SocialMedia {

    struct Post {
        address Author;
        string Content;
        uint256 TimeStamp;
        address[] Likes;
    }

    Post[] public Posts;

    // নতুন পোস্ট তৈরি করার ফাংশন
    function CreatePost(string memory Content_) public {
        Posts.push(Post(msg.sender, Content_, block.timestamp, new address ));}

    // পোস্টে লাইক যোগ করার ফাংশন
    function LikePost(uint256 PostIndex) public {
        require(PostIndex < Posts.length, "Invalid Post Index");
        
        // ডুপ্লিকেট লাইক চেক
        for (uint256 i = 0; i < Posts[PostIndex].Likes.length; i++) {
            require(Posts[PostIndex].Likes[i] != msg.sender, "You already liked this post");
        }

        // লাইক যোগ করা
        Posts[PostIndex].Likes.push(msg.sender);
    }

    // পোস্টের লাইক সংখ্যা গণনা
    function GetLikeCount(uint256 PostIndex) public view returns (uint256) {
        require(PostIndex < Posts.length, "Invalid Post Index");
        return Posts[PostIndex].Likes.length;
    }
}
