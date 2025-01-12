// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MeetingRecords{
    struct Meeting{
        string Title;
        uint TimeStamp;
    }

    Meeting[] public Meetings;

    function AddMeeting(string memory Title_ , uint TimeStamp_) public {
        Meetings.push(Meeting(Title_,TimeStamp_));
    }
}
