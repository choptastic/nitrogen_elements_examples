% Nitrogen Elements Examples
% Copyright (c) 2013 Roman Shestakov (romanshestakov@yahoo.co.uk)
% See MIT-LICENSE for licensing information.

-module(nitrogen_elements_examples_app).
-behaviour(application).
-export([
	 start/0,
	 start/2,
	 stop/1
	]).

-define(APPS, [nprocreg, sync, crypto, cowlib, ranch, cowboy, nitrogen_elements_examples]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

%% to start manually from console with start.sh
start() ->
    [begin R = application:start(A), io:format("~p: ~p~n", [A, R]) end || A <- ?APPS].

start(_StartType, _StartArgs) ->
    nitrogen_elements_examples_sup:start_link().

stop(_State) ->
    ok.
