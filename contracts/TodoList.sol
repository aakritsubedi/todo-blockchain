// Smart Contract for Todo-List 

// 1. Version of solidity Programming language that we want to use
pragma solidity ^0.5.0;

// 2. Declare the smart contract 
contract TodoList {
  uint public taskCount = 0; //State 

  struct Task {
    uint id;
    string content;
    bool  completed;
  }

  // Storage 
  mapping(uint => Task) public tasks; 

  // Event 
  event TaskCreated(
    uint id,
    string content,
    bool completed
  );

  // Constructor fn to initilize the task
  constructor() public {
    createTask("Complete BCT Notes website new features");
    // createTask("Complete pending work");
  }

  function createTask(string memory _content) public {
    taskCount ++;
    tasks[taskCount] = Task(taskCount, _content, false);

    emit TaskCreated(taskCount, _content, false);
  }

} 