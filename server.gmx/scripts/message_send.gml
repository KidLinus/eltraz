var _buff = argument0
var _sock = argument1
if _buff == global.posBuff _sock = global.posServer

network_send_packet(_sock, _buff, buffer_tell(_buff))

