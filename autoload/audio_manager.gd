extends Node

@onready var sfx_uitone_excited: AudioStreamPlayer = $SFX_UITONE_Excited
@onready var sfx_uitone_talking: AudioStreamPlayer = $SFX_UITONE_Talking
@onready var sfx_uitone_thinking: AudioStreamPlayer = $SFX_UITONE_Thinking
@onready var sfx_uitone_whisper: AudioStreamPlayer = $SFX_UITONE_Whisper
@onready var sfx_uitone_yelling: AudioStreamPlayer = $SFX_UITONE_Yelling
@onready var sfx_uitone_boop_left: AudioStreamPlayer = $SFX_UITONE_BoopLeft
@onready var sfx_uitone_boop_right: AudioStreamPlayer = $SFX_UITONE_BoopRight
@onready var sfx_uitone_chime_penny: AudioStreamPlayer = $SFX_UITONE_Chime_Penny
@onready var sfx_uitone_chime_trista: AudioStreamPlayer = $SFX_UITONE_Chime_Trista
@onready var hard_sfx_bed_cloth_rustle_1: AudioStreamPlayer = $HardSfxBedClothRustle1
@onready var hard_sfx_bed_cloth_rustle_2: AudioStreamPlayer = $HardSfxBedClothRustle2
@onready var hard_sfx_cafeteria_short_ambience: AudioStreamPlayer = $HardSfxCafeteriaShortAmbience
@onready var hard_sfx_foot_step_sequence_concrete: AudioStreamPlayer = $HardSfxFootStepSequenceConcrete
@onready var hard_sfx_foot_step_sequence_metal: AudioStreamPlayer = $HardSfxFootStepSequenceMetal
@onready var hard_sfx_hi_tech_metal_door: AudioStreamPlayer = $HardSfxHiTechMetalDoor
@onready var hard_sfx_wood_door: AudioStreamPlayer = $HardSfxWoodDoor
@onready var vo_penelope_serious_hmm: AudioStreamPlayer = $VO_PENELOPE_Serious_Hmm
@onready var vo_penelope_curious_hmm: AudioStreamPlayer = $VO_PENELOPE_Curious_Hmm
@onready var vo_penelope_curious_huh: AudioStreamPlayer = $VO_PENELOPE_Curious_Huh
@onready var vo_penelope_realize_huh: AudioStreamPlayer = $VO_PENELOPE_Realize_Huh
@onready var vo_penelope_realize_huh_2: AudioStreamPlayer = $VO_PENELOPE_Realize_Huh_2
@onready var vo_penelope_disbelief_what: AudioStreamPlayer = $VO_PENELOPE_Disbelief_What
@onready var vo_penelope_disbelief_what_2: AudioStreamPlayer = $VO_PENELOPE_Disbelief_What_2
@onready var vo_penelope_serious_what: AudioStreamPlayer = $VO_PENELOPE_Serious_What
@onready var vo_penelope_unsure_oh: AudioStreamPlayer = $VO_PENELOPE_Unsure_Oh
@onready var vo_penelope_realize_oh: AudioStreamPlayer = $VO_PENELOPE_Realize_Oh
@onready var vo_penelope_annoyed_oh: AudioStreamPlayer = $VO_PENELOPE_Annoyed_Oh
@onready var vo_penelope_sigh: AudioStreamPlayer = $VO_PENELOPE_Sigh
@onready var vo_penelope_sigh_2: AudioStreamPlayer = $VO_PENELOPE_Sigh_2
@onready var vo_penelope_sigh_3: AudioStreamPlayer = $VO_PENELOPE_Sigh_3
@onready var vo_penelope_yes_sigh: AudioStreamPlayer = $VO_PENELOPE_Yes_Sigh
@onready var vo_penelope_yes_sigh_2: AudioStreamPlayer = $VO_PENELOPE_Yes_Sigh_2
@onready var vo_penelope_yes_happy: AudioStreamPlayer = $VO_PENELOPE_Yes_Happy
@onready var vo_penelope_yes_happy_2: AudioStreamPlayer = $VO_PENELOPE_Yes_Happy_2
@onready var vo_penelope_ending_bad: AudioStreamPlayer = $VO_PENELOPE_Ending_Bad
@onready var vo_penelope_ending_neutral: AudioStreamPlayer = $VO_PENELOPE_Ending_Neutral
@onready var vo_penelope_ending_good: AudioStreamPlayer = $VO_PENELOPE_Ending_Good
@onready var vo_penelope_opening_idiot: AudioStreamPlayer = $VO_PENELOPE_Opening_Idiot
@onready var vo_penelope_opening_iron_capella: AudioStreamPlayer = $VO_PENELOPE_Opening_IronCapella
@onready var vo_penelope_opening_make_choice: AudioStreamPlayer = $VO_PENELOPE_Opening_MakeChoice
@onready var vo_penelope_scene_1_triss: AudioStreamPlayer = $VoPenelopeScene1Triss
@onready var vo_penelope_scene_2_strained_penelo_noises: AudioStreamPlayer = $VoPenelopeScene2StrainedPeneloNoises
@onready var vo_penelope_scene_3_just_wanted_to_say: AudioStreamPlayer = $VoPenelopeScene3JustWantedToSay
@onready var vo_penelope_scene_3_long_month_cheers: AudioStreamPlayer = $VoPenelopeScene3LongMonthCheers
@onready var vo_penelope_scene_3_what: AudioStreamPlayer = $VoPenelopeScene3What
@onready var vo_penelope_scene_4_im_done: AudioStreamPlayer = $VoPenelopeScene4ImDone
@onready var vo_penelope_scene_4_you_always_thought_simp: AudioStreamPlayer = $VoPenelopeScene4YouAlwaysThoughtSimp
@onready var vo_trista_efforts_ahck_1: AudioStreamPlayer = $VoTristaEffortsAhck1
@onready var vo_trista_efforts_ahck_2: AudioStreamPlayer = $VoTristaEffortsAhck2
@onready var vo_trista_efforts_ahck_3: AudioStreamPlayer = $VoTristaEffortsAhck3
@onready var vo_trista_efforts_grr_1: AudioStreamPlayer = $VoTristaEffortsGrr1
@onready var vo_trista_efforts_grr_2: AudioStreamPlayer = $VoTristaEffortsGrr2
@onready var vo_trista_efforts_grr_3: AudioStreamPlayer = $VoTristaEffortsGrr3
@onready var vo_trista_efforts_hmmm_1: AudioStreamPlayer = $VoTristaEffortsHmmm1
@onready var vo_trista_efforts_hmmm_2: AudioStreamPlayer = $VoTristaEffortsHmmm2
@onready var vo_trista_efforts_hmmm_3: AudioStreamPlayer = $VoTristaEffortsHmmm3
@onready var vo_trista_efforts_huh_1: AudioStreamPlayer = $VoTristaEffortsHuh1
@onready var vo_trista_efforts_huh_2: AudioStreamPlayer = $VoTristaEffortsHuh2
@onready var vo_trista_efforts_huh_3: AudioStreamPlayer = $VoTristaEffortsHuh3
@onready var vo_trista_efforts_kyah_1: AudioStreamPlayer = $VoTristaEffortsKyah1
@onready var vo_trista_efforts_kyah_2: AudioStreamPlayer = $VoTristaEffortsKyah2
@onready var vo_trista_efforts_kyah_3: AudioStreamPlayer = $VoTristaEffortsKyah3
@onready var vo_trista_efforts_laughs_in_hahas_1: AudioStreamPlayer = $VoTristaEffortsLaughsInHahas1
@onready var vo_trista_efforts_laughs_in_hahas_2: AudioStreamPlayer = $VoTristaEffortsLaughsInHahas2
@onready var vo_trista_efforts_laughs_in_hahas_3: AudioStreamPlayer = $VoTristaEffortsLaughsInHahas3
@onready var vo_trista_efforts_oh_1: AudioStreamPlayer = $VoTristaEffortsOh1
@onready var vo_trista_efforts_oh_2: AudioStreamPlayer = $VoTristaEffortsOh2
@onready var vo_trista_efforts_oh_3: AudioStreamPlayer = $VoTristaEffortsOh3
@onready var vo_trista_efforts_oh_4: AudioStreamPlayer = $VoTristaEffortsOh4
@onready var vo_trista_efforts_penelopeee_1: AudioStreamPlayer = $VoTristaEffortsPenelopeee1
@onready var vo_trista_efforts_penelopeee_2: AudioStreamPlayer = $VoTristaEffortsPenelopeee2
@onready var vo_trista_efforts_penelopeee_3: AudioStreamPlayer = $VoTristaEffortsPenelopeee3
@onready var vo_trista_efforts_penelope_stirling_1: AudioStreamPlayer = $VoTristaEffortsPenelopeStirling1
@onready var vo_trista_efforts_penelope_stirling_2: AudioStreamPlayer = $VoTristaEffortsPenelopeStirling2
@onready var vo_trista_efforts_penelope_stirling_3: AudioStreamPlayer = $VoTristaEffortsPenelopeStirling3
@onready var vo_trista_efforts_penelope_stirling_4: AudioStreamPlayer = $VoTristaEffortsPenelopeStirling4
@onready var vo_trista_efforts_pennyyy_1: AudioStreamPlayer = $VoTristaEffortsPennyyy1
@onready var vo_trista_efforts_pennyyy_2: AudioStreamPlayer = $VoTristaEffortsPennyyy2
@onready var vo_trista_efforts_pennyyy_3: AudioStreamPlayer = $VoTristaEffortsPennyyy3
@onready var vo_trista_efforts_pennyyy_4: AudioStreamPlayer = $VoTristaEffortsPennyyy4
@onready var vo_trista_efforts_sighs_1: AudioStreamPlayer = $VoTristaEffortsSighs1
@onready var vo_trista_efforts_sighs_2: AudioStreamPlayer = $VoTristaEffortsSighs2
@onready var vo_trista_efforts_sighs_3: AudioStreamPlayer = $VoTristaEffortsSighs3
@onready var vo_trista_efforts_trissss_1: AudioStreamPlayer = $VoTristaEffortsTrissss1
@onready var vo_trista_efforts_trissss_2: AudioStreamPlayer = $VoTristaEffortsTrissss2
@onready var vo_trista_efforts_trissss_3: AudioStreamPlayer = $VoTristaEffortsTrissss3
@onready var vo_trista_efforts_umm_1: AudioStreamPlayer = $VoTristaEffortsUmm1
@onready var vo_trista_efforts_umm_2: AudioStreamPlayer = $VoTristaEffortsUmm2
@onready var vo_trista_efforts_umm_3: AudioStreamPlayer = $VoTristaEffortsUmm3
@onready var vo_trista_efforts_umm_4: AudioStreamPlayer = $VoTristaEffortsUmm4
@onready var vo_trista_efforts_what_1: AudioStreamPlayer = $VoTristaEffortsWhat1
@onready var vo_trista_efforts_what_2: AudioStreamPlayer = $VoTristaEffortsWhat2
@onready var vo_trista_efforts_what_3: AudioStreamPlayer = $VoTristaEffortsWhat3
@onready var vo_trista_efforts_what_4: AudioStreamPlayer = $VoTristaEffortsWhat4
@onready var vo_trista_efforts_what_5: AudioStreamPlayer = $VoTristaEffortsWhat5
@onready var vo_trista_efforts_what_6: AudioStreamPlayer = $VoTristaEffortsWhat6
@onready var vo_trista_efforts_yeah_1: AudioStreamPlayer = $VoTristaEffortsYeah1
@onready var vo_trista_efforts_yeah_2: AudioStreamPlayer = $VoTristaEffortsYeah2
@onready var vo_trista_efforts_yeah_3: AudioStreamPlayer = $VoTristaEffortsYeah3
@onready var vo_trista_efforts_yeah_4: AudioStreamPlayer = $VoTristaEffortsYeah4
@onready var vo_trista_efforts_yeah_5: AudioStreamPlayer = $VoTristaEffortsYeah5
@onready var vo_trista_attention_protocol_1: AudioStreamPlayer = $VoTristaAttentionProtocol1
@onready var vo_trista_attention_protocol_2: AudioStreamPlayer = $VoTristaAttentionProtocol2
@onready var vo_trista_didnt_want_this_1: AudioStreamPlayer = $VoTristaDidntWantThis1
@onready var vo_trista_didnt_want_this_2: AudioStreamPlayer = $VoTristaDidntWantThis2
@onready var vo_trista_gasp_penelope_1: AudioStreamPlayer = $VoTristaGaspPenelope1
@onready var vo_trista_gasp_penelope_2: AudioStreamPlayer = $VoTristaGaspPenelope2
@onready var vo_trista_gasp_penelope_3: AudioStreamPlayer = $VoTristaGaspPenelope3
@onready var vo_trista_gasp_penny_1: AudioStreamPlayer = $VoTristaGaspPenny1
@onready var vo_trista_gasp_penny_2: AudioStreamPlayer = $VoTristaGaspPenny2
@onready var vo_trista_gasp_penny_3: AudioStreamPlayer = $VoTristaGaspPenny3
@onready var vo_trista_genuinely_friend_1: AudioStreamPlayer = $VoTristaGenuinelyFriend1
@onready var vo_trista_genuinely_friend_2: AudioStreamPlayer = $VoTristaGenuinelyFriend2
@onready var vo_trista_good_job_1: AudioStreamPlayer = $VoTristaGoodJob1
@onready var vo_trista_good_job_2: AudioStreamPlayer = $VoTristaGoodJob2
@onready var vo_trista_good_job_3: AudioStreamPlayer = $VoTristaGoodJob3
@onready var vo_trista_perfect_not_just_soldier_1: AudioStreamPlayer = $VoTristaPerfectNotJustSoldier1
@onready var vo_trista_perfect_not_just_soldier_2: AudioStreamPlayer = $VoTristaPerfectNotJustSoldier2
@onready var vo_trista_yawn_1: AudioStreamPlayer = $VoTristaYawn1
@onready var vo_trista_yawn_2: AudioStreamPlayer = $VoTristaYawn2
@onready var vo_instructor_20_dick_push_ups: AudioStreamPlayer = $VoInstructor20DickPushUps
@onready var vo_instructor_coveted_fire: AudioStreamPlayer = $VoInstructorCovetedFire
@onready var vo_instructor_good_work: AudioStreamPlayer = $VoInstructorGoodWork
@onready var vo_instructor_pay_attention: AudioStreamPlayer = $VoInstructorPayAttention
@onready var vo_instructor_repeat_sap: AudioStreamPlayer = $VoInstructorRepeatSap
@onready var vo_narrator_ending_bad: AudioStreamPlayer = $VoNarratorEndingBad
@onready var vo_narrator_ending_good: AudioStreamPlayer = $VoNarratorEndingGood
@onready var vo_narrator_ending_neutral: AudioStreamPlayer = $VoNarratorEndingNeutral
@onready var vo_narrator_scene_2_military_instructor: AudioStreamPlayer = $VoNarratorScene2MilitaryInstructor
@onready var vo_narrator_scene_3_cafeteria: AudioStreamPlayer = $VoNarratorScene3Cafeteria
@onready var vo_narrator_scene_4_bunker: AudioStreamPlayer = $VoNarratorScene4Bunker
@onready var music_ambient_theme_1: AudioStreamPlayer = $Music_AmbientTheme_1
@onready var music_ambient_theme_2: AudioStreamPlayer = $Music_AmbientTheme_2
@onready var music_ambient_theme_3: AudioStreamPlayer = $Music_AmbientTheme_3
@onready var music_ambient_theme_4: AudioStreamPlayer = $Music_AmbientTheme_4
