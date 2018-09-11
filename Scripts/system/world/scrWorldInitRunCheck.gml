// Check the global variables...

if (!global.enable_internationalization) {
  global.language = LANG_EN
  global.enable_builtin_drawing = true
}

if (global.enable_encryption) {
    if (global.key == "huYJCGjN3rwG%du!aZc0Phw9P&9WJBYd1*CjXmXdY@tWYW83Tuv%7FHd6Be2GBTS") {
        i18n_show_error(
            '你的加密密钥与引擎完全一致！这会带来潜在的风险，请在 `setGlobals` 中修改 `global.key` 的值。',
            "Your encryption key is the same as engine's! Please change it in `setGlobals`."
        )
    }
    if (string_length(global.key) < 40) {
        i18n_show_error(
            '为了存档安全，引擎的加密密钥必须要大于 40 个字符。',
            'The encryption key should be 40 characters at least to increase safety.'
        )
    }
}

if (global.game_mode = MODE_SINGLE_PLAYER) {
  global._online_mode = false
  global.enable_chat = false
} else {
  global._online_mode = true
}

// only check on debug mode
if (global.enable_production_mode || global.skip_init_check) exit

if (sprite_exists(0)) {
  error_ind_zero('sprite', sprite_get_name(0))
}
if (sound_exists(0)) {
  error_ind_zero('sound', sound_get_name(0))
}
if (path_exists(0)) {
  error_ind_zero('path', path_get_name(0))
}
if (object_exists(0)) {
  error_ind_zero('object', object_get_name(0))
}
if (room_exists(0)) {
  error_ind_zero('room', room_get_name(0))
}

// check for music init status
var err, size;
size = ds_list_size(global.__music_not_loaded)
if (size > 0) {
  err = ''
  for (i = 0; i < size; i += 1) {
      err += '`' + filename_name(ds_list_find_value(global.__music_not_loaded, i)) + '`'
      if (i != size - 1) {
          err += ', '
      }
  }
  i18n_show_error(
      '音乐 ' + err + ' 没有被正确加载，请手动初始化后再使用',
      'Music ' + err + ' are not loaded. Please use them after initialization.'
  )
}

// check for resource name conflicts
global.__resources_conflict = ds_list_create()
global.__resources_invalid = ds_list_create()
global.__resources_loaded = ds_map_create()

resource_map_sprites(global.__resources_loaded)
resource_map_sounds(global.__resources_loaded)
resource_map_backgrounds(global.__resources_loaded)
resource_map_paths(global.__resources_loaded)
resource_map_scripts(global.__resources_loaded)
resource_map_fonts(global.__resources_loaded)
resource_map_timelines(global.__resources_loaded)
resource_map_objects(global.__resources_loaded)
resource_map_rooms(global.__resources_loaded)

size = ds_list_size(global.__resources_conflict)
if (size > 0) {
  err = ''
  for (i = 0; i < size; i += 1) {
      err += '`' + ds_list_find_value(global.__resources_conflict, i) + '`'
      if (i != size - 1) {
          err += ', '
      }
  }
  i18n_show_error(
      '资源 ' + err + ' 包含有重名资源，这有可能带来潜在问题。请运行脚本 -> 检查资源名称以确认。',
      'Resource ' + err + ' has(have) name conflict, this could cause potential problems. Please check these resources.'
  )
}

size = ds_list_size(global.__resources_invalid)
if (size > 0) {
  err = ''
  for (i = 0; i < size; i += 1) {
      err += '`' + ds_list_find_value(global.__resources_invalid, i) + '`'
      if (i != size - 1) {
          err += ', '
      }
  }
  i18n_show_error(
      '资源 ' + err + ' 的名称不合法（只能以数字字母下划线构成，不能以数字开头），这有可能带来潜在问题。请修改后再试。',
      'Resource ' + err + ' has(have) invalid name, this could cause potential problems. Please check these resources.'
  )
}

