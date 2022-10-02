// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ToDoList{
    struct Todo{
        string text;
        bool completed;

    }

        Todo[] public todos;  //to-do list
        
        function create(string calldata _text) external {
            todos.push(Todo({
                text: _text,
                completed: false
            }));
            
        }

        function get(uint _index) public view returns (string memory text, bool completed) { // when calling get list of todos
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }
        
        function updateText(uint _index, string calldata _text) external{ //update for todo list
            todos[_index].text = _text;

         
        }
     



        function toggleCompleted(uint _index) external { // if toggle completed
            todos[_index].completed = !todos[_index].completed;
        }
}