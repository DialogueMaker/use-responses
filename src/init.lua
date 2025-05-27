--!strict

local IDialogue = require(script.Parent["dialogue-types"]);

type Dialogue = IDialogue.Dialogue;

local function useResponses(dialogue: Dialogue): {Dialogue}

  local responses = {};
  for _, possibleResponse in dialogue:getChildren() do

    if possibleResponse.type == "Response" and possibleResponse:verifyCondition() then

      table.insert(responses, possibleResponse);

    end

  end

  return responses;

end;

return useResponses;