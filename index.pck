GDPC                p                                                                      4   T   res://.godot/exported/133200997/export-14976b7b83974953510ead8308bdec11-dummy_2.scn �!      �      ��c�=K������ܧ    P   res://.godot/exported/133200997/export-5d2f649bfda0e984c5f95c948cc9f360-ui.scn  ��      �      �ϳ
�=��!W�V    X   res://.godot/exported/133200997/export-5da8bd7fd7b6cf65f46607d9e1f80f99-main_screen.scn �G      �      e=�M�Q�-��U��    T   res://.godot/exported/133200997/export-6c8f44555ff5ed9b3f8ae1fe04f2f261-polar_2.scn �l      '      �nJ��%ܹւ��d5    T   res://.godot/exported/133200997/export-6feed68c598da872f5486e758512a388-polar.scn   �i      �      ����(g8�p���    `   res://.godot/exported/133200997/export-a3fd5e8b7e6d4c2e105f33347b89fc36-test_drag_and_drop.scn  P�      g      /=QM���6�&���g    X   res://.godot/exported/133200997/export-bee2b2e73249b6be1fd6834f1b985f00-waterfall.scn   ��      �      �����YZ�Dvm~    T   res://.godot/exported/133200997/export-dc531c85998866d0f35444c26335f902-dummy_1.scn @      �      =����h�A����    P   res://.godot/exported/133200997/export-e6d97c4feb736ad10c0d43b3f8310ea4-map.scn �K      �
      59 8A��MzYs�I    T   res://.godot/exported/133200997/export-ee4fabfb2d2770d2df169089e876f427-buttons.scn �q      �      �.�3e��&�g�H�    ,   res://.godot/global_script_class_cache.cfg  ��             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�6      �      �̛�*$q�*�́     P   res://.godot/imported/playerShip3_blue.png-2433575acd9066483b746cede84ec9da.ctex�V      �      E*ZM�����٘H��<k    H   res://.godot/imported/ufoBlue.png-37570a1928c2bf25b391459047a50b0f.ctex ��      �	      )3j�_�<p*Ы�o�    H   res://.godot/imported/ufoGreen.png-568b588f7fd0fa19ed1760b2807512b2.ctex`�      �	      ���J�#3��
����    H   res://.godot/imported/ufoRed.png-c17e4bab31a834503fcaebc04b80379a.ctex   �      �	      ��A$�$]K�|*�����       res://.godot/uid_cache.bin  `�      �      "�d�9�jIa18�ڃ:       res://AcCenter.gd           �      "�e��=���������       res://EmitPow1.gd   `}      �      ����{�\gy�       res://Polar2.gd c      �      ��6ɷi�W�-����       res://aircraft.gd   �            �Ӊ���._"r2*;J6       res://buttons.gd0      �      ��m�@P�*w��8.�       res://buttons.tscn.remap��      d       ���8�����5�] r       res://dummy1Color.gd�      �      �	��wx�z0���J��       res://dummyPanel.gd �      x      y�S��޲�Bh
cƺ       res://dummy_1.tscn.remap@�      d       �T��W�N�x�5       res://dummy_2.gd�      �      ���nC��<���3M�       res://dummy_2.tscn.remap��      d       �^�vp��VQ�f۱�       res://emit1.gd  �1      W      �H��M��΢�#���'       res://fps.gd �      �       #`��f>�W!��	`�       res://ground.gd  4      �      �(�<��\dA�lyi       res://icon.svg  ��      �      C��=U���^Qu��U3       res://icon.svg.import   �C      �       GUJ��8M�I�P�Č
       res://main_screen.gd�D      Y      _�7�,"À����       res://main_screen.tscn.remap �      h       x`((T��{���x       res://map.gd�K              ��ُ ��	���B~       res://map.tscn.remap��      `       �]� ��!�vQ�H�:n    $   res://playerShip3_blue.png.import   @b      �       N��/�vц@��"�       res://pointer.gd��      N      ��T�J�AP�D#��       res://polar.gd   i      �       ��X�[�V����R88�       res://polar.tscn.remap  ��      b       ��`��ߘM��#�k	       res://polar_2.tscn.remap`�      d       p�#�*��C�E����       res://project.binary0�      �      �$��| ͵� �nߠX�    $   res://test_drag_and_drop.tscn.remap ��      o       ud��V�~D���*|�       res://track.gd  ��      �      ���'$֗��b"Y�       res://ufoBlue.png.import��      �       ���"�;� �n�����       res://ufoGreen.png.import   0�      �       ��=i�$�D�_# t�       res://ufoRed.png.import ��      �       H���۱��G��Q��V       res://ui.tscn.remap  �      _       �B��H��p����MW       res://updateEmits.gdP�      �      �MKj����v�K ߿       res://waterfall.gd  0�      �      r�x�#sB[X ��       res://waterfall.tscn.remap  @�      f       o����ߑ{A��oW�    h�xextends Control

var speed = 0.05

