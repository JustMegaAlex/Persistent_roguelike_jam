patrol_point_to++
if patrol_point_to == ds_list_size(patrol_xpoints) {
	patrol_point_to = 1
}
patrol_sergment_dist = 0
var p = patrol_point_to
var dist_x = patrol_xpoints[| p] - patrol_xpoints[| p-1]
var dist_y = patrol_ypoints[| p] - patrol_ypoints[| p-1]
patrol_segment_len = abs(dist_x) + abs(dist_y)
dir = point_direction(0, 0, dist_x, dist_y)/90