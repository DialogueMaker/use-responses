--!strict

local React = require(script.Parent.roblox_packages.react);
local DialogueMakerTypes = require(script.Parent.roblox_packages.dialogue_maker_types);

type Dialogue = DialogueMakerTypes.Dialogue;

local function useResponses(dialogue: Dialogue): {Dialogue}

  return React.useMemo(function()

    local responses = {};
    for _, possibleResponse in dialogue:getChildren() do

      if possibleResponse.type == "Response" and possibleResponse:verifyCondition() then

        table.insert(responses, possibleResponse);

      end

    end

    return responses;

  end, {dialogue});

end;

return useResponses;