# Called when the node enters the scene tree for the first time.
func _ready():
	var center = get_rect().size/2.0
	#position = center
	var min_dim = min(position.x,position.y)
	var radius = min_dim/4.0
	$aircraft.position = Vector2(radius,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation += speed * delta
	var center = get_rect().size/2.0
	#position = center
	var min_dim = min(position.x,position.y)
	
	var radius = min_dim/2.0
	$aircraft.position = Vector2(radius,0)
	var pointer = get_node("aircraft/pointer")
	pointer.scale.y = min_dim * 2
	pointer.rotation = global.pointer_angle + PI
	
	global.aircraft_loc = Vector2(radius*cos(rotation)+position.x,radius*sin(rotation)+position.y)
	#print("center:",position," radius:",radius, "ac loc: ",global.aircraft_loc)
	global.aircraft_rot = rotation + PI
	#print("AC:",rotation," Center:",position," xy:",global.aircraft_loc)
	
#	print(rad_to_deg(global.pointer_angle))
#	var end_x = min_dim * cos(global.pointer_angle)
#	var end_y = min_dim * sin(global.pointer_angle)
#	draw_line(Vector2(0,0),Vector2(end_x,end_y),Color(1,1,0,1),-1,false)
t��b,|!��xextends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#set_rotation_degrees(global.aircraft_rot)
	pass
�4extends Control

var end1_x = 0
var end1_y = 0
var end2_x = 0
var end2_y = 0
var end3_x = 0
var end3_y = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#var min_dim = min(get_viewport_rect().size.x,get_viewport_rect().size.y)
	var panel_size = get_rect().size
	var min_dim = min(panel_size.x,panel_size.y)
	var max_dim = max(panel_size.x,panel_size.y)
	var max_power = min_dim/2.0
	var length1 = max_power * (1.0 - (global.emit_dist[0]/max_dim)) * global.emit_pow[0]/100.0 + randfn(-2.0,2.0)
	var length2 = max_power * (1.0 - (global.emit_dist[1]/max_dim)) * global.emit_pow[1]/100.0+ randfn(-2.0,2.0)
	var length3 = max_power * (1.0 - (global.emit_dist[2]/max_dim)) * global.emit_pow[2]/100.0+ randfn(-2.0,2.0)
	#print("Len: ",length1)
	#var angle = randf_range(0.0,360.0)
	var angle1 = (global.aircraft_loc.direction_to(global.emit_locs[0])) 
	var angle2 = (global.aircraft_loc.direction_to(global.emit_locs[1])) 
	var angle3 = (global.aircraft_loc.direction_to(global.emit_locs[2])) 
	
	#print("Angle: ",rad_to_deg(angle1), "ac: ",global.aircraft_loc, " emit1: ",global.emit_locs[1])
	#print("Rot: ",rad_to_deg(global.aircraft_rot))
	var fuzz1 = deg_to_rad(randfn(0.0,3.0)) - global.aircraft_rot
	var fuzz2 = deg_to_rad(randfn(0.0,2.0)) - global.aircraft_rot
	var fuzz3 = deg_to_rad(randfn(0.0,1.0)) - global.aircraft_rot
	
	var pdw_idx = global.pdw_idx
	global.emit_pdw[pdw_idx][0] = Vector3(length1, angle1.angle()+fuzz1,  0)
	global.emit_pdw[pdw_idx][1] = Vector3(length2, angle2.angle()+fuzz2,  0)
	global.emit_pdw[pdw_idx][2] = Vector3(length3, angle3.angle()+fuzz3,  0)
	
	end1_x = length1 * cos(angle1.angle()+fuzz1)+get_rect().size.x/2.0
	end1_y = length1 * sin(angle1.angle()+fuzz1)+get_rect().size.y/2.0
	end2_x = length2 * cos(angle2.angle()+fuzz2)+get_rect().size.x/2.0
	end2_y = length2 * sin(angle2.angle()+fuzz2)+get_rect().size.y/2.0
	end3_x = length3 * cos(angle3.angle()+fuzz3)+get_rect().size.x/2.0
	end3_y = length3 * sin(angle3.angle()+fuzz3)+get_rect().size.y/2.0
	
	queue_redraw()
	

func _draw():
	var center = get_rect().size/2.0
	var min_dim = min(get_rect().size.x,get_rect().size.y)
	var rad1 = min_dim/2.0
	var rad2 = min_dim/4.0
	var rad3 = min_dim/8.0
	draw_circle(center,2,Color(255,255,255,255))
	draw_arc(center, rad1, deg_to_rad(0), deg_to_rad(360), 100, Color(255,255,255,255), -1.0, false)
	draw_arc(center, rad2, deg_to_rad(0), deg_to_rad(360), 100, Color(255,255,255,255), -1.0, false)
	draw_arc(center, rad3, deg_to_rad(0), deg_to_rad(360), 100, Color(255,255,255,255), -1.0, false)
	
#	for age in 5:
#		var age_idx = global.pdw_idx + age
#		if age_idx > 4:
#			age_idx -= 5
#
#		for emit in 3:
#			var end_x = global.emit_pdw[age_idx][emit].x*cos(global.emit_pdw[age_idx][emit].y) + get_rect().size.x/2.0
#			var end_y = global.emit_pdw[age_idx][emit].x*sin(global.emit_pdw[age_idx][emit].y) + get_rect().size.x/2.0
#			var alpha = (4-age)/5.0 + 0.2
#			var color
#
#			if emit == 0:
#				color = Color(0,1*alpha,0,alpha)
#			elif emit == 1:
#				color = Color(0,0,1*alpha,alpha)
#			else:
#				color = Color(1*alpha,0,0,alpha)
#
#			print(emit+1,": ",age,"  ",color)
#			draw_line(center, Vector2(end_x,end_y), color, -1.0, false)
	
	draw_line(center, Vector2(end1_x,end1_y), Color(0,1.0,0.0,1.0), -1.0, false)
	draw_line(center, Vector2(end2_x,end2_y), Color(0,0.0,1.0,1.0), -1.0, false)
	draw_line(center, Vector2(end3_x,end3_y), Color(1.0,0.0,0,1.0), -1.0, false)
	
#	global.emit_pdw[global.pdw_idx][0] = Vector3(end1_x,end1_y,  0)
#	global.emit_pdw[global.pdw_idx][1] = Vector3(end2_x,end2_y,  0)
#	global.emit_pdw[global.pdw_idx][2] = Vector3(end3_x,end3_y,  0)
#	global.pdw_idx += 1
#	if global.pdw_idx > 4:
#		global.pdw_idx = 0
#	draw_line(center, Vector2(global.emit_pdw[global.pdw_idx][0].x,global.emit_pdw[global.pdw_idx][0].y), Color(1,1.0,0.0,1.0), -1.0, false)
	
	var ac_angle = global.aircraft_loc.angle_to_point(Vector2(0,0))
	var ac_x = rad3*cos(global.aircraft_rot-PI/2.0)
	var ac_y = rad3*sin(global.aircraft_rot-PI/2.0)
	draw_line(center, Vector2(ac_x+center.x,ac_y+center.y), Color(0.8,0,0.8,0.7), -1.0, false)
	

func _input(event):
	if event is InputEventMouseMotion:
		
		if $pointer.has_mouse_focus:
			#print("Mouse moved")
			var angle = (get_rect().size/2.0).angle_to_point(get_global_mouse_position())
			$pointer.rotation = angle
		#	set_default_cursor_shape(CURSOR_POINTING_HAND)
		#else:
		#	set_default_cursor_shape(CURSOR_ARROW)
�7Bb�銕|/�extends Control



func _get_drag_data(_position):
	var preview = TextureRect.new()
	#var con = Control.new()
	#con.add_child(preview)
	preview.texture = $emit1Sprite.texture
	preview.set_scale(Vector2(0.3,0.3))
	
	#preview.rect_position =  preview.rect_position
	print("HERE")
	
	set_drag_preview(preview)
	return { id = "foobar"}

#func _can_drop_data(at_position, data):


0+��#71RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://dummy1Color.gd ��������   Script    res://pointer.gd ��������      local://PackedScene_stqe6 4         PackedScene          	         names "         Dummy1    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    Control    dummy1Color    color    script 
   ColorRect    pointer    z_index    pointerLine    _on_pointer_line_mouse_entered    mouse_entered    _on_pointer_line_mouse_exited    mouse_exited    	   variants                        �?               ��=��=��=  �?                            
        �?  �?      �?      node_count             nodes     X   ��������       ����                                                          ����                                       	      
                       ����                                             
                       ����      	                                       	   
             conn_count             conns                                                            node_paths              editable_instances              version             RSRC���extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _can_drop_data(_position, data):
	
	var passed = true
	if (typeof(data)==TYPE_VECTOR2):
		passed = false
	#print(self,"q2?? ",passed)
	#return typeof(data) == TYPE_VECTOR2
	return true

func _drop_data(at_position, data):
	#print("Data: ",data)
	var nn = get_node(NodePath(data))
	#print("BANG2!",at_position, nn.position)
	nn.position = at_position - Vector2(15,15)
	var id = data.to_int()-1
	global.emit_locs[id] = nn.position + Vector2(15,15)


 ��6"�3RSRC                    PackedScene            ��������                                            +      resource_local_to_scene    resource_name    interpolation_mode    interpolation_color_space    offsets    colors    script    noise_type    seed 
   frequency    offset    fractal_type    fractal_octaves    fractal_lacunarity    fractal_gain    fractal_weighted_strength    fractal_ping_pong_strength    cellular_distance_function    cellular_jitter    cellular_return_type    domain_warp_enabled    domain_warp_type    domain_warp_amplitude    domain_warp_frequency    domain_warp_fractal_type    domain_warp_fractal_octaves    domain_warp_fractal_lacunarity    domain_warp_fractal_gain    width    height    invert    in_3d_space    generate_mipmaps 	   seamless    seamless_blend_skirt    as_normal_map    bump_strength 
   normalize    color_ramp    noise 	   gradient    use_hdr 	   _bundled 	      Script    res://dummy_2.gd ��������   Script    res://ground.gd ��������   Script    res://AcCenter.gd ��������
   Texture2D    res://playerShip3_blue.png a²Y2zan   Script    res://aircraft.gd ��������   Script    res://emit1.gd ��������
   Texture2D    res://ufoGreen.png �|�� N�E
   Texture2D    res://ufoBlue.png "�Η�o
   Texture2D    res://ufoRed.png �,���F      local://Gradient_q66m1 #         local://FastNoiseLite_a0llj h         local://NoiseTexture2D_agxne �         local://Gradient_tx0r4 �          local://GradientTexture1D_88n4o .         local://PackedScene_rgf4e l      	   Gradient       $      �4U>�?�"�>  �?�Q?>�$?,��>  �?         FastNoiseLite             NoiseTexture2D                      !         &             '                  	   Gradient       $        �?  �?      �?  �?  �?      �?         GradientTexture1D    (                              PackedScene    *      	         names "   #      Dummy2    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    mouse_filter    script    Control    ground    texture    TextureRect 	   AcCenter    z_index    anchor_left    anchor_top 	   aircraft 	   rotation    scale 	   Sprite2D    pointer 	   centered    emit1    custom_minimum_size    offset_left    offset_top    offset_right    offset_bottom    emit1Sprite 	   position    emit2    emit2Sprite    emit3    emit3Sprite    	   variants    '                    �?                                           
               ?            �I@
      ?   ?                     �I�
      @  D                
     �A  �A     QC     .C     oC     LC         
     pA  pA
   ���>���>            f���     ��   f���     ��              �B      �     �B     �               node_count             nodes       ��������	       ����                                                                   
   ����                                                               	      ����                  	      
      
      
      
                                            ����                                                  ����                                       	      ����                  	      
      
      
      
                                                                    ����                                 	      ����                  	      
      
      
      
                                                                      ����                  !               	   !   ����                  	      
      
      
      
      "      #      $      %                               	          "   ����                  &             conn_count              conns               node_paths              editable_instances              version             RSRC��ۑ�xBextends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var id = self.name.to_int()-1
	global.emit_locs[id] = position + Vector2(15,15)

func _get_drag_data(_position):
	var sprite = TextureRect.new()
	var nn = get_node(self.name + "Sprite")
	sprite.texture = nn.texture
	var preview = Control.new()
	preview.add_child(sprite)
	

	sprite.position = Vector2(-15,-15)
	sprite.scale = Vector2(0.3,0.3)
	
	set_drag_preview(preview)
	return self.name




�MrW�)�extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _draw():
	var aircraft = global.aircraft_loc
	var center = get_rect().size/2.0
	var min_dim = min(get_rect().size.x,get_rect().size.y)
	var rad2 = min_dim/4.0
	draw_arc(center, rad2, deg_to_rad(0), deg_to_rad(360), 100, Color(0.6,0.5,0.8,1.0),2, false)
	


