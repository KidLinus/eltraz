with Level {
    if name == argument0 {
        var _props = ds_map_find_value(levelData(name), "props"), _i = ds_map_find_first(_props);
        background_index[0] = asset_get_index(mapGetDef(levelData(name), "background", "bgClouds"))
        background_xscale[0] = view_hview / background_get_height(background_index)
        background_yscale[0] = background_xscale[0]
        global.bgm = asset_get_index(mapGetDef(levelData(name), "music", "bgmForest"))
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

