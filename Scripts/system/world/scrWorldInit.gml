// Initializing
setGlobals()
if (!directory_exists(global.saving_directory)) {
    directory_create(global.saving_directory)
}
global.savenum = 1
global.difficulty = 3
global.room_caption_def = ''
global.death = 0
global.timestep = 0

difText[0] = 'Medium'
difText[1] = 'Hard'
difText[2] = 'VeryHard'
difText[3] = 'Impossible'

scrWorldInitPlugins()
scrWorldInitMessageBox()
scrWorldInitRunCheck()