#func _can_drop_data(_position, data):
#
#	var passed = true
#	if (typeof(data)==TYPE_VECTOR2):
#		passed = false
#	print(self, "q2?? ",passed)
#	return typeof(data) == TYPE_VECTOR2
#
#func _drop_data(at_position, data):
#	print("BANG2!")
�����GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ ����BK�}�C��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://25gru2n55006"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 extends Node2D

var aircraft_loc = Vector2(0,0)
var aircraft_rot = 90.0

var emit1_loc = Vector2(100,100)
var emit_locs = [Vector2(0,0),Vector2(0,0),Vector2(0,0)]
var emit_dist = [0.0,0.0,0.0]
var emit_pow = [50.0,50.0,50.0]

var emit_pdw = [[Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0)],
				[Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0)],
				[Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0)],
				[Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0)],
				[Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0)]]
				
var pdw_idx = 0

var pointer_angle = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
M��FcRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://polar_2.tscn �� ��   PackedScene    res://map.tscn �
Ҽ��o      local://PackedScene_uirpi :         PackedScene          	         names "   	      MainScreen    Node2D    HSplitContainer    offset_right    offset_bottom    Polar2    layout_mode    size_flags_vertical    Map    	   variants           ��D    �3D                                      node_count             nodes     &   ��������       ����                      ����                           ���                                ���                         conn_count              conns               node_paths              editable_instances              version             RSRCJh{�~��RSRC                    PackedScene            ��������                                            )      resource_local_to_scene    resource_name    interpolation_mode    interpolation_color_space    offsets    colors    script    noise_type    seed 
   frequency    offset    fractal_type    fractal_octaves    fractal_lacunarity    fractal_gain    fractal_weighted_strength    fractal_ping_pong_strength    cellular_distance_function    cellular_jitter    cellular_return_type    domain_warp_enabled    domain_warp_type    domain_warp_amplitude    domain_warp_frequency    domain_warp_fractal_type    domain_warp_fractal_octaves    domain_warp_fractal_lacunarity    domain_warp_fractal_gain    width    height    invert    in_3d_space    generate_mipmaps 	   seamless    seamless_blend_skirt    as_normal_map    bump_strength 
   normalize    color_ramp    noise 	   _bundled       Script    res://track.gd ��������   Script    res://AcCenter.gd ��������
   Texture2D    res://playerShip3_blue.png a²Y2zan   Script    res://aircraft.gd ��������
   Texture2D    res://ufoRed.png �,���F      local://Gradient_pceuq          local://FastNoiseLite_5o40s X         local://NoiseTexture2D_waa53 v         local://PackedScene_c1y52 �      	   Gradient       $      �4U>�?�"�>  �?�Q?>�$?,��>  �?         FastNoiseLite             NoiseTexture2D                      &             '                     PackedScene    (      	         names "         Map    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    size_flags_vertical    Control    track    script    Node2D    ground    z_index    offset_left    offset_top    offset_right    offset_bottom    texture    TextureRect 	   AcCenter 	   position 	   aircraft 	   rotation    scale 	   Sprite2D    emit1    emit1Sprite    	   variants                        �?                         ����             �     �@    �GD     ID         
     �C  �C            �I@
      ?   ?                  
   ��L>��L>               node_count             nodes     a   ��������	       ����                                                                   
   ����                           ����                        	      
                                 ����                                ����                                             ����                     ����                         conn_count              conns               node_paths              editable_instances              version             RSRCǚ�BGST2   b   K      ����               b K        �  RIFF~  WEBPVP8Lr  /a�mm���/L�9,������(ivÌc���z�(��Ur��yJ�>s���7� ] �i��6�]f��Q��eޟ������]���}�Sf|���(K)8LGֶ�u� ��~�Y�P���@	��ɯ�m��d�V��
