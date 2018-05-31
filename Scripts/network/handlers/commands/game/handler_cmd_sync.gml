// this is the handler for game_sync

var data, fromName, fromIdx, i, currentSyncId, currentObjectId, syncData;
data = argument0
fromIdx = json_pick(data, 'idx')
fromName = ns_get_other_player_name(fromIdx)

// sync all events
if (ds_map_exists(data, 'e')) {
    var eventMap, currentEvent, eventData;
    eventMap = json_pick(data, 'e')
    size = ds_map_size(eventMap)
    currentEvent = ds_map_find_first(eventMap)
    for (i = 0; i < size; i += 1) {
        eventData = json_pick(eventMap, currentEvent)
        _ns_recv_event(fromName, currentEvent, eventData)
        currentEvent = ds_map_find_next(eventMap, currentEvent)
    }
}

// sync all waits
if (ds_map_exists(data, 'w')) {
    var waitMap, currentWait, waitData;
    waitMap = json_pick(data, 'w')
    size = ds_map_size(waitMap)
    currentWait = ds_map_find_first(waitMap)
    for (i = 0; i < size; i += 1) {
        waitData = json_pick(waitMap, currentWait)
        _ns_recv_wait(fromName, currentWait, waitData)
        currentWait = ds_map_find_next(waitMap, currentWait)
    }
}

// sync all instances
size = ds_map_size(data)
currentSyncId = ds_map_find_first(data)
for (i = 0; i < size; i += 1) {
    if (!equals_any(currentSyncId, 4, 'e', 'w', 'idx', 'cmd')) {
        currentObjectId = 100000 + real(currentSyncId)
        syncData = json_pick(data, currentSyncId)
        _ns_recv_instance(fromName, currentObjectId, syncData)
        currentSyncId = ds_map_find_next(data, currentSyncId)
    }
}

