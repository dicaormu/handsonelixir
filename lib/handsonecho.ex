defmodule Handsonecho do

   @doc """
   ## function to start listening to messages to echo
   https://elixir-lang.org/getting-started/processes.html
   We need to spawn our process, but we need to do it in a way that if 
   an error happens, the error gets propagged to my system.
   (see difference between spawn and spawn_link).
   The current module can be referenced using the spetial form __MODULE__
   or __ENV__/0
   """
    def start_link do
      # TODO get the pid of the spawned process

      {:ok, pid}
	end

   @doc """
   ## send a message to a process with a pid
   you can find the pid of the current process using self().
   Kernell is the entry point of an elixir pocess. It has a function send(dest, message)
   """
    def send(pid, msg) do
      Kernel.send(pid, {msg, self()})
	end

   @doc """
   ## Listen to a message
   use the method receive of Kernell, 
   Listen to a message: {message, pid}, when pid is a valid pid (see is_pid function), 
   send the message again to the caller
   """
	def loop do
    	receive do
          # TODO use pattern matching for the receiver, when the caller is a pid, call Kernell.send
          	
            Kernel.send(caller, msg)
          	loop()
		end 
	end
end