�7�e�����R��㐶m!:!�Aa>� �0!��B!��mI��l&{Tj���a�I�	�Pj�º�Ϫx ���X O�jB�	(/�+�BX "�&�@3HD��A��m�4wh��@+�Əb�G�u��hK[qFH���!�"�Ж���[z ���8+�(�3���e@�{`	D���!�`D {�=1hK��u:46��`���d��z
"��"�1d�"��<�h@D ��g�	�aF�` �ָ"�@�(�'��s�津�k�XD����0CHF��X�%��O��@�ghK�R��{V��ǚݳ�-�Nvx"�BMH�f5x��&$O��o�!�����Kw�Ђ�� O�R���Um�F�RɓE��%A�� ��g�hn(����qpdA��jVJ%��^=.�껹T� 2Ͽ�@�h��-��n��eܬ�2�j���W5+����%WJy�R1`��"}�x�V�xЖ�w�`@{T��V�>T���т�d�/9#Y�h������M���s�mI[��|�å�m	�6�Ư��d��p/�U�+��K|�R�p�b��:A[Җ컮����D{b� z��ė(�VҀR*��n!R��P-�t�2�x�P4���Z�{�d�U�C.I|���U�7�}�P^��^��R�/���!���̓�n�l�֙d4�;(��/ى5"����JJ�}�mI��30m�N�w]��o�o�!vƕ8d)��T&T5+%5�����^��/�$�C␭�kD������B�({�޹�-��#X�8d!ė����K%(Y�8��K�C␕���u�C���(����%mi+� ����!q�\��WTJV���T5+p=��%gC�B�8��5�g�,=wE��o_N�h@�#qHr�td>����%���__�K��\�t:��2`>s�W(.^ޢ-��9[#:��������KYI����uJ!6gk8�ǾB�p�Nk����me WJ�%Jv)Y��S*���*|P������!w�w�Щ�]�r��b��������;2�}*YJ%0/��u��q�
�z?_�-iK�k�B�p�J�6��f�T�o|}���%��f������N�p�´'ƈ���(�]۷�-iK��8����c�����U�ߗ���N�Fe�Y[z�������p|�X��o�l�Y�����i!X�L�x����V��=��0���-iK�/�Fo�>F/>d �;(��7�߸���/��%P*+�R>�*��K|I{(t�]GP�2�o�!����Ⱦ�Z��niK��pl���o~�r��ukw���TR�����T��C8���Cs�K�{
E#Q��D�� ��]�o��R�ʺG�T�ӧ��o�t*��mI[��k�P4�y��	�u�#l�_��o�SY��T�R*�e��qN)]MW*�+��$U��B�T0��7gk����BV�v�,ܗ���J��cP0�NЖ�Ӟ#$����}���(Y�I�Bf�'VP��ne`z�
���<����J)�ʓ�TJ�P�M��<�]"A%4|�m���eX����a)���T�E��I6��/��A����l�D��$|���T1���%��9�(�Mt�r�ėx�C�I�h%�|ɍ����
�%e�V�a D6k��K����VP0m)�o�sG���%t8�K�����ݯF22wh0`�k��nw�k_ʘ��@�vq)T��u�#km� ��}�,g�"k'ݞ����ҫ��!)�)�<Y`/��=�d�����������4|�l�֬���6IV̢e��!����Xf��Au�Y��pއP���~�:2�s%;+햻YZ�;�����:�Y�';x��CP�s#F���[�$�@�ZP���1k�"A����>�կ�B�M��+��k=*{Ƭ,�Y:�9���:�8���b�*zT��}e�㘕�:�HP![q�����pD�����]�{�^P�ִ�Gl��پ�7��!���7�䂶40����k�T�5�����:��9�0��+�G��d�u�z�j�}ߜ�=&ׇ/��w�<Ί�S_^׭��cPa������[��Y�\�5uF�C�C�5ݩ��ǯ���S���n��R�̕n�nR���ȁ�%��×fS��T�ۘ?\<����d�����Cs��~5b����0�}���[{n>���љ���wɇQ���g�S�x+ԮmI[r��9	p�y�zW{���3���q�<*{�*��[��u~�"�������q�u'�>�-iK�����})�[jkW|é�qo�;��������v�������e$x�!G�^�����H�寭]���^��-U<�[q s����c��p����Ǧ���rdv㳶����Z';�؊3l�����-GH�m)���/J`��Z;�xP�����XR%��Uos!���)I���Yg׿�ta��6��G�2�s�J[n~�����%���_pp��5��k�up�R���oY��~ܳ?�+�V񕃫ߐF��'��9pp�(�pW<�~����ٽ�W�d]Y���+�V��C�5�"м�ɛ��|�:��_��?���Oŷؚ�%����}�ſ���s��]ɺ���8�e�"�!|R����o���w����Z�/>Q���O��������X}\2@�*�Bh��])T�>P��Z�rr��`�T�����@.��	ȡ "9�CYr�:�	(Ai�[�W>ΫF�J��z�5�F[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dlk4qfx301ixt"
path="res://.godot/imported/playerShip3_blue.png-2433575acd9066483b746cede84ec9da.ctex"
metadata={
"vram_texture": false
}
 ��&extends Control

var end_x = 0
var end_y = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#var min_dim = min(get_viewport_rect().size.x,get_viewport_rect().size.y)
	var min_dim = 800
	var length = randf_range(1.0,min_dim/2.0)
	var angle = randf_range(0.0,360.0)
	
	end_x = length * cos(deg_to_rad(angle))+get_viewport_rect().size.x/2.0
	end_y = length * sin(deg_to_rad(angle))+get_viewport_rect().size.y/2.0
	
	queue_redraw()

func _draw():
	#var center = get_viewport_rect().size/2.0
	var center = Vector2(450,450)
	#var min_dim = min(get_viewport_rect().size.x,get_viewport_rect().size.y)
	var min_dim = 800
	var rad1 = min_dim/2.0
	var rad2 = min_dim/4.0
	var rad3 = min_dim/8.0
	draw_circle(center,2,Color(255,255,255,255))
	draw_arc(center, rad1, deg_to_rad(0), deg_to_rad(360), 100, Color(255,255,255,255), -1.0, false)
	draw_arc(center, rad2, deg_to_rad(0), deg_to_rad(360), 100, Color(255,255,255,255), -1.0, false)
	draw_arc(center, rad3, deg_to_rad(0), deg_to_rad(360), 100, Color(255,255,255,255), -1.0, false)
	draw_line(center, Vector2(end_x,end_y), Color(0,1.0,0,1.0), -1.0, false)
	var ac_angle = global.aircraft_loc.angle_to_point(Vector2(0,0))
	var ac_x = 200*cos(global.aircraft_rot+PI/2.0)
	var ac_y = 200*sin(global.aircraft_rot+PI/2.0)
	draw_line(center, Vector2(ac_x+center.x,ac_y+center.y), Color(0,0,1.0,1.0), -1.0, false)
extends Window


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://polar.gd ��������      local://PackedScene_i3jdo          PackedScene          	         names "         Polar 	   position    size    script    Window    	   variants       -          -   l  �                  node_count             nodes        ��������       ����                                conn_count              conns               node_paths              editable_instances              version             RSRCW����3ތ�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    interpolation_mode    interpolation_color_space    offsets    colors    script 	   gradient    width    use_hdr 	   _bundled       Script    res://Polar2.gd ��������      local://Gradient_g45nx �          local://GradientTexture1D_0su2f 
         local://PackedScene_wtjpf <      	   Gradient       !             $      /�4>/�4>/�4>  �?         GradientTexture1D                          PackedScene    
      	         names "         Polar2    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    script    Control    TextureRect    z_index    texture    	   variants    	                    �?                         ����                     node_count             nodes     .   ��������	       ����                                                                
   
   ����                                                             conn_count              conns               node_paths              editable_instances              version             RSRC�C��YCRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script 	   _bundled       Script    res://buttons.gd ��������   Script    res://fps.gd ��������      local://StyleBoxFlat_b2vsd Z         local://StyleBoxFlat_m2gd7 �         local://StyleBoxFlat_w8d7p �         local://StyleBoxFlat_he7oo �         local://StyleBoxFlat_vgjfo .         local://StyleBoxFlat_7o0yi c         local://PackedScene_7bsbv �         StyleBoxFlat              ��H?      �?         StyleBoxFlat                �?      �?         StyleBoxFlat                  ��H?  �?         StyleBoxFlat                    �?  �?         StyleBoxFlat          ��I?          �?         StyleBoxFlat            �?          �?         PackedScene          	         names "         Buttons    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control    VBoxContainer 	   EmitPow1 #   theme_override_styles/grabber_area -   theme_override_styles/grabber_area_highlight    value    tick_count    ticks_on_borders    HSlider 	   EmitPow2 	   EmitPow3    fps    size_flags_horizontal    size_flags_vertical    Label    _on_emit_pow_1_value_changed    value_changed    _on_emit_pow_2_value_changed    _on_emit_pow_3_value_changed    	   variants                        �?                                              HB                                                         
                  node_count             nodes     p   ��������       ����                                                          	   	   ����                                                     
   ����                              	      
                    ����                              	      
                    ����                              	      
                    ����                                     conn_count             conns                                                                                      node_paths              editable_instances              version             RSRC�u�Z,u���S�9extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	var mainstyle = StyleBoxFlat.new()
	var grstyle = StyleBoxFlat.new()
	add_theme_stylebox_override("slider",mainstyle)
	add_theme_stylebox_override("grabber_area",grstyle)
	
	mainstyle.bg_color = Color(0,0,0)
	grstyle.bg_color = Color(1,0,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_custom
Zextends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_emit_pow_1_value_changed(value):
	global.emit_pow[0] = value


func _on_emit_pow_2_value_changed(value):
	global.emit_pow[1] = value


func _on_emit_pow_3_value_changed(value):
	global.emit_pow[2] = value
  �~<�extends Label
	
#onready var OtherNode = get_node("Path/To/Other/Node")

func _process(delta):
	text = ""
	text += "fps: " + str(Engine.get_frames_per_second())
 #   text += "other variable: " + str(OtherNode.variable)
yᆮ�extends Control

var has_mouse_focus = false
var start_angle = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#mouse_entered
	#connect("mouse_entered", _mouse_entered())
	#connect("mouse_exited",  _mouse_exited())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var center = get_rect().size/2.0
	var panel_size = get_rect().size
	var min_dim = min(panel_size.x,panel_size.y)
	var length = min_dim/2.0
	position = center
	$pointerLine.size.x = length
	$pointerLine.size.y = 3
	global.pointer_angle = rotation + PI/2.0
	

func _on_mouse_entered():
	#set_default_cursor_shape(CURSOR_POINTING_HAND)
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	#print("IN")
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) :
		#print("moving")
		start_angle = rotation
		has_mouse_focus = true
	
func _on_mouse_exited():
	if !Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) :
		has_mouse_focus = false
		#set_default_cursor_shape(CURSOR_ARROW)
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)

func _on_pointer_line_mouse_entered():
	_on_mouse_entered()


func _on_pointer_line_mouse_exited():
	_on_mouse_exited()

func _input(event):
	if event is InputEventMouseButton:
		if !Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			has_mouse_focus = false
��extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in range(9):
		var nn = get_node("Row"+str(i))
		nn.set_position(Vector2(0,nn.position.y+1))
		if nn.position.y > 1030:
			nn.position.y = -nn.size.y
��K��@�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://waterfall.gd ��������
   Texture2D    res://icon.svg �Uu�s,*      local://PackedScene_lshia 3         PackedScene          	         names "      
   Waterfall    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control    Row0    offset_left    offset_top    offset_right    offset_bottom    texture    stretch_mode    TextureRect    Row1    Row2    Row3    Row4    Row5    Row6    Row7    Row8    	   variants                        �?                         
        �@     ��      @              C     C    ��C    ��C    ��C     �C    �D    @D    @!D    � D    �@D    @AD    @aD     ��    �aD    ��D      node_count    
         nodes       ��������       ����                                                             	   ����
                     
                     	            
                           ����
                     
         	                        
                           ����                                          
                           ����
                     
                                 
                           ����
                     
   	            	                  
                           ����
                     
                                 
                           ����
                     
                                 
                           ����
                     
                                 
                           ����
                     
                                 
                   conn_count              conns               node_paths              editable_instances              version             RSRC7��|sʺ��RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    script/source 	   _bundled    script        
   local://1 `      
   local://3 �      
   local://2 �
      
   local://4 Y      
   local://5 �         local://PackedScene_ygvud       	   GDScript          M   extends Control

