Config = {}

Config.Anims = {
    {name = 'umbrella', data = {type = 'anim', ad = "amb@world_human_drinking@coffee@male@base", anim = "base", prop = 'p_amb_brolly_01', proptwo = 0, boneone = 57005, bonetwo = nil, body = 49, x = 0.15, y = 0.005, z = -0.02, xa = 80.0, yb = -20.0, zc = 175.0}},
    {name = 'phonecall', data = {type = 'anim', ad = "cellphone@", anim = "cellphone_call_listen_base", prop = 'prop_player_phone_01', proptwo = 0, boneone = 57005, bonetwo = nil, body = 49, x = 0.15, y = 0.02, z = -0.01, xa = 105.0, yb = -20.0, zc = 90.0}},
    {name = 'notes', data = {type = 'anim', ad = "missheistdockssetup1clipboard@base", anim = "base", prop = 'prop_notepad_01', proptwo = "prop_pencil_01", boneone = 18905, bonetwo = 58866, body = 49, x = 0.10, y = 0.02, z = 0.05, xa = 30.0, yb = 0.0, zc = 0.0, twox = 0.12, twoy = 0.0, twoz = 0.001, twoxa = -150.0, twoyb = 0.0, twozc = 0.0}},
    {name = 'cigar', data = {type = 'prop', ad = '', anim = '', prop = 'prop_cigar_02', proptwo = 0, boneone = 47419, bonetwo = nil, body = 49, x = 0.015, y = -0.0001, z = 0.003, xa = 55.0, yb = 0.0, zc = -85.0}},
    {name = 'cigar2', data = {type = 'prop', ad = '', anim = '', prop = 'prop_cigar_01', proptwo = 0, boneone = 47419, bonetwo = nil, body = 49, x = 0.015, y = -0.0001, z = 0.003, xa = 55.0, yb = 0.0, zc = -85.0}},
    {name = 'cig', data = {type = 'prop', ad = '', anim = '', prop = 'prop_amb_ciggy_01', proptwo = 0, boneone = 47419, bonetwo = nil, body = 49, x = 0.015, y = -0.009, z = 0.003, xa = 55.0, yb = 0.0, zc = 110.0}},
    {name = 'holdcigar', data = {type = 'prop', ad = '', anim = '', prop = 'prop_cigar_03', proptwo = 0, boneone = 26611, bonetwo = nil, body = 49, x = 0.045, y = -0.05, z = -0.010, xa = -75.0, yb = 0.0, zc = 65.0}},
    {name = 'holdcig', data = {type = 'prop', ad = '', anim = '', prop = 'prop_amb_ciggy_01', proptwo = 0, boneone = 26611, bonetwo = nil, body = 49, x = 0.035, y = -0.01, z = -0.010, xa = 100.0, yb = -45.0, zc = -75.0}},
    {name = 'holdjoint', data = {type = 'prop', ad = '', anim = '', prop = 'p_cs_joint_02', proptwo = 0, boneone = 26611, bonetwo = nil, body = 49, x = 0.035, y = -0.01, z = -0.010, xa = 100.0, yb = -45.0, zc = -100.0}},
    {name = 'box', data = {type = 'anim', ad = "anim@heists@box_carry@", anim = "idle", prop = 'hei_prop_heist_box', proptwo = 0, boneone = 60309, bonetwo = nil, body = 49, x = 0.025, y = 0.08, z = 0.255, xa = -145.0, yb = 290.0, zc = 0.0}},
    {name = 'salute', data = {type = 'anim', ad = "anim@mp_player_intuppersalute", anim = "idle_a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'finger', data = {type = 'anim', ad = "anim@mp_player_intselfiethe_bird", anim = "idle_a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'finger2', data = {type = 'anim', ad = "anim@mp_player_intupperfinger", anim = "idle_a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'facepalm', data = {type = 'anim', ad = "anim@mp_player_intupperface_palm", anim = "idle_a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'foldarms2', data = {type = 'anim', ad = "missfbi_s4mop", anim = "guard_idle_a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'foldarms', data = {type = 'anim', ad = "oddjobs@assassinate@construction@", anim = "unarmed_fold_arms", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'brief', data = {type = 'brief', ad = "", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'brief2', data = {type = 'brief', ad = "", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	
	{name = 'umarm', data = {type = 'anim', ad = "mp_ped_interaction", anim = "kisses_guy_a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'rucken', data = {type = 'scenario', ad = "WORLD_HUMAN_SUNBATHE_BACK", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'bauch', data = {type = 'scenario', ad = "WORLD_HUMAN_SUNBATHE", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'bier', data = {type = "scenario", ad = "WORLD_HUMAN_DRINKING", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'bierzu', data = {type = "scenario", ad = "WORLD_HUMAN_PARTYING", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'musik', data = {type = "scenario", ad = "WORLD_HUMAN_MUSICIAN", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'siten', data = {type = 'scenario', ad = "WORLD_HUMAN_PICNIC", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'sitchair', data = {type = 'sitchair', ad = "", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	
    {name = 'damn', data = {type = 'anim', ad = "gestures@m@standing@casual", anim = "gesture_damn", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'fail', data = {type = 'anim', ad = "random@car_thief@agitated@idle_a", anim = "agitated_idle_a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'gang1', data = {type = 'anim', ad = "mp_player_int_uppergang_sign_a", anim = "mp_player_int_gang_sign_a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'gang2', data = {type = 'anim', ad = "mp_player_int_uppergang_sign_b", anim = "mp_player_int_gang_sign_b", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'no', data = {type = 'anim', ad = "mp_player_int_upper_nod", anim = "mp_player_int_nod_no", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'pickbutt', data = {type = 'anim', ad = "mp_player_int_upperarse_pick", anim = "mp_player_int_arse_pick", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'grabcrotch', data = {type = 'anim', ad = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'peace', data = {type = 'anim', ad = "mp_player_int_upperpeace_sign", anim = "mp_player_int_peace_sign", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'dead', data = {type = 'anim', ad = "misslamar1dead_body", anim = "dead_idle", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'holster', data = {type = 'anim', ad = "move_m@intimidation@cop@unarmed", anim = "idle", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'aim', data = {type = 'anim', ad = "move_weapon@pistol@copa", anim = "idle", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'aim2', data = {type = 'anim', ad = "move_weapon@pistol@cope", anim = "idle", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'guard', data = {type = 'anim', ad = "rcmepsilonism8", anim = "base_carrier", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'slowclap', data = {type = 'anim', ad = "anim@mp_player_intcelebrationmale@slow_clap", anim = "slow_clap", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'cheer', data = {type = 'anim', ad = "amb@world_human_cheering@male_a", anim = "base", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'bum', data = {type = 'anim', ad = "amb@lo_res_idles@", anim = "world_human_bum_slumped_left_lo_res_base", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'leanwall', data = {type = 'anim', ad = "amb@lo_res_idles@", anim = "world_human_lean_male_foot_up_lo_res_base", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'copcrowd', data = {type = 'anim', ad = "amb@code_human_police_crowd_control@idle_a", anim = "idle_a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'copcrowd2', data = {type = 'anim', ad = "amb@code_human_police_crowd_control@idle_b", anim = "idle_d", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'sating', data = {type = 'scenario', ad = "WORLD_HUMAN_VEHICLE_MECHANIC", verticalOffset = -5.65, forwardOffset = 0.0, leftOffset = 0.0}},
			
	
	{name = 'untersuch', data = {type = 'anim', ad = "amb@code_human_police_investigate@idle_b", anim = "idle_f", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'verkehrre', data = {type = 'scenario', ad = "WORLD_HUMAN_CAR_PARK_ATTENDANT", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'fernglass', data = {type = 'scenario', ad = "WORLD_HUMAN_BINOCULARS", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'acls', data = {type = 'anim', ad = "mini@repair", anim = "fixing_a_ped", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'arzt', data = {type = 'scenario', ad = "CODE_HUMAN_MEDIC_KNEEL", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'hammer', data = {type = 'scenario', ad = "WORLD_HUMAN_HAMMERING", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'sauber', data = {type = 'scenario', ad = "world_human_maid_clean", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'lausch', data = {type = 'anim', ad = "mini@safe_cracking", anim = "idle_base", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'geben', data = {type = 'anim', ad = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	
    {name = 'copidle', data = {type = 'scenario', ad = "WORLD_HUMAN_COP_IDLES", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'smoking', data = {type = 'scenario', ad = "WORLD_HUMAN_AA_SMOKE", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'shotbar', data = {type = 'anim', ad = "anim@amb@nightclub@mini@drinking@drinking_shots@ped_a@drunk", anim = "drink", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'drunkbaridle', data = {type = 'anim', ad = "anim@amb@nightclub@mini@drinking@drinking_shots@ped_a@drunk", anim = "idle", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'djidle', data = {type = 'anim', ad = "anim@amb@nightclub@djs@dixon@", anim = "dixn_idle_cntr_b_dix", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'djidle2', data = {type = 'anim', ad = "anim@amb@nightclub@djs@dixon@", anim = "dixn_idle_cntr_e_dix", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'fdance1', data = {type = 'anim', ad = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", anim = "high_center", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'fdance2', data = {type = 'anim', ad = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", anim = "high_center_down", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'mdance1', data = {type = 'anim', ad = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", anim = "high_right_down", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'mdance2', data = {type = 'anim', ad = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", anim = "low_left", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	
	{name = 'tanz1', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", anim = "hi_dance_facedj_09_v2_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz2', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_facedj@low_intesnsity", anim = "li_dance_facedj_09_v1_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz3', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", anim = "trans_dance_facedj_hi_to_li_09_v1_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz4', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_low_intensity", anim = "trans_dance_facedj_li_to_hi_07_v1_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz5', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz6', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_hi_intensity", anim = "trans_dance_crowd_hi_to_li__07_v1_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz7', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", anim = "hi_dance_prop_13_v1_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz8', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_med_intensity", anim = "trans_crowd_prop_mi_to_li_11_v1_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz9', data = {type = 'anim', ad = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", anim = "med_center_up", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz10', data = {type = 'anim', ad = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", anim = "med_right_up", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz11', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_groups@low_intensity", anim = "li_dance_crowd_17_v1_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz12', data = {type = 'anim', ad = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_med_intensity", anim = "trans_dance_facedj_mi_to_li_09_v1_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz13', data = {type = 'anim', ad = "special_ped@zombie@monologue_4@monologue_4l", anim = "iamtheundead_11", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz14', data = {type = 'anim', ad = "timetable@tracy@ig_5@idle_b", anim = "idle_e", anim = "mi-hi_amb_club_10_v1_male^6", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'tanz15', data = {type = 'anim', ad = "mini@strip_club@idles@dj@idle_04", anim = "idle_04", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	
    {name = 'walk1', data = {type = 'walkstyle', ad = "ANIM_GROUP_MOVE_BALLISTIC", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk2', data = {type = 'walkstyle', ad = "ANIM_GROUP_MOVE_LEMAR_ALLEY", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk3', data = {type = 'walkstyle', ad = "clipset@move@trash_fast_turn", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk4', data = {type = 'walkstyle', ad = "FEMALE_FAST_RUNNER", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk5', data = {type = 'walkstyle', ad = "missfbi4prepp1_garbageman", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk6', data = {type = 'walkstyle', ad = "move_characters@franklin@fire", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk7', data = {type = 'walkstyle', ad = "move_characters@Jimmy@slow@", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk8', data = {type = 'walkstyle', ad = "move_characters@michael@fire", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk9', data = {type = 'walkstyle', ad = "move_f@flee@a", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk10', data = {type = 'walkstyle', ad = "move_f@scared", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk11', data = {type = 'walkstyle', ad = "move_f@sexy@a", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk12', data = {type = 'walkstyle', ad = "move_heist_lester", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk13', data = {type = 'walkstyle', ad = "move_injured_generic", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk14', data = {type = 'walkstyle', ad = "move_lester_CaneUp", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk15', data = {type = 'walkstyle', ad = "move_m@bag", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk16', data = {type = 'walkstyle', ad = "MOVE_M@BAIL_BOND_NOT_TAZERED", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk17', data = {type = 'walkstyle', ad = "MOVE_M@BAIL_BOND_TAZERED", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk18', data = {type = 'walkstyle', ad = "move_m@brave", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk19', data = {type = 'walkstyle', ad = "move_m@casual@d", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk20', data = {type = 'walkstyle', ad = "move_m@drunk@moderatedrunk", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk21', data = {type = 'walkstyle', ad = "MOVE_M@DRUNK@MODERATEDRUNK", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk22', data = {type = 'walkstyle', ad = "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk23', data = {type = 'walkstyle', ad = "MOVE_M@DRUNK@SLIGHTLYDRUNK", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk24', data = {type = 'walkstyle', ad = "MOVE_M@DRUNK@VERYDRUNK", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk25', data = {type = 'walkstyle', ad = "move_m@fire", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk26', data = {type = 'walkstyle', ad = "move_m@gangster@var_e", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk27', data = {type = 'walkstyle', ad = "move_m@gangster@var_f", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk28', data = {type = 'walkstyle', ad = "move_m@gangster@var_i", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk29', data = {type = 'walkstyle', ad = "move_m@JOG@", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk30', data = {type = 'walkstyle', ad = "MOVE_M@PRISON_GAURD", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk31', data = {type = 'walkstyle', ad = "MOVE_P_M_ONE", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk32', data = {type = 'walkstyle', ad = "MOVE_P_M_ONE_BRIEFCASE", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk33', data = {type = 'walkstyle', ad = "move_p_m_zero_janitor", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk34', data = {type = 'walkstyle', ad = "move_p_m_zero_slow", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk35', data = {type = 'walkstyle', ad = "move_ped_bucket", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk36', data = {type = 'walkstyle', ad = "move_ped_mop", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk37', data = {type = 'walkstyle', ad = "MOVE_M@FEMME@", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk38', data = {type = 'walkstyle', ad = "MOVE_F@FEMME@", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk39', data = {type = 'walkstyle', ad = "MOVE_M@GANGSTER@NG", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk40', data = {type = 'walkstyle', ad = "MOVE_F@GANGSTER@NG", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk41', data = {type = 'walkstyle', ad = "MOVE_M@POSH@", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk42', data = {type = 'walkstyle', ad = "MOVE_F@POSH@", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk43', data = {type = 'walkstyle', ad = "MOVE_M@TOUGH_GUY@", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
    {name = 'walk44', data = {type = 'walkstyle', ad = "MOVE_F@TOUGH_GUY@", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'walk45', data = {type = "walkstyle", ad = "move_m@muscle@a", anim = "move_m@muscle@a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'walk46', data = {type = "walkstyle", ad = "move_m@hurry@a", anim = "move_m@hurry@a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
	{name = 'walk47', data = {type = "walkstyle", ad = "move_f@arrogant@a", anim = "move_f@arrogant@a", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 33, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},
}

--If you want to add more animations:

--anim | includes Animations + Prop
--prop | prop only
--scenario | I just use this to call 1 scenario, you can easily set it up to do any scenario

--Template:
--{name = '', data = {type = 'anim', ad = "", anim = "", prop = 0, proptwo = 0, boneone = nil, bonetwo = nil, body = 49, x = 0.0, y = 0.0, z = 0.0, xa = 0.0, yb = 0.0, zc = 0.0}},