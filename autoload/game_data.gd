extends Node

const PAGE_1 = [
	[
		"Panels/P1",
		"Panels/T1",
		"Panels/P2",
		"Panels/T2",
		"Panels/P3",
		"Panels/T3",
		"half",
		"Panels/P4",
		"Panels/T4",
		"Panels/P5",
		"Panels/T5",
		"Panels/P6",
		"Panels/T6",
		"end",
	]
]
const PAGE_2 = [
	[
		"Panels/T1",
		"Panels/P1",
		"Panels/T2",
		"Panels/P2",
		"Panels/P3",
		"Panels/C1",
		"half",
		"Panels/P4",
		"Panels/P5",
		"Panels/T4",
		"Panels/P6",
		"Panels/T5",
		"Panels/P8",
		"Panels/T6",
		"Panels/T7",
		"Panels/PennyPortraitFrame",
		"end",
	]
]
const PAGE_3 = [
	[
		"MilitaryInstructor1",
		"MilitaryInstructor2",
		"MilitaryInstructor3",
		"MilitaryInstructor3Text1",
		"half",
		"MilitaryInstructor4",
		"MilitaryInstructor4Text1",
		"MilitaryInstructor5",
		"Decision",
	],
	[
		"MilitaryInstructorB6",
		"MilitaryInstructorB7",
		"MilitaryInstructorB8",
		"end",
	],
	[
		"MilitaryInstructorG6",
		"MilitaryInstructorG7",
		"MilitaryInstructorG8",
		"end",
	],
	[
		"MilitaryInstructorN6",
		"end",
	],
]

const PAGE_4B = [
	[
		"Panels/BadLibrary1",
		"Panels/BadLibrary2",
		"Panels/BadLibrary1Text1",
		"Panels/BadLibrary3",
		"Panels/BadLibrary3Text1",
		"Panels/BadLibrary3Text2",
		"half",
		"Panels/BadLibrary4",
		"Panels/BadLibrary5",
		"Panels/BadLibrary6",
		"Panels/BadLibrary7",
		"Panels/BadLibrary7Text1",
		"Panels/BadLibrary7Text2",
		"Panels/Background2",
		"Panels/BadLibrary9",
		"Panels/BadLibrary8Text1",
		"half",
		"Panels/BadLibrary10",
		"end",
	]
]

const PAGE_4G = [
	[
		"Panels/GoodCafeteria1",
		"Panels/GoodCafeteria1Text1",
		"Panels/GoodCafeteria2",
		"Panels/GoodCafeteria3",
		"Panels/GoodCafeteria4",
		"Panels/GoodCafeteria4Text1",
		"Panels/GoodCafeteria4Db",
		"half",
		"Panels/GoodCafeteriaB5",
		"Panels/GoodCafeteria5Text1",
		"Panels/GoodCafeteria6",
		"Panels/GoodCafeteria6Text1",
		"Panels/GoodCafeteria6Text2",
		"Panels/GoodCafeteria7",
		"Panels/GoodCafeteria8",
		"end",
	]
]

const PAGE_4N = [
	[
		"Panels/NeutralCafeteria1",
		"Panels/NeutralCafeteria2",
		"Panels/NeutralCafeteria3",
		"half",
		"Panels/NeutralCafeteria4",
		"Panels/NeutralCafeteria5",
		"Panels/Background2",
		"Panels/NeutralCafeteria6",
		"half",
		"Panels/NeutralCafeteriaB7",
		"end",
	]
]

