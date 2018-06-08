debug('handler chat')

var from, message, data;
data = argument0

from = json_pick(data, 'from')
message = json_pick(data, 'message')

debug(from + ' says: ' + message)

