draw_set_alpha(alpha)
alpha += 1/room_speed
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, alpha)
draw_text(x, y, "Restart")