
// move
var moved = scr_try_move_dir(dir)
if moved
	patrol_sergment_dist++
else
	patrol_sergment_dist = patrol_segment_len

// start next patrol segment
if patrol_sergment_dist == patrol_segment_len {
	scr_patrol_next_segment()
	if !moved
		repeat 10 {
			if scr_try_move_dir(dir)
				break
			scr_patrol_next_segment()
		}
}