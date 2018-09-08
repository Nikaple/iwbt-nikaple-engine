// ns_get_all_data(keys, sortBy, order, from, to)
// get all user data from server
// keys:   all keys to retrieve, split by '|', such as: 'data1|data2|data3'
// sortBy: the pivot to sort by
// order:  data order, 'asc' or 'desc'
// from:   start index
// to:     end index

var options, keys, i, cmd, list;
keys = argument0
sortBy = httprequest_urlencode(argument1)
order = argument2
from = string(argument3)
to = string(argument4)
options = ''

if (is_zero(keys) && !global.enable_production_mode) {
    i18n_show_error(
        '在获取所有用户的数据时必须指定键名。',
        'You must specify the keys for the data when getting all user data.'
    )
}

error_arg_exceed('ns_get_all_data', argument5)

if (!is_zero(sortBy)) {
    options += 'sortBy=' + sortBy + '&'
}
if (!is_zero(order)) {
    options += 'order=' + order + '&'
}
if (!is_zero(from)) {
    options += 'from=' + from + '&'
}
if (!is_zero(to)) {
    options += 'to=' + to + '&'
}

cmd = cmd_init(
    'get_all_data', 3,
    'id', id - 100000,
    'options', options,
    'keys', httprequest_urlencode(keys)
)


ns_send(cmd)