class DragDataColor:
	var sender: Object
	var color: Color
 	   GDScript          �  extends Control

@export var is_accepting_drop_data = true

# This control will accept drop data from a color source, such as:
# source_red, source_blue, or source_green.

# The following two functions are virtual, meaning you the programmer must implement it.
# Then the two functions will be called by the engine.

# The can drop data will take a position local within self's local coordinate system.
# The position (0,0) is the top left corner.
#
# The data will be from other controls that have implemented `get_drag_data()`.
#
# You can perform any logic in this function. You must return a `true` when you want
# to accept the `data` and `false` when you reject the data. You can use the `position`
# to determine if you want to accept or reject the `data`. Additionally, this method should be
# fast as it is called every mouse move event.
#
# Some examples of ways to check if can drop data usually include checking if the data
# contains a specific property or is of a certain type. You could also only consider data
# when a certain condition or state is met.
#
# In this example we will be using a simple state called `is_accepting_drop_data` and then
# a type check to see if `data` is of a `DragDataColor` type.
#
# We only check for type `DragDataColor` here because that is the only requirement for this example.
func can_drop_data(position: Vector2, data) -> bool:
	print('can drop data')
	
	# The following return statement is the condensed form, but logically equivalent of:
	# if not is_accepting_drop_data: return false
	# if data is DragDataColor: return true
	# else: return false
	#
	# The following line reads nicely as:
	# When self is accepting drop data and the drop data is of type DragDataColor then
	# accept the drop data. 
	return is_accepting_drop_data and data is get_parent().DragDataColor

