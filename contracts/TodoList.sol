// Smart Contract for Todo-List 

// 1. Version of solidity Programming language that we want to use
pragma solidity ^0.5.0;

// 2. Declare the smart contract 
contract TodoList {
  uint public taskCount = 0; //State 

  struct Task {
    uint id;
    string content;
    string timestamp;
    bool  completed;
  }

  // Storage 
  mapping(uint => Task) public tasks; 

  // Event 
  event TaskCreated(
    uint id,
    string content,
    string timestamp,
    bool completed
  );

  event TaskCompleted(
    uint id,
    bool completed
  );

  // Constructor fn to initilize the task
  constructor() public {
    createTask("Complete BCT Notes website new features", '26/Aug/2020');
    // createTask("Complete pending work");
  }

  // Getter - fetch 
  // Modifiers - restrict 
  // Cost 

  function createTask(string memory _content, string memory _timestamp ) public  {
    taskCount ++;
    tasks[taskCount] = Task(taskCount, _content, _timestamp, false);

    emit TaskCreated(taskCount, _content, _timestamp ,false);
  }

  function toggleCompleted(uint _id) public {
    Task memory _task = tasks[_id];
    _task.completed = !_task.completed;
    tasks[_id] = _task;

    emit TaskCompleted(_id, _task.completed);
  }
} 