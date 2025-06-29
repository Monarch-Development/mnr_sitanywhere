---@diagnostic disable: duplicate-set-field, lowercase-global

if GetResourceState("qb-target") ~= "started" then return end

local qb_target = exports["qb-target"]

target = {}

function target.AddModels(models)
    qb_target:AddTargetModel(models, {
        options = {
            {
                type = "client",
                event = "mnr_sitanywhere:client:Sit",
                icon = "fas fa-chair",
                label = locale("target.sit"),
                canInteract = function(entity)
                    return DoesEntityExist(entity)
                end
            }
        },
        distance = 3.0,
    })
end