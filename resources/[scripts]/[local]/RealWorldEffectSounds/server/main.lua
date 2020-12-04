------
-- Interaction Sounds by Scott
-- Version: v0.0.1
-- Path: server/main.lua
--
-- Allows sounds to be played on single clients, all clients, or all clients within
-- a specific range from the entity to which the sound has been created. Triggers
-- client events only. Used to trigger sounds on other clients from the client or
-- server without having to pass directly to another client.
------

------
-- RegisterServerEvent RealWorldEffectSound:PlayOnOne
-- Triggers -> ClientEvent RealWorldEffectSound:PlayOnOne
--
-- @param clientNetId  - The network id of the client that the sound should be played on.
-- @param soundFile    - The name of the soundfile within the client/html/sounds/ folder.
--                     - Can also specify a folder/sound file.
-- @param soundVolume  - The volume at which the soundFile should be played. Nil or don't
--                     - provide it for the default of standardVolumeOutput. Should be between
--                     - 0.1 to 1.0.
--                     - Can also specify a folder/sound file.
--
-- Starts playing a sound locally on a single client.
------
RegisterServerEvent("RealWorldEffectSound:PlayOnOne")
AddEventHandler(
    "RealWorldEffectSound:PlayOnOne",
    function(clientNetId, soundFile, soundVolume)
        TriggerClientEvent("RealWorldEffectSound:PlayOnOne", clientNetId, soundFile, soundVolume)
    end
)

------
-- RegisterServerEvent RealWorldEffectSound:PlayOnSource
-- Triggers -> ClientEvent RealWorldEffectSound:PlayOnSource
--
-- @param soundFile    - The name of the soundfile within the client/html/sounds/ folder.
--                     - Can also specify a folder/sound file.
-- @param soundVolume  - The volume at which the soundFile should be played. Nil or don't
--                     - provide it for the default of standardVolumeOutput. Should be between
--                     - 0.1 to 1.0.
--                     - Can also specify a folder/sound file.
--
-- Starts playing a sound locally on a single client, which is the source of the event.
------
RegisterServerEvent("RealWorldEffectSound:PlayOnSource")
AddEventHandler(
    "RealWorldEffectSound:PlayOnSource",
    function(soundFile, soundVolume)
        TriggerClientEvent("RealWorldEffectSound:PlayOnOne", source, soundFile, soundVolume)
    end
)

------
-- RegisterServerEvent RealWorldEffectSound:PlayOnAll
-- Triggers -> ClientEvent RealWorldEffectSound:PlayOnAll
--
-- @param soundFile     - The name of the soundfile within the client/html/sounds/ folder.
--                      - Can also specify a folder/sound file.
-- @param soundVolume   - The volume at which the soundFile should be played. Nil or don't
--                      - provide it for the default of standardVolumeOutput. Should be between
--                      - 0.1 to 1.0.
--
-- Starts playing a sound on all clients who are online in the server.
------
RegisterServerEvent("RealWorldEffectSound:PlayOnAll")
AddEventHandler(
    "RealWorldEffectSound:PlayOnAll",
    function(soundFile, soundVolume)
        TriggerClientEvent("RealWorldEffectSound:PlayOnAll", -1, soundFile, soundVolume)
    end
)

------
-- RegisterServerEvent RealWorldEffectSound:PlayWithinDistance
-- Triggers -> ClientEvent RealWorldEffectSound:PlayWithinDistance
--
-- @param playOnEntity    - The entity network id (will be converted from net id to entity on client)
--                        - of the entity for which the max distance is to be drawn from.
-- @param maxDistance     - The maximum float distance (client uses Vdist) to allow the player to
--                        - hear the soundFile being played.
-- @param soundFile       - The name of the soundfile within the client/html/sounds/ folder.
--                        - Can also specify a folder/sound file.
-- @param soundVolume     - The volume at which the soundFile should be played. Nil or don't
--                        - provide it for the default of standardVolumeOutput. Should be between
--                        - 0.1 to 1.0.
--
-- Starts playing a sound on a client if the client is within the specificed maxDistance from the playOnEntity.
-- @TODO Change sound volume based on the distance the player is away from the playOnEntity.
------
RegisterServerEvent("RealWorldEffectSound:PlayWithinDistance")
AddEventHandler(
    "RealWorldEffectSound:PlayWithinDistance",
    function(maxDistance, soundFile, soundVolume)
        TriggerClientEvent("RealWorldEffectSound:PlayWithinDistance", -1, source, maxDistance, soundFile, soundVolume)
    end
)
