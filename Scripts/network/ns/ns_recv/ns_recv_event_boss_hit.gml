var fromName, data, _id;
fromName = argument0
data = argument1

_id = json_pick(data, 'id')

switch(_id.object_index) {
    case objBossSampleOnline:
        with (_id) {
            // update boss status
            event_user(1)
        }
        break
    default:
        break;
}
