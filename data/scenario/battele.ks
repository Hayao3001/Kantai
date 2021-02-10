*start
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=500 left=200 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="70" marginr="70" marginb="60"]
[chara_config ptext="chara_name_area"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=230 y=505 size=26]
[layopt layer=1 visible=true]

*main

[cm]
どの艦隊を攻撃しますか？[l][cm]
[if exp='Ship1 == 0']
    [glink color="red" target="*select1" text="艦隊１" size=20 x=100 y=100 ]
[endif]
[if exp='Ship2 == 0']
    [glink color="blue" target="*select2" text="艦隊２" size=20 x=100 y=140]
[endif]
[if exp='Ship3 == 0']
    [glink color="white" target="*select3" text="艦隊３" size=20 x=100 y=180]
[endif]
[glink color="green" target="*select4" text="回復" size=20 x=1000 y=220]
[s]

*select1
[cm]
[eval exp='KP=1000']
[eval exp='KS=1000']
[eval exp='NS = "Ship1"']
[loadjs storage="kantaipower.js"]
[loadjs storage="kantai.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[s]



*select2
[cm]
[eval exp='KP=2000']
[eval exp='KS=600']
[eval exp='NS = "Ship2"']
[loadjs storage="kantaipower.js"]
[loadjs storage="kantai.js"]
この艦隊の戦力は[emb exp="KPower"]です
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[s]



*select3
[cm]
[eval exp='KP=3000']
[eval exp='KS=400']
[eval exp='NS = "Ship3"']
[loadjs storage="kantaipower.js"]
[loadjs storage="kantai.js"]
この艦隊の戦力は[emb exp="KPower"]です
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[s]

*select4
[cm]
どのくらい回復しますか？[l][cm]
@jump storage = 'kaifuku.ks'
[s]

*common
[cm]
承知しました。[l][cm]
@jump storage = 'battlestate.ks'