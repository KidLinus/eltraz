with Level {
    if name == argument0 {
        var _props = ds_map_find_value(levelData(name), "props"), _i = ds_map_find_first(_props)

        repeat(ds_map_size(_props)) {
            var _obj = instance_create(0, 0, LevelProp);
            _obj.name = _i
            _obj.level = name
            with _obj {
                levelPropRender()
            }
            _i = ds_map_find_next(_props, _i)
        }
    }
}
