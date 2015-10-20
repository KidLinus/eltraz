with Level {
    if name == argument0 {
        var _props = ds_map_find_value(data, "props"), _i = ds_map_find_first(_props)

        repeat(ds_map_size(_props)) {
            var _obj = instance_create(0, 0, LevelProp);
            _obj.data = ds_map_find_value(_props, _i)
            _obj.name = _i
            with _obj {
                levelPropRender(name)
            }
            _i = ds_map_find_next(_props, _i)
        }
    }
}