const PAGE_5B = [
	[
		"Panels/BadBunker1",
		"Panels/BadBunker2",
		"Panels/BadBunker3",
		"Panels/BadBunker3Text1",
		"half",
		"Panels/BadBunker4",
		"Panels/BadBunker4Text1",
		"Panels/BadBunker4Text2",
		"Panels/BadBunker5",
		"Panels/BadBunker5Text1",
		"Panels/BadBunker6",
		"Panels/BadBunker6Text1",
		"Panels/BadBunker7",
		"Panels/Background2",
		"Panels/BadBunker8",
		"Panels/BadBunker8Text1",
		"Panels/Decision",
	],
	[
		"Panels/BadBunkerB9",
		"half",
		"Panels/BadBunkerB10",
		"Panels/BadBunkerB10Text",
		"Panels/Background3",
		"Panels/BadBunker12",
		"Panels/BadBunker12Text1",
		"Panels/BadBunker13",
		"Panels/BadBunker13Text1",
		"Panels/BadBunker14",
		"Panels/BadBunker14Text1",
		"half",
		"Panels/BadBunker15",
		"Panels/BadBunker16",
		"Panels/BadBunker16Text1",
		"Panels/BadBunker16Text2",
		"Panels/BadBunker17",
		"Panels/BadBunker17Text1",
		"Panels/BadBunker17Text2",
		"end",
	],
	[
		"Panels/BadBunkerG9",
		"Panels/BadBunkerG9Text1",
		"Panels/BadBunkerG9Text2",
		"half",
		"Panels/BadBunkerG10",
		"Panels/BadBunkerG10Text1",
		"Panels/BadBunkerG10Text2",
		"Panels/BadBunkerG11",
		"Panels/BadBunkerG11Text1",
		"Panels/Background3",
		"Panels/BadBunker12",
		"Panels/BadBunker12Text1",
		"Panels/BadBunker13",
		"Panels/BadBunker13Text1",
		"Panels/BadBunker14",
		"Panels/BadBunker14Text1",
		"half",
		"Panels/BadBunker15",
		"Panels/BadBunker16",
		"Panels/BadBunker16Text1",
		"Panels/BadBunker16Text2",
		"Panels/BadBunker17",
		"Panels/BadBunker17Text1",
		"Panels/BadBunker17Text2",
		"end",
	],
	[
		"Panels/BadBunkerN9",
		"Panels/BadBunkerN9Text1",
		"Panels/BadBunkerN9Text2",
		"Panels/BadBunkerN10",
		"Panels/BadBunkerN10Text1",
		"Panels/BadBunkerN10Text2",
		"Panels/BadBunkerN11",
		"Panels/BadBunkerN11Text1",
		"Panels/Background3",
		"Panels/BadBunker12",
		"Panels/BadBunker12Text1",
		"Panels/BadBunker13",
		"Panels/BadBunker13Text1",
		"Panels/BadBunker14",
		"Panels/BadBunker14Text1",
		"half",
		"Panels/BadBunker15",
		"Panels/BadBunker16",
		"Panels/BadBunker16Text1",
		"Panels/BadBunker16Text2",
		"Panels/BadBunker17",
		"Panels/BadBunker17Text1",
		"Panels/BadBunker17Text2",
		"end",
	],
]

const PAGE_5G = [
	[
		"Panels/GoodBunker1",
		"Panels/GoodBunker2",
		"Panels/GoodBunker3",
		"half",
		"Panels/GoodBunker4",
		"Panels/GoodBunker5",
		"Panels/GoodBunker6",
		"Panels/Background2",
		"Panels/GoodBunker7",
		"Panels/GoodBunker8",
		"half",
		"Panels/GoodBunker9",
		"Panels/GoodBunker10",
		"Panels/GoodBunker11",
		"Panels/Background3",
		"Panels/GoodBunker13",
		"Panels/GoodBunker12",
		"Panels/GoodBunker14",
		"half",
		"Panels/GoodBunker15",
		"Panels/GoodBunker15Text1",
		"Panels/GoodBunker15Text2",
		"Panels/Background4",
		"Panels/GoodBunker16",
		"half",
		"Panels/GoodBunker17",
		"end",
	],
]

const PAGE_5N = [
	[
		"Panels/P1",
		"Panels/P2",
		"Panels/P3",
		"Panels/P4",
		"Panels/P5",
		"half",
		"Panels/P6",
		"Panels/P7",
		"Panels/P8",
		"end",
	]
]

const PAGE_END = [
	[
		"GoodEndingIsolated"
	], 
	[
		"NeutralEndingIsolated"
	],
	[
		"BadEndingIsolated"
	],
]

const AUDIO_1 = []
const AUDIO_2 = [
	"null",
	"sfx_cloth_rustle1",
	"null",
	"null",
	"null",
	"vo_penny_intro_idiot",
	"half",
	"null",
	"null",
	"vo_tris_gasppenny1",
	"null",
	"vo_penny_sigh3",
	"null",
	"vo_tris_umm1",
	"vo_tris_umm2",
	"null",
	"null",
]
const AUDIO_3 = []
const AUDIO_4B = []
const AUDIO_4G = []
const AUDIO_4N = []
const AUDIO_5B = []
const AUDIO_5G = []
const AUDIO_5N = []
const AUDIO_END = []


func get_page_data():
	return [PAGE_1, PAGE_2, PAGE_3, PAGE_4B, PAGE_4G, PAGE_4N, PAGE_5B, PAGE_5G, PAGE_5N, PAGE_END]


func get_audio_data():
	return [AUDIO_1, AUDIO_2, AUDIO_3, AUDIO_4B, AUDIO_4G, AUDIO_4N, AUDIO_5B, AUDIO_5G, AUDIO_5N, AUDIO_END]
