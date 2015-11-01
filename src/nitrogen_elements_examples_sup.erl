% Nitrogen Elements Examples
% Copyright (c) 2013 Roman Shestakov (romanshestakov@yahoo.co.uk)
% See MIT-LICENSE for licensing information.

-module(nitrogen_elements_examples_sup).
-behaviour(supervisor).
-export([
	 start_link/0,
	 init/1
	]).

-include_lib ("nitrogen_core/include/wf.hrl").
-define(APP, nitrogen_elements_examples).

%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init([]) ->
	application:start(simple_bridge),
    {ok, {{one_for_one, 5, 10}, []}}.
