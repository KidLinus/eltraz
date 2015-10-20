var _jsonFile = file_text_open_read(argument0);
var _jsonData = "";
while (!file_text_eof(_jsonFile))
{
    _jsonData += file_text_read_string(_jsonFile)
    file_text_readln(_jsonFile)
}
file_text_close(_jsonFile)

show_message(_jsonData)

return json_decode(_jsonData)
