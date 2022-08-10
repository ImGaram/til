import TodoListitems from "./TodoListitem"
import './TodoList.scss'

const TodoList=({todos, onRemove, onToggle})=> {
    return(
        <div className="TodoList">
            {todos.map(todo =>(
                <TodoListitems todo={todo} key={todo.id} onRemove={onRemove} onToggle={onToggle}/>
            ))}
        </div>
    );
};

export default TodoList;