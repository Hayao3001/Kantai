*start
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=500 left=200 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="70" marginr="70" marginb="60"]
[chara_config ptext="chara_name_area"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=230 y=505 size=26]
[layopt layer=1 visible=true]

[cm]

どの編成で攻撃しますか？[l][cm]
[glink color="red" target="*select1" text="編成１" size=20 x=100 y=100 ]
[glink color="blue" target="*select2" text="編成２" size=20 x=100 y=140]
[glink color="white" target="*select3" text="編成３" size=20 x=100 y=180]
[glink color="green" target="*select4" text="編成４" size=20 x=100 y=220]
[glink color="red" target="*select5" text="編成５" size=20 x=100 y=260]
[s]

*select1
[cm]
[eval exp='MS=400']
[loadjs storage="data.js"]
[loadjs storage="KanataiState.js"]
了解しました[l][cm]
@jump storage = 'battleview.ks'

*select2
[cm]
[eval exp='MS=600']
[loadjs storage="data.js"]
[loadjs storage="KanataiState.js"]
了解しました[l][cm]
@jump storage = 'battleview.ks'

*select3
[cm]
[eval exp='MS=500']
[loadjs storage="data.js"]
[loadjs storage="KanataiState.js"]
了解しました[l][cm]
@jump storage = 'battleview.ks'

*select4
[cm]
[eval exp='MS=800']
[loadjs storage="data.js"]
[loadjs storage="KanataiState.js"]
了解しました[l][cm]
@jump storage = 'battleview.ks'

*select5
[cm]
[eval exp='MS=700']
[loadjs storage="data.js"]
[loadjs storage="KanataiState.js"]
了解しました[l][cm]
@jump storage = 'battleview.ks'





