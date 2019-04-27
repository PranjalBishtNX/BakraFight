/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1335F3DF
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "sprite" "UI_HPBarHolder"
/// @DnDSaveInfo : "sprite" "6101efe2-3ddd-4848-9ec6-840e9a0ee835"
draw_sprite(UI_HPBarHolder, 0, 32, 32);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 76F9A522
/// @DnDArgument : "x" "room_width-32"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "xscale" "-1"
/// @DnDArgument : "sprite" "UI_HPBarHolder"
/// @DnDSaveInfo : "sprite" "6101efe2-3ddd-4848-9ec6-840e9a0ee835"
draw_sprite_ext(UI_HPBarHolder, 0, room_width-32, 32, -1, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 517E0B38
/// @DnDArgument : "x" "64"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "xscale" "6*Health1/100"
/// @DnDArgument : "sprite" "UI_HPBarExtend"
/// @DnDSaveInfo : "sprite" "6abbb6a2-ab49-47aa-a867-39d5cfa70d51"
draw_sprite_ext(UI_HPBarExtend, 0, 64, 32, 6*Health1/100, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1A005721
/// @DnDArgument : "x" "room_width-64"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "xscale" "-6*Health2/100"
/// @DnDArgument : "sprite" "UI_HPBarExtend"
/// @DnDSaveInfo : "sprite" "6abbb6a2-ab49-47aa-a867-39d5cfa70d51"
draw_sprite_ext(UI_HPBarExtend, 0, room_width-64, 32, -6*Health2/100, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);