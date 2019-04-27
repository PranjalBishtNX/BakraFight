/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0A1FB48B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "UI_Icons"
/// @DnDSaveInfo : "sprite" "925d2d64-600a-44f2-83fb-64bc019834f4"
draw_sprite(UI_Icons, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0EEFC112
/// @DnDArgument : "x" "dist"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "UI_Icons"
/// @DnDArgument : "image" "1"
/// @DnDSaveInfo : "sprite" "925d2d64-600a-44f2-83fb-64bc019834f4"
draw_sprite(UI_Icons, 1, x + dist, y + 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6273B29B
/// @DnDArgument : "x" "dist*2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "UI_Icons"
/// @DnDArgument : "image" "2"
/// @DnDSaveInfo : "sprite" "925d2d64-600a-44f2-83fb-64bc019834f4"
draw_sprite(UI_Icons, 2, x + dist*2, y + 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3F612978
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "128"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Attack""
draw_text(x + 0, y + 128, string("Attack") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6B8F2C75
/// @DnDArgument : "x" "dist"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "128"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Speed""
draw_text(x + dist, y + 128, string("Speed") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 57B905C1
/// @DnDArgument : "x" "dist*2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "128"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Jump""
draw_text(x + dist*2, y + 128, string("Jump") + "");