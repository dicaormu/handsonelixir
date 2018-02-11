defmodule Stack do
    use GenServer

    @moduledoc """
 	 stack module. see GenServer definition at https://elixir-lang.org/getting-started/mix-otp/genserver.html
 	 See how we use the GenServer module. It is like a stronger import.
 	 As it is a genServer, we need to implement the client API and the server callbacks. The run in separated processes
 	 but they can be implemented in the same file.
 	 """
    
    
    @doc """
   	## function to start listening to messages 
   	see the function in the echo example for more information 
   	"""

    ## PUBLIC - Client API
    def start_link(initial) do
      GenServer.start_link(__MODULE__, initial)
    end


    @doc """
   	## function to push messages to the stack 
   	see Genserver cast and call functions. For this function we dont need a response back from the server.
   	"""
    def push(pid, element) do
      GenServer.cast(pid, {:push, element})
    end
    

    @doc """
   	## function to pop messages from the stack 
   	see Genserver cast and call functions. For this function we need a response back from the server.
   	"""
    def pop(pid) do
      GenServer.call(pid, :pop)
    end

    ## Server CALLBACKS

    @doc """
   	## function to init the state of the server 
   	see Genserver It is not necessary, just to illustrate the case
   	"""
    def init(_) do
    {:ok, []}
    end

	@doc """
	## handle_call when state is empty (state is a list)
	The return value for our handle_call means reply with :error and :empty (it should be something like {:error,:empty}) and the state is still empty
	"""

    def handle_call(:pop, _from, []) do
      {:reply, {:error, :empty}, []}
    end

    @doc """
	The return value for our handle_call means reply with :ok and the head of the state (is a list, it should be something like {:ok,head}) and update the state, using only the tail
	"""
    def handle_call(:pop, _from, [h | t]) do
      {:reply, {:ok, h}, t}
    end

	@doc """
	The return value for our handle_cast means noreply  and update the state by adding the new element 'el' to the front of the list.
	"""
    def handle_cast({:push, el}, state) do
      {:noreply, [el | state]}
    end
end