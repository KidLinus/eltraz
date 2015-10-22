var _socket = argument0
var _message = argument1
var _userId = buffer_read(_message, buffer_u16)

playerSet(_userId, 'x', buffer_read(_message, buffer_u16))
playerSet(_userId, 'y', buffer_read(_message, buffer_u16))
playerSet(_userId, 'dir', buffer_read(_message, buffer_s8))
playerSet(_userId, 'anim', buffer_read(_message, buffer_string))
