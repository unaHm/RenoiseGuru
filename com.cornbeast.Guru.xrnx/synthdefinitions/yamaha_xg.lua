return SynthDefinition {
    id = "yamaha_xg",
    name = "Yamaha XG",
    author = "unaHm",
    delay_between_midi_messages = 200,
    sysex_start_message = { 0xF0, 0x43, 0x10, 0x4C, 0x00, 0x00, 0x7E, 0x00, 0xF7 },
    sysex_start_message = { 0xF0, 0x43, 0x10, 0x4C, 0x00, 0x00, 0x7F, 0x00, 0xF7 },
    content_height = 800,
    local global_parameters = Group {
        name = "Parameters",
        Parameter { id = "prm_lfo_freq", name = "LFO Freq", type = "nn", number = 34, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "prm_lfo_pm_depth", name = "LFO PM Depth", type = "nn", number = 35, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "prm_feedback_level", name = "Feedback Level", type = "nn", number = 36, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "prm_delay_offset", name = "Delay Offset", type = "nn", number = 37, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "prm_eq_low_freq", name = "EQ Low Freq", type = "nn", number = 39, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "prm_eq_low_gain", name = "EQ Low Gain", type = "nn", number = 40, display_min_value = 52, display_max_value = 77 },
        Parameter { id = "prm_eq_hi_freq", name = "EQ High Freq", type = "nn", number = 41, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "prm_eq_hi_gain", name = "EQ High Gain", type = "nn", number = 42, display_min_value = 52, display_max_value = 77 },
        Parameter { id = "prm_mix", name = "Dry / Wet", type = "nn", number = 43, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "prm_chorus_return", name = "Chorus Return", type = "nn", number = 44, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "prm_chorus_pan", name = "Chorus Pan", type = "nn", number = 45, display_min_value = -64, display_max_value = 64, default_value = 0 },
        Parameter { id = "prm_send", name = "Chorus -> Reverb Send Level", type = "nn", number = 46, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "prm_input", name = "Input Type", type = "nn", number = 52, items = {"Mono","Stereo"}, item_values = {0,1} },
        Parameter { id = "prm_lfo_phasediff", name = "LFO Phase Diff.", type = "nn", number = 51, display_min_value = 4, display_max_value = 124 }

    },
    Section {
        name = "MIDI CC",
        Group {
            name = "Controllers",
               Parameter { id = "modulation", name = "Modulation", type = "cc", number = 1, display_min_value = 0, display_max_value = 127, default_value = 0},
               Parameter { id = "portamento_time", name = "Portamento Time", type = "cc", number = 5, display_min_value = 0, display_max_value = 127},
               Parameter { id = "main_volume", name = "Main Volume", type = "cc", number = 7, display_min_value = 0, display_max_value = 127, default_value = 127},
               Parameter { id = "pan", name = "Pan", type = "cc", number = 10, display_min_value = 0, display_max_value = 127, default_value = 64},
               Parameter { id = "expression", name = "Expression", type = "cc", number = 11, display_min_value = 0, display_max_value = 127, default_value = 127},
               Parameter { id = "bank_msb", name = "Bank MSB", type = "cc", number = 0, display_min_value = 0, display_max_value = 127},
               Parameter { id = "msb_data_entry", name = "MSB Data Entry", type = "cc", number = 6, display_min_value = 0, display_max_value = 127},
               Parameter { id = "bank_lsb", name = "Bank LSB", type = "cc", number = 32, display_min_value = 0, display_max_value = 127},
               Parameter { id = "lsb_data_entry", name = "LSB Data Entry", type = "cc", number = 38, display_min_value = 0, display_max_value = 127},
               Parameter { id = "sustain_hold", name = "Sustain Hold", type = "cc", number = 64, items = {"Off","On"}, item_values = {40,127}, default_value = 1},
               Parameter { id = "portamento_switch", name = "Portamento Switch", type = "cc", number = 65, items = {"Off","On"}, item_values = {40,127}, default_value = 1},
               Parameter { id = "portamento_control", name = "Portamento Control", type = "cc", number = 38, display_min_value = 0, display_max_value = 127, default_value = 0},
               Parameter { id = "sostenuto_switch", name = "Sostenuto Switch", type = "cc", number = 66, items = {"Off","On"}, item_values = {40,127}, default_value = 1},
               Parameter { id = "soft_pedal", name = "Soft Pedal", type = "cc", number = 67, items = {"Off","On"}, item_values = {40,127}, default_value = 1}
            },
        Group {
            name = "RPN/NRPN",
                Parameter { id = "data_increment", name = "Data Increment", number = 96, items = {"0","127"}, item_values = {0,127}},
                Parameter { id = "data_decrement", name = "Data Decrement", number = 97, items = {"0","127"}, item_values = {0,127}},
                Parameter { id = "nrpn_lsb", name = "NRPN LSB", type = "cc", number = 98, display_min_value = 0, display_max_value = 127},
                Parameter { id = "nrpn_msb", name = "NRPN MSB", type = "cc", number = 99, display_min_value = 0, display_max_value = 127},
                Parameter { id = "rpn_lsb", name = "RPN LSB", type = "cc", number = 100, display_min_value = 0, display_max_value = 127},
                Parameter { id = "rpn_msb", name = "RPN MSB", type = "cc", number = 101, display_min_value = 0, display_max_value = 127}
            },
        Group {
            name = "Global Controllers",
               Parameter { id = "all_sounds_off", name = "All Sounds Off", number = 120, items = {"Off"}, item_values = {0}},
               Parameter { id = "reset_all_controllers", name = "Reset All Controllers", number = 121, items = {"Reset"}, item_values = {127}},
               Parameter { id = "all_notes_off", name = "All Notes Off", number = 123, items = {"Off"}, item_values = {0}},
               Parameter { id = "omni_off", name = "Omni Off", number = 124, items = {"Off"}, item_values = {0}},
               Parameter { id = "omni_on", name = "Omni On", number = 125, items = {"On"}, item_values = {0}},
               Parameter { id = "mono_on", name = "Mono On", number = 126, display_min_value = 0, display_max_value = 16},
               Parameter { id = "poly_on", name = "Poly On", number = 127, items = {"On"}, item_values = {0}}
            },
        Group {
            name = "Filter",
               Parameter { id = "cutoff", name = "Cutoff", type = "cc", number = 74, display_min_value = 0, display_max_value = 127, default_value = 127},
               Parameter { id = "resonance", name = "Resonance", type = "cc", number = 71, display_min_value = 0, display_max_value = 127, default_value = 0}
             },
        Group {
            name = "Amplitude",
               Parameter { id = "attack_time", name = "Attack Time", type = "cc", number = 73, display_min_value = 0, display_max_value = 127, default_value = 0},
               Parameter { id = "release_time", name = "Release Time", type = "cc", number = 72, display_min_value = 0, display_max_value = 127, default_value = 0}
              }
            },
    Section {
        name = "Global Effects",
        sysex_message_template = {0xF0,0x43,0x10,0x4C,0x02,0x01,"nn","vv",0x7F,0xF7},
        Group {
            name = "Global Effects",
                Parameter { id = "reverb_switch", name = "Reverb", number = 00, items = {"Off","On"}, item_values = {0,1}},
                Parameter { id = "chorus_switch", name = "Chorus", number = 32, items = {"Off","On"}, item_values = {0,65} },
                Parameter { id = "chorus_depth", name = "Chorus Depth", type = "cc", number = 93, display_min_value = 0, display_max_value = 127, default_value = 0},
                Parameter { id = "reverb_depth", name = "Reverb Depth", type = "cc", number = 91, display_min_value = 0, display_max_value = 127, default_value = 0},
                Parameter { id = "variation_depth", name = "Variation Depth", type = "cc", number = 94, display_min_value = 0, display_max_value = 127, default_value = 0}
           },
           Group {
            name = "Reverb",
            sysex_message_template = {0xF0, 0x43, 0x10, 0x4C, 0x02, 0x01, 0x00, "nn", "vv", 0xF7},
            Parameter { id = "hall_rev", name = "Hall", number = 1, items = {"1","2","3"}, item_values = {0,1,2}},
            Parameter { id = "room_rev", name = "Room", number = 2, items = {"1","2","3"}, item_values = {0,1,2}},
            Parameter { id = "stage_rev", name = "Stage", number = 3, items = {"1","2"}, item_values = {0,1}},
            Parameter { id = "plate_rev", name = "Plate", number = 4, items = {"1"}, item_values = {0}},
            Parameter { id = "whiteroom_rev", name = "White Room", number = 16, items = {"1"}, item_values = {0}},
            Parameter { id = "tunnel_rev", name = "Tunnel", number = 17, items = {"1"}, item_values = {0}},
            Parameter { id = "basement_rev", name = "Basement", number = 19, items = {"1"}, item_values = {0}}
        },
        Group {
            name = "Reverb Parameters",
            sysex_message_template = {0xF0, 0x43, 0x10, 0x4C, 0x02, 0x01, "nn", "vv", 0xF7},
            Parameter { id = "rev_time", name = "Time", type = "nn", number = 2, display_min_value = 0, display_max_value = 69 },
            Parameter { id = "rev_diffusion", name = "Diffusion", type = "nn", number = 3, display_min_value = 0, display_max_value = 10 },
            Parameter { id = "rev_initial_delay", name = "Initial Delay", type = "nn", number = 4, display_min_value = 0, display_max_value = 63 },
            Parameter { id = "rev_hpf_cutoff", name = "HPF Cutoff", type = "nn", number = 5, display_min_value = 0, display_max_value = 48 },
            Parameter { id = "rev_lpf_cutoff", name = "LPF Cutoff", type = "nn", number = 6, display_min_value = 0, display_max_value = 59 },
            Parameter { id = "rev_mix", name = "Dry / Wet", type = "nn", number = 11, display_min_value = 0, display_max_value = 127 },
            Parameter { id = "rev_return", name = "Return", type = "nn", number = 12, display_min_value = 0, display_max_value = 127 },
            Parameter { id = "rev_pan", name = "Pan", type = "nn", number = 13, display_min_value = -64, display_max_value = 127, default_value = 0 },
            Parameter { id = "rev_delay", name = "Delay", type = "nn", number = 16, display_min_value = 0, display_max_value = 63 },
            Parameter { id = "rev_density", name = "Density", type = "nn", number = 17, display_min_value = 0, display_max_value = 04 },
            Parameter { id = "rev_er_revbal", name = "Early Reflection/ Reverb Balance", type = "nn", number = 18, display_min_value = 00, display_max_value = 127 },
            Parameter { id = "rev_feedback", name = "Feedback", type = "nn", number = 20, display_min_value = 0, display_max_value = 127 }
        },
        Group {
            name = "Chorus/Celeste/Flanger",
            sysex_message_template = {0xF0, 0x43, 0x10, 0x4C, 0x02, 0x01, 0x20, "nn", "vv", 0xF7},
            Parameter { id = "chorus", name = "Chorus", number = 65, items = {"1","2","3","4"}, item_values = {0,1,2,8}},
            Parameter { id = "celeste", name = "Celeste", number = 66, items = {"1","2","3","4"}, item_values = {0,1,2,8}},
            Parameter { id = "flanger", name = "Flanger", number = 67, items = {"1","2","3","4"}, item_values = {0,1,2,8}},
            global_parameters
        }
     },
    Section {
    name = "Variation Effects",
    local var_common = Group {
        Parameter { id = "var_mix", name = "Dry / Wet", type = "nn", number = 84 display_min_value = 1, display_max_value = 127 },
        Parameter { id = "var_return", name = "Return", type = "nn", number = 86 display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_pan", name = "Pan", type = "nn", number = 87 display_min_value = -64, display_max_value = 64, default_value = 64 },
        Parameter { id = "var_send_to_rev", name = "Send to Global Reverb", type = "nn", number = 88, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_send_to_chorus", name = "Send to Global Chorus", type = "nn", number = 89, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_connect", name = "Connect", type = "nn", number = 90, items = {"Insert","System"}, item_values = {0,1} },
        Parameter { id = "var_part", name = "Part", type = "nn", number = 91 display_min_value = 0, display_max_value = 16 },
        Parameter { id = "var_mw_ctrldepth", name = "Mod Wheel Controller Depth", type = "nn", number = 92, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_bnd_ctrldepth", name = "Pitch Bend Controller Depth", type = "nn", number = 93, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_cat_ctrldepth", name = "Cat Controller Depth", type = "nn", number = 94, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_ac1_ctrldepth", name = "AC1 Controller Depth", type = "nn", number = 95, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_ac2_ctrldepth", name = "AC2 Controller Depth", type = "nn", number = 96, display_min_value = 0, display_max_value = 127 },
    },
    local var_common_eq = Group {
        Parameter { id = "var_low_freq", name = "EQ Low Freq.", type = "nn", number = 114, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_low_gain", name = "EQ Low Gain", type = "nn", number = 115, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_hi_freq", name = "EQ High Freq.", type = "nn", number = 116, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_hi_gain", name = "EQ High Gain", type = "nn", number = 117, display_min_value = 52, display_max_value = 76 },
    },
    sysex_message_template = {0xF0, 0x43, 0x10, 0x4C, 0x02, 0x01, 0x40, "nn", "vv", 0xF7},
    Group {
        name = "Reverb",
        Parameter { id = "hall_rev", name = "Hall", number = 1, items = {"1","2","3"}, item_values = {0,1,2}},
        Parameter { id = "room_rev", name = "Room", number = 2, items = {"1","2","3"}, item_values = {0,1,2}},
        Parameter { id = "stage_rev", name = "Stage", number = 3, items = {"1","2"}, item_values = {0,1}},
        Parameter { id = "plate_rev", name = "Plate", number = 4, items = {"1"}, item_values = {0}}
    },
    Group {
        name = "Reverb Parameters",
        Parameter { id = "var_rev_time", name = "Reverb Time", type = "nn", number = 66, display_min_value = 0, display_max_value = 69 },
        Parameter { id = "var_rev_diffusion", name = "Diffusion", type = "nn", number = 68, display_min_value = 0, display_max_value = 10 },
        Parameter { id = "var_rev_init_delay", name = "Initial Delay", type = "nn", number = 70, display_min_value = 0, display_max_value = 63 },
        Parameter { id = "var_rev_hpfcutoff", name = "HPF Cutoff", type = "nn", number = 72, display_min_value = 0, display_max_value = 52 },
        Parameter { id = "var_rev_lpfcutoff", name = "LPF Cutoff", type = "nn", number = 74, display_min_value = 34, display_max_value = 60 },
        Parameter { id = "var_rev_delay", name = "Delay", type = "nn", number = 112, display_min_value = 0, display_max_value = 63 },
        Parameter { id = "var_rev_density", name = "Density", type = "nn", number = 113, display_min_value = 0, display_max_value = 4 },
        Parameter { id = "var_rev_er_revbal", name = "Early Reflection/ Reverb Balance", type = "nn", number = 114, display_min_value = 00, display_max_value = 127 },
        Parameter { id = "var_rev_feedback", name = "Feedback", type = "nn", number = 116, display_min_value = 0, display_max_value = 127 },
        var_common,
        var_common_eq
    },
    Group {
        name = "Delay",
        Parameter { id = "lcr_dly", name = "Delay LCR", number = 5, items = {"Delay LCR"}, item_values = {0}},
        Parameter { id = "dly", name = "Delay", number = 6, items = {"Delay"}, item_values = {0}}
    },
    Group {
        name = "Delay Parameters",
        Parameter { id = "var_delay_lch_delay", name = "Left Channel Delay", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_delay_rch_delay", name = "Right Channel Delay", type = "nn", number = 68, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_delay_cch_delay", name = "Centre Channel Delay", type = "nn", number = 70, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_delay_feedback_delay", name = "Feedback Delay", type = "nn", number = 72, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_delay_feedback_level", name = "Feedback Level", type = "nn", number = 74, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_delay_cch_level", name = "Centre Channel Level", type = "nn", number = 76, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_delay_highdamp", name = "High Damping", type = "nn", number = 78, display_min_value = 1, display_max_value = 10 },
        var_common,
        var_common_eq
    },
    Group {
        name = "Echo",
        Parameter { id = "echo", name = "Echo", number = 7, items = {"Echo"}, item_values = {0}}
    },
    Group {
        name = "Echo Parameters",
        Parameter { id = "var_echo_lch_delay1", name = "Left Channel Delay 1", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_echo_lch_feedback", name = "Left Channel Feedback Level", type = "nn", number = 68, display_min_value = 1, display_max_value = 127 },
        Parameter { id = "var_echo_rch_delay1", name = "Right Channel Delay 1", type = "nn", number = 70, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_echo_rch_feedback", name = "Right Channel Feedback Level", type = "nn", number = 72, display_min_value = 1, display_max_value = 127 },
        Parameter { id = "var_echo_highdamp", name = "High Damping", type = "nn", number = 74, display_min_value = 1, display_max_value = 10 },
        Parameter { id = "var_echo_lch_delay2", name = "Left Channel Delay 2", type = "nn", number = 76, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_echo_rch_delay2", name = "Right Channel Delay 2", type = "nn", number = 78, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_echo_delay2_level", name = "Delay 2 Level", type = "nn", number = 80, display_min_value = 0, display_max_value = 127 },
        var_common,
        var_common_eq
    },
    Group {
        name = "Cross Delay",
        Parameter { id = "cross_dly", name = "Cross Delay", number = 8, items = {"Cross Delay"}, item_values = {0}}
    },
    Group {
        name = "Cross Delay Parameters",
        Parameter { id = "var_crossdelay_l2r_delay", name = "Left to Right Delay", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_crossdelay_r2l_delay", name = "Right to Left Delay", type = "nn", number = 68, display_min_value = 1, display_max_value = 127 },
        Parameter { id = "var_crossdelay_feedback", name = "Feedback Level", type = "nn", number = 70, display_min_value = 1, display_max_value = 127 },
        Parameter { id = "var_crossdelay_input", name = "Input", type = "nn", number = 72, items = {"Left","Right","Left/Right"}, item_values = {0,1,2} },
        Parameter { id = "var_crossdelay_highdamp", name = "High Damping", type = "nn", number = 74, display_min_value = 1, display_max_value = 10 },
        var_common,
        var_common_eq
    },
    Group {
        name = "Early Reflection",
        Parameter { id = "var_er", name = "Early Reflection", number = 9, items = {"Early Reflection"}, item_values = {0}}
    },
    Group {
        name = "Early Reflection Parameters",
        Parameter { id = "var_er_type", name = "ER Type", type = "nn", number = 66, items = {"SH","LH","Rdm","Rvs","Plt","Spr"}, item_values = {0,1,2,3,4,5} },
        Parameter { id = "var_er_roomsize", name = "Room Size", type = "nn", number = 68, display_min_value = 0, display_max_value = 44 },
        Parameter { id = "var_er_diffusion", name = "Diffusion", type = "nn", number = 70, display_min_value = 0, display_max_value = 10 },
        Parameter { id = "var_er_init_delay", name = "Initial Delay", type = "nn", number = 72, display_min_value = 0, display_max_value = 63 },
        Parameter { id = "var_er_feedback", name = "Feedback", type = "nn", number = 74, display_min_value = 1, display_max_value = 127 },
        Parameter { id = "var_er_hpfcutoff", name = "HPF Cutoff", type = "nn", number = 76, display_min_value = 0, display_max_value = 52 },
        Parameter { id = "var_er_lpfcutoff", name = "LPF Cutoff", type = "nn", number = 78, display_min_value = 34, display_max_value = 60 },
        Parameter { id = "var_er_liveness", name = "Liveness", type = "nn", number = 112, display_min_value = 0, display_max_value = 10 },
        Parameter { id = "var_er_density", name = "Density", type = "nn", number = 113, display_min_value = 0, display_max_value = 4 },
        Parameter { id = "var_er_highdamp", name = "High Damping", type = "nn", number = 114, display_min_value = 1, display_max_value = 10 },
        var_common,
        var_common_eq
    },
    Group {
        name = "Gate Reverb / Reverse Gate",
        Parameter { id = "var_gr", name = "Gate Reverb", number = 10, items = {"Gate Reverb"}, item_values = {0}},
        Parameter { id = "var_rg", name = "Reverse Gate", number = 11, items = {"Reverse Gate"}, item_values = {0}}
    },
    Group {
        name = "Gated Reverb Parameters",
        Parameter { id = "var_gr_type", name = "Type", type = "nn", number = 66, items = {"A","B"}, item_values = {0,1} },
        Parameter { id = "var_gr_roomsize", name = "Room Size", type = "nn", number = 68, display_min_value = 0, display_max_value = 44 },
        Parameter { id = "var_gr_diffusion", name = "Diffusion", type = "nn", number = 70, display_min_value = 0, display_max_value = 10 },
        Parameter { id = "var_gr_init_delay", name = "Initial Delay", type = "nn", number = 72, display_min_value = 0, display_max_value = 63 },
        Parameter { id = "var_gr_feedback", name = "Feedback", type = "nn", number = 74, display_min_value = 1, display_max_value = 127 },
        Parameter { id = "var_gr_hpfcutoff", name = "HPF Cutoff", type = "nn", number = 76, display_min_value = 0, display_max_value = 52 },
        Parameter { id = "var_gr_lpfcutoff", name = "LPF Cutoff", type = "nn", number = 78, display_min_value = 34, display_max_value = 60 },
        Parameter { id = "var_gr_liveness", name = "Liveness", type = "nn", number = 112, display_min_value = 0, display_max_value = 10 },
        Parameter { id = "var_gr_density", name = "Density", type = "nn", number = 113, display_min_value = 0, display_max_value = 4 },
        Parameter { id = "var_gr_highdamp", name = "High Damping", type = "nn", number = 114, display_min_value = 1, display_max_value = 10 },
        var_common,
        var_common_eq
    },
    Group {
        name = "Celeste",
        Parameter { id = "var_celeste", name = "Celeste", number = 66, items = {"1","2","3","4"}, item_values = {0,1,2,8}}
    },
    Group {
        name = "Celeste Parameters",
        Parameter { id = "var_celeste_type", name = "LFO Freq.", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_celeste_pm_depth", name = "LFO PM Depth", type = "nn", number = 68, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_celeste_fb_level", name = "Feedback Level", type = "nn", number = 70, display_min_value = 1, display_max_value = 127 },
        Parameter { id = "var_celeste_delay", name = "Delay Offset", type = "nn", number = 72, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_celeste_low_freq", name = "EQ Low Freq.", type = "nn", number = 76, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_celeste_low_gain", name = "EQ Low Gain", type = "nn", number = 78, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_celeste_hi_freq", name = "EQ High Freq.", type = "nn", number = 80, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_celeste_hi_gain", name = "EQ High Gain", type = "nn", number = 82, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_celeste_input", name = "Input Type", type = "nn", number = 116, items = {"Mono","Stereo"}, item_values = {0,1} },
        var_common
    },
    Group {
        name = "Flanger",
        Parameter { id = "var_flanger", name = "Flanger", number = 67, items = {"1","2","3"}, item_values = {0,1,8}}
    },
    Group {
        name = "Flanger Parameters",
        Parameter { id = "var_flanger_lfo_freq", name = "LFO Freq.", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_flanger_lfo_depth", name = "LFO Depth", type = "nn", number = 68, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_flanger_fb_level", name = "Feedback Level", type = "nn", number = 70, display_min_value = 1, display_max_value = 127 },
        Parameter { id = "var_flanger_delay", name = "Delay Offset", type = "nn", number = 72, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_flanger_low_freq", name = "EQ Low Freq.", type = "nn", number = 76, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_flanger_low_gain", name = "EQ Low Gain", type = "nn", number = 78, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_flanger_hi_freq", name = "EQ High Freq.", type = "nn", number = 80, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_flanger_hi_gain", name = "EQ High Gain", type = "nn", number = 82, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_flanger_phasediff", name = "LFO Phase", type = "nn", number = 115, display_min_value = 4, display_max_value = 124 },
        var_common
    },
    Group {
        name = "Symphonic",
        Parameter { id = "var_smyphonic", name = "Symphonic", number = 68, items = {"Symphonic"}, item_values = {0}}
    },
    Group {
        name = "Symphonic Parameters",
        Parameter { id = "var_symphonic_lfo_freq", name = "LFO Freq.", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_symphonic_lfo_depth", name = "LFO Depth", type = "nn", number = 68, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_symphonic_delay", name = "Delay Offset", type = "nn", number = 70, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_symphonic_low_freq", name = "EQ Low Freq.", type = "nn", number = 76, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_symphonic_low_gain", name = "EQ Low Gain", type = "nn", number = 78, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_symphonic_hi_freq", name = "EQ High Freq.", type = "nn", number = 80, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_symphonic_hi_gain", name = "EQ High Gain", type = "nn", number = 82, display_min_value = 52, display_max_value = 76 },
        var_common
    },
    Group {
        name = "Rotary Speaker",
        Parameter { id = "var_rotary", name = "Rotary Speaker", number = 69, items = {"Rotary Speaker"}, item_values = {0}}
    },
    Group {
        name = "Rotary Speaker Parameters",
        Parameter { id = "var_rotary_lfo_freq", name = "LFO Freq.", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_rotary_lfo_depth", name = "LFO Depth", type = "nn", number = 68, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_rotary_low_freq", name = "EQ Low Freq.", type = "nn", number = 76, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_rotary_low_gain", name = "EQ Low Gain", type = "nn", number = 78, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_rotary_hi_freq", name = "EQ High Freq.", type = "nn", number = 80, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_rotary_hi_gain", name = "EQ High Gain", type = "nn", number = 82, display_min_value = 52, display_max_value = 76 },
        var_common
    },
    Group {
        name = "Tremelo",
        Parameter { id = "var_tremelo", name = "Tremelo", number = 70, items = {"Tremelo"}, item_values = {0}}
    },
    Group {
        name = "Tremelo Parameters",
        Parameter { id = "var_tremelo_lfo_freq", name = "LFO Freq.", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_tremelo_am_depth", name = "AM Depth", type = "nn", number = 68, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_tremelo_pm_depth", name = "PM Depth", type = "nn", number = 70, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_tremelo_low_freq", name = "EQ Low Freq.", type = "nn", number = 76, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_tremelo_low_gain", name = "EQ Low Gain", type = "nn", number = 78, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_tremelo_hi_freq", name = "EQ High Freq.", type = "nn", number = 80, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_tremelo_hi_gain", name = "EQ High Gain", type = "nn", number = 82, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_tremelo_phasediff", name = "LFO Phase", type = "nn", number = 115, display_min_value = 4, display_max_value = 124 },
        Parameter { id = "var_tremelo_input", name = "Input Type", type = "nn", number = 116, items = {"Mono","Stereo"}, item_values = {0,1} },
        var_common
    },
    Group {
        name = "Auto Pan",
        Parameter { id = "var_autopan", name = "Auto Pan", number = 71, items = {"Auto Pan"}, item_values = {0}}
    },
    Group {
        name = "AutoPan Parameters",
        Parameter { id = "var_autopan_lfo_freq", name = "LFO Freq.", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_autopan_lr_depth", name = "L/R Depth", type = "nn", number = 68, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_autopan_fr_depth", name = "F/R Depth", type = "nn", number = 70, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_autopan_direction", name = "Direction", type = "nn", number = 72, items = {"L<>R","L>R","R>L","Lturn","Rturn","L.R"}, item_values = {0,1,2,3,4,5}, gui_type = "dropdown" },
        Parameter { id = "var_autopan_low_freq", name = "EQ Low Freq.", type = "nn", number = 76, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_autopan_low_gain", name = "EQ Low Gain", type = "nn", number = 78, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_autopan_hi_freq", name = "EQ High Freq.", type = "nn", number = 80, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_autopan_hi_gain", name = "EQ High Gain", type = "nn", number = 82, display_min_value = 52, display_max_value = 76 },
        var_common
    },
    Group {
        name = "Phaser",
        Parameter { id = "var_phaser", name = "Phaser", number = 67, items = {"1","2"}, item_values = {0,8}}
    },
    Group {
        name = "Phaser Parameters",
        Parameter { id = "var_phaser_lfo_freq", name = "LFO Freq.", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_phaser_am_depth", name = "LFO Depth", type = "nn", number = 68, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_phaser_phase_shift_offset", name = "Phase Shift Offset", type = "nn", number = 70, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_phaser_phase_feedback_level", name = "Feedback Level", type = "nn", number = 72, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_phaser_stage", name = "Stage", type = "nn", number = 112, display_min_value = 3, display_max_value = 10 },
        Parameter { id = "var_phaser_low_freq", name = "EQ Low Freq.", type = "nn", number = 76, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_phaser_low_gain", name = "EQ Low Gain", type = "nn", number = 78, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_phaser_hi_freq", name = "EQ High Freq.", type = "nn", number = 80, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_phaser_hi_gain", name = "EQ High Gain", type = "nn", number = 82, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_phaser_diffusion", name = "Diffusion", type = "nn", number = 113, display_min_value = 0, display_max_value = 1 },
        Parameter { id = "var_phaser_phasediff", name = "LFO Phase", type = "nn", number = 114, display_min_value = 4, display_max_value = 124 },
        var_common
    },
    Group {
        name = "Distortion / Overdrive",
        Parameter { id = "var_dist", name = "Distortion", number = 73, items = {"Distortion"}, item_values = {0}},
        Parameter { id = "var_odr", name = "Overdrive", number = 74, items = {"Overdrive"}, item_values = {0}}
    },
    Group {
        name = "Distortion Parameters",
        Parameter { id = "var_dist_drive", name = "Drive", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_dist_low_freq", name = "EQ Low Freq.", type = "nn", number = 68, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_dist_low_gain", name = "EQ Low Gain", type = "nn", number = 70, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_dist_lpf_cutoff", name = "LPF Cutoff", type = "nn", number = 72, display_min_value = 34, display_max_value = 60 },
        Parameter { id = "var_dist_level", name = "Output Level", type = "nn", number = 74, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_dist_mid_freq", name = "EQ Mid Freq.", type = "nn", number = 78, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_dist_mid_gain", name = "EQ Mid Gain", type = "nn", number = 80, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_dist_mid_width", name = "EQ Mid Width", type = "nn", number = 82, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_dist_edge", name = "Edge / Clip Curve", type = "nn", number = 112, display_min_value = 0, display_max_value = 127 },
        var_common
    },
    Group {
        name = "Guitar Amp",
        Parameter { id = "var_gtramp", name = "Guitar Amp", number = 75, items = {"Guitar Amp"}, item_values = {0}}
    },
    Group {
        name = "Guitar Amp Parameters",
        Parameter { id = "var_gtramp_drive", name = "Drive", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_gtramp_type", name = "Type", type = "nn", number = 68, items = {"Off","Stack","Cmbo","Tube"}, item_values = {0,1,2,3} },
        Parameter { id = "var_gtramp_lpf_cutoff", name = "LPF Cutoff", type = "nn", number = 70, display_min_value = 34, display_max_value = 60 },
        Parameter { id = "var_gtramp_level", name = "Output Level", type = "nn", number = 72, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_gtramp_edge", name = "Edge / Clip Curve", type = "nn", number = 112, display_min_value = 0, display_max_value = 127 },
        var_common
    },
    Group {
        name = "Auto Wah",
        Parameter { id = "var_autowah", name = "Auto Wah", number = 78, items = {"Auto Wah"}, item_values = {0}}
    },
    Group {
        name = "Auto Wah Parameters",
        Parameter { id = "var_autowah_lfo_freq", name = "LFO Freq.", type = "nn", number = 66, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_autowah_am_depth", name = "LFO Depth", type = "nn", number = 68, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_autowah_cutoff_freq_offset", name = "Cutoff Freq. Offset", type = "nn", number = 70, display_min_value = 0, display_max_value = 127 },
        Parameter { id = "var_autowah_resonance", name = "Resonance", type = "nn", number = 72, display_min_value = 10, display_max_value = 120 },
        Parameter { id = "var_autowah_low_freq", name = "EQ Low Freq.", type = "nn", number = 76, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_autowah_low_gain", name = "EQ Low Gain", type = "nn", number = 78, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_autowah_hi_freq", name = "EQ High Freq.", type = "nn", number = 80, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_autowah_hi_gain", name = "EQ High Gain", type = "nn", number = 82, display_min_value = 52, display_max_value = 76 },
        var_common
    },
    Group {
        name = "3-Band EQ",
        Parameter { id = "var_3beq", name = "3-Band EQ", number = 76, items = {"3-Band EQ"}, item_values = {0}}
    },
    Group {
        name = "3-Band EQ Parameters",
        Parameter { id = "var_3beq_low_freq", name = "EQ Low Freq", type = "nn", number = 76, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_3beq_low_gain", name = "EQ Low Gain", type = "nn", number = 66, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_3beq_mid_freq", name = "EQ Mid Freq.", type = "nn", number = 68, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_3beq_mid_gain", name = "EQ Mid Gain", type = "nn", number = 70, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_3beq_mid_width", name = "EQ Mid Width", type = "nn", number = 72, display_min_value = 10, display_max_value = 124 },
        Parameter { id = "var_3beq_hi_freq", name = "EQ High Gain", type = "nn", number = 74, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_3beq_hi_gain", name = "EQ High Freq.", type = "nn", number = 78, display_min_value = 28, display_max_value = 58 },
        var_common
    },
    Group {
        name = "2-Band EQ",
        Parameter { id = "var_2beq", name = "2-Band EQ", number = 77, items = {"2-Band EQ"}, item_values = {0}}
    },

    Group {
        name = "2-Band EQ Parameters",
        Parameter { id = "var_2beq_low_freq", name = "EQ Low Freq.", type = "nn", number = 66, display_min_value = 8, display_max_value = 40 },
        Parameter { id = "var_2beq_low_gain", name = "EQ Low Gain", type = "nn", number = 68, display_min_value = 52, display_max_value = 76 },
        Parameter { id = "var_2beq_hi_freq", name = "EQ High Freq.", type = "nn", number = 70, display_min_value = 28, display_max_value = 58 },
        Parameter { id = "var_2beq_hi_gain", name = "EQ High Gain", type = "nn", number = 72, display_min_value = 52, display_max_value = 76 },
        var_common
    }
}
}