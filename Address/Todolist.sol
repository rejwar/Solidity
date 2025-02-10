// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList{
    struct Task{
        uint Id;
        string content;
        bool completed;
    }

    mapping (address => Task[]) private UserTasks;
    function CreateTask( string memory Content_) public {
        uint TaskId = UserTasks[msg.sender].length;
        UserTasks[msg.sender].push(Task(TaskId , Content_ , false));
    }
    function ToggleCompleted(uint Id_) public {

        require(Id_ < UserTasks[msg.sender].length, "Task does not exist");
        UserTasks [msg.sender][Id_].completed = !UserTasks[msg.sender] [Id_].completed;
    }

    function GetTask() public  view  returns( Task[] memory) {
        return  UserTasks[msg.sender];
    }

}