func drop_data(position: Vector2, data) -> void:
	print('accepting drop data')
	
	# Here we will actually use the data.
	# In this example we want to take the position and add a new source in that position.
	
	# We know that data is DragDataColor which has the sender property:
	# Let's make it simple and duplicate that source, then add it as a child.
	var new_source = data.sender.duplicate()
	new_source.rect_position = position
	add_child(new_source)
 	   GDScript          k  extends ColorRect

# get_drag_data() is a virtual function that you, the programmer, implement.
# The engine will call this method, if defined, on your behalf.
# As any function, you can perform any logic you want inside of it.
#
# You want to return the data (or metadata) that this control represents.
# In this example, this control just represents a color. We want other color controls to accept
# this control's source color.
func get_drag_data(position: Vector2) -> Object:
	
	# For this example to be contained in one scene,
	# the DragDataColor class is on scene root.
	var DragDataColor = get_node('../..').DragDataColor
	
	# First create the data to be passed:
	var data = DragDataColor.new()
	data.sender = self
	data.color = color
	# Then create a preview for that data:
	# In this case we can just duplicate self
	set_drag_preview(self.duplicate())
	return data 	   GDScript            extends ColorRect

# This control will take other source colors and mix it with itself.
# It can also be dragged and dropped as well.

func can_drop_data(position: Vector2, data) -> bool:
	return data is get_node('../..').DragDataColor

func drop_data(position: Vector2, data) -> void:
	var c = data.color
	c.a = 0.5
	color = color.blend(c)

func get_drag_data(position: Vector2) -> Object:
	var data = get_node('../..').DragDataColor.new()
	data.sender = self
	data.color = color
	set_drag_preview(duplicate())
	return data 	   GDScript          g  extends ColorRect

# This control will remove itself after being picked up.

func get_drag_data(position: Vector2) -> Object:
	var data = get_node('../..').DragDataColor.new()
	data.sender = duplicate() # note: this will be leaked, but for simplicities sake, I'm still using this.
	data.color = color
	set_drag_preview(duplicate())
	queue_free()
	return data    PackedScene          	         names "         test_drag_and_drop    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control    destination_large    source_red    color 
   ColorRect    source_blue    source_green    source_and_destination_mix    pickup_source    	   variants                        �?                                   ��W?���>���>  �?            ���>���>��W?  �?   ���>��W?���>  �?                        node_count             nodes     a   ��������       ����                                                             	   ����                                         
   ����                                      ����            	                          ����            
                          ����                                ����                         conn_count              conns               node_paths              editable_instances              version             RSRC���@�����extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _draw():
	var aircraft = global.aircraft_loc
	var center = Vector2(400,400)
	var min_dim = 800
	var rad1 = min_dim/2.0
	var rad2 = min_dim/4.0
	var rad3 = min_dim/8.0
	draw_arc(center, rad2, deg_to_rad(0), deg_to_rad(360), 100, Color(0.5,0.5,0.8,1.0),-1.0, false)
