-module(linkedlist).

%% Linked List testing in erlang

-export([reverse_list/1, reverse_list/2]).

-record(list_node, {val = 0 :: integer(),next = null :: 'null' | #list_node{}}).

-spec reverse_list(Head :: #list_node{} | null) -> #list_node{} | null.

reverse_list(null)                             -> null;
reverse_list(#list_node{val=V, next=Next})     -> reverse_list(Next, #list_node{val=V, next=null}).

reverse_list(null, Acc)                        -> Acc;
reverse_list(#list_node{val=V,next=Next}, Acc) -> reverse_list(Next, #list_node{val=V, next=Acc}).