��GST2   [   [      ����               [ [        �	  RIFF�	  WEBPVP8Lv	  /Z�?� �$E���;���a�L��m�6��9�Po4[�D�}T��F��4�x�ϊ`<~�A�F�����A��Y��ApJ@"�D�����?P P�?<S
����ቜ�SNx�������*����R��v"L;Aj	�Ҥ���-�C�cG�H�B���"�H��^Gh�G�L��x퍷^��T����#-��2��-[�_����^����'y�e5��3� �{�.��+%uY]V�5�\���.۾*�����p]���~�.�p���@` $���&0'���Gi��֐�'������2��ݝY@i��X��5���{�\�s^���� IR�fv�@�d��,#EB�r�Z�U׋�K�fG�f�֏<�Z+�J���q)�$ʂZ���DN�Y��k<!�֒�J�B^V�XQ��(ZA��
����Y[��2�r����-ŋ�/ �~ ��)f�l^8��i*\��|��e ����T���/�/(ǉG4`~��E��-I)�q�A��l�^�M2��hB�0�䙑�`����[��<3�:@)���s����l`���e�̚�=m���[*-O�GYt�3���I��'DR���Dbo|�M&�U�"9��#:�S~�{��asT���T]m��W�����$���9��	�0Т��z��]��*upbbSp��.ם+\�*/&&��=�M���-b��ww�T�V/�a*i� ���F�M����%�f�P�+�*Ex	�a�w7�C5J�_1�,�E�s���y��`�h���h�ٙ�.�T+�|�|�`t{8ԣյ�*k��V)��;u`�h���Y��P� p#���u{84���YD��M���[��͝��������Y��{.����Kj�n�?�d��x]3��9�
����aK�'W,�*o�cZe.�K��mJ��3R�o�.��f E�ٍ�w��2�7����	%�V4|"t�<#-�=e�ve�L3©��T+�}�5����LK�m�t5�=��c����` {��<z>R��#:x]���9`V�3�r���u��\P���ޓO#�>=f�����mSR@M�җ�u�!g��#�8�;[L�Za~Lk���ӑ�2��
��Vu秊�N��kΣ��VDy�R4i5I`�R^FI�˚�t�!_���獛��^y���x�Q�y����W�G�����:�ɩ9#g�q��Lx����h�sZќV���I��KƋ���􍮹-����50�Ԭ���c��2��U7�L�y4�(jP��QlF�m��hvt+/�\�<7�����UT�B��c���Po(���@��j��8�2+kҵ�B�7��&N2�6\8G����9�G����۷�EDoޔ�Q�$�?HXU��g�q�1gGFz��&{��/��H�K���;�C����.&�I�|�����W��qd������О�[ʿ�㱰�.�m��*�ø��)�������rOY�N���tI[ژSs^]�^�����1��fm}ŕ�-�M����?�W�:l����DL����rV5ب׀�ui�'n���d.�I�U�J�9�-&��0f sFWpQ�(0���e�Ḑ�"%ZQ�����J��l��{�>�{.*�KJh��v"�9TW��ܘ�"g6d֙~��
�0���[L<��i�lf͸��S�x^[{�����O�Yc���r����d.�T���k�U�WȻ��M��m�u�����7A��M9�5[y����0����e_�����K��	��TQ�C4�gq�Q�<�ZaT�y��V�y ����JE}�-�2��\�3�D�o����ݙ�R�u~	��)�b1+}"
]9������YF��S�����r�F�{R��T��7�j�ͣ� ��.W�ht:�1�icuu���Ύ�_�v���B�������p8�VD'�Du`���ca� y�V�*�����������hV����tq#&�瘞d	ݟ]�%�@]Y���]f�98�������p�f&ʨ;�{ifB�U�(I����L��kٺu��ihT��"Є�va+}trb?�u���U�<�ܾw�I:������r[�HBo�[59�H$��ڟH$&ճ�r�ڒE�y@��X8ș���Ð�R������D�;�c��=�T���ԖZ4aȝO�C�9ߧ�t�!.�LI�ISr6	��Q�s��ț�؝��S[&�	��.0�4"�Ӝ-��j��2M.� {���F)i����W�P[�"����i6%gl��j�\R|��2��|*��q�1*ي#)~��o9 fs��.p�}2'�X1%%�Bڱ�f̊evF����э"���/_��c�!����T��6�����r����JQ|���[=���Z���}��Z�RD�}��ˋ�f����i���09>%�L� ߦ`�]��DF��ͫ[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dl8e5k2lrtc31"
path="res://.godot/imported/ufoBlue.png-37570a1928c2bf25b391459047a50b0f.ctex"
metadata={
"vram_texture": false
}
 �J k��xqCGST2   [   [      ����               [ [        �	  RIFF�	  WEBPVP8L�	  /Z�?�8�mU�mK��	˯�=���mIr�f�g�������:�m��$)R�t<��K;��Šm#I^�E� Y�,��� � i��#�LC!���


Z�,���쿢������ *}j�Wd �"d��� *�NН*����y&AY&� (���� ��zv����9�ü�<����Y��'/s�ƺ,���&�jOf\=�k3$��apm��b��Ԟ,�Y�ܜ�'����d�r��&���4h�O�����xӮE7ݜ�kq��ڹ��⡌6m��'M��Fd ��������k��l�=*(8ϔ)lLf( m�n���VS}�m{��}��!��?I��6��$#�\�`)*J�RX*�^4;]�5U��ʳ��Ja�X���/E�DAP�5��i�ʂ@p��@"���\>������ jקD+��S�8?�&k�#)�Wz$K�����xq��;[���3W*#���4E�Xx��� �!WCYp�����'uPu��a�%Gm�=-��y�T��zI`,��И�	=��+�aF�醒�@{���̠�l�43#�af��3{��0f����Oo)�i<�e���w�Z�$�ΞI^>�����97�8rV��8�J\��|[�MI$��Q�vbPqtm4h_A��;&�L�(�LlNp��@�Ɨ�AR�`+��Ɂ�cL��+w�nr]���P��7�ꆈ�omv���R�^_b*i\%)��F�5���n�%�f�,P�Exe,���t�(�wh�18S�����ά�q���C�ݫfg�5)R
�H��EI�ѭNG�V�V�V)5�D�\ީ �F�fh/2�F�2��	����N�|f-/ �`����s;���뫫�����)��{.a�1�������_[d�����L�~ɠB:?�DaX��I�ri)ݮ�[7�V+��$��v$�r�Q���\�� �0���nW�[�H+7v���-�h�D�yFZH{Z�ە����Q�]`�����sY�F�h#�KaXh##3d��]�w���g=��>����H���:�.�8���N��˪��M�{�����G����N犴m�P���eOu�g�y�D��u'c�i�G=����<����P����;?�uҴ][�<�kN��mE��&	L3�krCS��?�����b��1S�ZȘ���iF���ŋ/?�z�.�5��Y4=>�V�$g�q��Lx���}�����hդ���@�����/$}�kd�h'�UL05k��X��~h��Sk�r�����eK��jM���2W9���,�G��(*�v!�p�1��3�kʫo��|KMM�f%`M�6[H��+��cˆ��h�u_�>�Q�T�޽y�N�{���M5i@���U�9}��q6e��q�h"q�?���$��S��ʽ��/��H$������7�*���3�O�� ����<�+�^���pȷ�rGY��E>O+��;�--7��h�<Wפ��*����+�B��<Q��e5ch�+�́�7��快����$v�������j�Q)C
ԥ����/wߓ��f�*AWr/�l31݇���̒��赐ejm���|̧\ %ZQ��d���:�n��,�=S�=W�uy��pZ;���QW6�̘g"K�2{L?SF����>f1��f܎�)=���\������Yc��B��+��d:�T��_k+���͑w�ߟ
.�m������#ߜ�6r�]j6�D�[�c$[���>�����K��	�:�T��C4�gq�Q�=��cT�x��V�	 ��Q�bE��[�d�%���0-����.ݙ�R�u~��)�\.%}"
.�{w��Px�"#�r�aA�F�u9r��M)�몁�k����V ��+R4:]��괻������)�W���t� �ef䘉�w�Ӊ�C3�D`��{}a� �\*)�����n8`z�l�JB�e�HC����KLO2��/�մx���b�}��h�T�(lq��0�F��Vԝ�սefB(�(I�PR�LW��i�޿��4
TK%�kh��Z��>;8p��Z�~wU:O�7��s��Q1��%�$�&�U��D�4���DbP=[/�-Y$�7�N􅓜�1`&�-�x��*O$�c�97�8rJ�J�@m�E�ܙ$�744���ԖN4��!S��XҔ�MBm��CT�!� 2�?v���Ԗ�h�`��'����4�r@c�T���D��u�5���O��&���Ԗ�H�*m`b��E�QhMA��2��??`"3��8f��lő�P��; �ұ�pj�dNP�bJJ��c����ԨA���Eԁ_� "��JBv.�I����l5*��D�G��,���7[��a�v}���	�k�K��}�.,LUkͶ�V�V�-�a��)�e� �[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cdu7pqin2sn5r"
path="res://.godot/imported/ufoGreen.png-568b588f7fd0fa19ed1760b2807512b2.ctex"
metadata={
"vram_texture": false
}
 �&D���vkI	�GST2   [   [      ����               [ [        �	  RIFF�	  WEBPVP8L�	  /Z�?丶m'��4�G�י� �{LE8�$YU���- �"{rpx�����$�Qzv�=�����V�Šm#I^�E� Y�,��� �H�z�߆`�� ������ ��a^�s��0�9LҐT�HjI/�)D�I�$RP�Z@R)�ΐt[ǧ�v�Ji�	�4I�I�Ǒ����ٶ'�e�V�'mMfΚ<�Ԛg��Yvq��k۝߿k?d�h����)Sd�L�]d�LQ(b���^p�Y�r1�v�����\�����ﲡ-�j����uI�I��{�x��I�9�     �%9��  �$�o�����4��OkHpӓ������2���3( m������V�{��Nv#�A�����n� ��1�?XF����r��ˮu����J�z�yn��J� (rY�RI�zˁ��V�"�p$BN�!�򹬬\� �NcV���+>%.����67�fze�sdi�&Z�_@�� ��G���Y1�̟�)q���%w�LgGY\��l���*��b�x�A����P����Μ�b�ĳm�6ꥀ�3P@s�&�C�:@�i
�JM�Y�3�z�2̌,g��i��I��Qf������F!e��Р��7x�YG<��Qhϐ�:{B$�\K$���H��I�*�(q=���7} �H7G�ډ�ѵѤ	|�K��N1����9�I2���/׃(�n�VV����!�`��u�kW��/+/�I�k�s�(�n��i��~����ƥU���5��KKaD\?�Q�`F�U�$(S��	f����~_�R[W�<	g��ܲ��}��:�2Z�{:4ھ`vf�3"���>_4�2����hus�i��Qw˔��*0f4j�vp�i5Tx/�H�GǤ`����0��g����p�~�~ng����ƶ��w��K�:���_��{W����4S�[2��Ώ.Q6�{2�|FJ����e����-	����|~B*�u�%�? �L  OX��)��i�ʶ��5B��]1�HiO�|���1�GTg}�M���\��0ڈ�r;���9��^O�u:���@����-9����I��t�e�0ʨ3d���w�����#�.��?'m�2
T}i�Rr�Yx>0��E���e���{`\�U]�L�㺫�emUw~*��i���y80ׂ(o��fMM
�-�Q�䊦,-~4��7�1yθ)`�赑5m������/^��4<;#֘N����LFͪ�-�y:0������cΊ�YQ��� )��KƋ�������/s];Q�a��ٔ��d>�C�n��ZӨՑנ����[�dkȣ�ҭ</s��̌�2�t���hrgcg�zMy�M���ɢ�`̬lJ�f�_%�8�ؚ��18�gݒ��y40շwo޼��yGb_M�8~�(aCyN���G�}�t�:�H� ���	.��?���^��/��H&#L��ׇ��ސ_@ǉ�GN��_@B{��)�^���pȷ�r]Y����|���_wT�Z.+��a�\]�.i�@SjΩ��!�DY8z��L����2�ſ�!��,�=}ŭ�ְ'�C�OĄ��X����F��*P������}S抚Q`�]�]��ebz�=�U]�E�k#���U��ŘO9CJ����ɡ�4<��Y�{�>�{.(�K
���vbm��<�l�1�DV�e��~��L0���{L<��i����q;�T��rmW��F<�f�i��E߯*.S�LJ]d�l��z�@����
��m��K���#ߜ�6w��z�l�����H��˾*m;+W�N���)��"O�h����ZxD���.�z��, � hk��(���[�e��\�י�V��6ݙ�R�u~��)�|>-}"
]]������2#���1A�F�u9r��e)�K����w�j��G[�_\�H�贼��i{cc������_��ӑ����:�3��~�?,�V D�������¾A�@�\V��-1�׍!p�镶Q/�%"��vL����T�_\�9�@]݊��f�)8�������pg&ZWw�T�֘	9�R�X$�bH33]���e��Ef�	�V.\�@�ֆ��ɑ�a&k�ҍ�<�߿��$��.�<�b�bKI��p�&��D�8��ÉDbD=�(�-Y$�7�N�����$0�ԖJ<D�'߱؜I8�J�X��Ԣ	C�l�����}jK'�¨))`2eJ�&����!�vƐ) Y��S�}j�D4A0��RFdaz��y�9[.S[f�	Ù`O]�(�Lv�P�J%j�T$B�0=Ά�Ԅ�g��Dm�K�0���{��G�J��H�_,v��L,�� �z��	JVLI���v�	�b��#��t��:���D���XmA��g���ټ�f�躜(����E����Ff�4�~�|� �ְQ|�����l���(i���n1C�O�,, [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cd5o11hsj20vi"
path="res://.godot/imported/ufoRed.png-c17e4bab31a834503fcaebc04b80379a.ctex"
metadata={
"vram_texture": false
}
 �!¦�*��8��9RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://dummy_1.tscn ����k$�>   PackedScene    res://waterfall.tscn �Ǚ�C�%h   PackedScene    res://dummy_2.tscn ��_�O   PackedScene    res://buttons.tscn <��8�`-   Script    res://updateEmits.gd ��������      local://PackedScene_ya4b3 �         PackedScene          	         names "         UI    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    Control 
   ColorRect    visible    color    HSplit    split_offset    HSplitContainer    VSplit1    VSplitContainer    Dummy1 
   Waterfall    z_index    VSplit2    Dummy2    Buttons    Timer 
   wait_time 
   autostart    updateEmits    script    Node2D    _on_timer_timeout    timeout    	   variants                        �?                      ���>���>  �?  �?   �     {                        ����   �              ����               ?                     node_count             nodes     �   ��������       ����                                                          ����   	                                          
                        ����                                                              ����                          ���   	                       ���   
                                   ����                          ���                                ���                                       ����                                 ����                   conn_count             conns        	   
                          node_paths              editable_instances              version             RSRCOm_�Owc��nextends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	global.emit_dist[0] = global.aircraft_loc.distance_to(global.emit_locs[0])
	global.emit_dist[1] = global.aircraft_loc.distance_to(global.emit_locs[1])
	global.emit_dist[2] = global.aircraft_loc.distance_to(global.emit_locs[2])
�[remap]

path="res://.godot/exported/133200997/export-dc531c85998866d0f35444c26335f902-dummy_1.scn"
Q�yk�/0��"[remap]

path="res://.godot/exported/133200997/export-14976b7b83974953510ead8308bdec11-dummy_2.scn"
g����	����[remap]

path="res://.godot/exported/133200997/export-5da8bd7fd7b6cf65f46607d9e1f80f99-main_screen.scn"
]	�{���[remap]

path="res://.godot/exported/133200997/export-e6d97c4feb736ad10c0d43b3f8310ea4-map.scn"
[remap]

path="res://.godot/exported/133200997/export-6feed68c598da872f5486e758512a388-polar.scn"
��;�j����[remap]

path="res://.godot/exported/133200997/export-6c8f44555ff5ed9b3f8ae1fe04f2f261-polar_2.scn"
�>��Ga`/m[remap]

path="res://.godot/exported/133200997/export-ee4fabfb2d2770d2df169089e876f427-buttons.scn"
�ނ~���y���%[remap]

path="res://.godot/exported/133200997/export-bee2b2e73249b6be1fd6834f1b985f00-waterfall.scn"
�O(T�
B\[remap]

path="res://.godot/exported/133200997/export-a3fd5e8b7e6d4c2e105f33347b89fc36-test_drag_and_drop.scn"
x[remap]

path="res://.godot/exported/133200997/export-5d2f649bfda0e984c5f95c948cc9f360-ui.scn"
Tlist=Array[Dictionary]([])
�X�>e<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
 ��/�#E�   ����k$�>   res://dummy_1.tscn��_�O   res://dummy_2.tscn�Uu�s,*   res://icon.svgy�Y�{ψ   res://main_screen.tscn�
Ҽ��o   res://map.tscna²Y2zan   res://playerShip3_blue.png��u4g�;o   res://polar.tscn�� ��   res://polar_2.tscnY�?�#�"i   res://test_drag_and_drop.tscn"�Η�o   res://ufoBlue.png�|�� N�E   res://ufoGreen.png�,���F   res://ufoRed.pngXu]H��,   res://ui.tscn�Ǚ�C�%h   res://waterfall.tscn<��8�`-   res://buttons.tscn섿ECFG      application/config/name         polar      application/run/main_scene         res://ui.tscn      application/config/features(   "         4.1    GL Compatibility        application/boot_splash/bg_color      ���>���>���>  �?   application/config/icon         res://icon.svg     autoload/global          *res://main_screen.gd   "   display/window/size/viewport_width         #   display/window/size/viewport_height      �     editor_plugins/enabled8   "      *   res://addons/coi_serviceworker/plugin.cfg   #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility��