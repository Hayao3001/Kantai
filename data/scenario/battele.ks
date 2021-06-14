*start
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=500 left=200 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="70" marginr="70" marginb="60"]
[chara_config ptext="chara_name_area"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=230 y=505 size=26]
[layopt layer=1 visible=true]
どの艦隊を攻撃しますか？[l][cm]
*main

[cm]
[freeimage layer="1"]
[if exp='Ship1 == 0']
    [image layer="1" x="100" y="200" storage="ship.png"]
    [clickable target="*select1" x=100 y=200 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
[if exp='Ship2 == 0']
    [image layer="1" x="400" y="350" storage="ship.png"]
    [clickable target="*select2" x=400 y=350 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
[if exp='Ship3 == 0']
    [image layer="1" x="600" y="150" storage="ship.png"]
    [clickable target="*select3" x=600 y=150 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
    [glink color="green" target="*kaifuku" text="回復" size=20 x=1100 y=680]
    [glink color="white" target="*information" text="艦隊情報" size=20 x=1100 y=80]
    [image layer="1" x="500" y="50" storage="上.png"]
    [clickable target="*jump1" x=500 y=50 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
    [image layer="1" x="1100" y="350" storage="右.png"]
    [clickable target="*jump2" x=1100 y=350 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[s]

*main2 
[freeimage layer="1"]
[if exp='Ship4 == 0']
    [image layer="1" x="100" y="250" storage="ship.png"]
    [clickable target="*select4" x=100 y=250 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
[if exp='Ship5 == 0']
    [image layer="1" x="350" y="350" storage="ship.png"]
    [clickable target="*select5" x=450 y=350 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
[if exp='Ship6 == 0']
    [image layer="1" x="600" y="200" storage="ship.png"]
    [clickable target="*select6" x=600 y=200 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
    [glink color="green" target="*kaifuku" text="回復" size=20 x=1100 y=680]
    [glink color="white" target="*information" text="艦隊情報" size=20 x=1100 y=80]
    [image layer="1" x="500" y="450" storage="下.png"]
    [clickable target="*jump3" x=500 y=450 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[s]

*main3
[freeimage layer="1"]
[if exp='Ship7 == 0']
    [image layer="1" x="100" y="150" storage="ship.png"]
    [clickable target="*select7" x=100 y=150 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
[if exp='Ship8 == 0']
    [image layer="1" x="250" y="350" storage="ship.png"]
    [clickable target="*select8" x=250 y=350 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
[if exp='Ship9 == 0']
    [image layer="1" x="500" y="200" storage="ship.png"]
    [clickable target="*select9" x=500 y=200 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
[if exp='Ship10 == 0']
    [image layer="1" x="600" y="400" storage="ship.png"]
    [clickable target="*select10" x=600 y=400 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[endif]
    [glink color="green" target="*kaifuku" text="回復" size=20 x=1100 y=680]
    [glink color="white" target="*information" text="艦隊情報" size=20 x=1100 y=80]
    [image layer="1" x="50" y="350" storage="左.png"]
    [clickable target="*jump3" x=50 y=350 width=100 height=100 mouseopacity="128" border="5px:dotted:black"]
[s]


*select1
[cm]
[eval exp='KP=1000']
[eval exp='KS=1000']
[eval exp='NS = "Ship1"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]



*select2
[cm]
[eval exp='KP=2000']
[eval exp='KS=600']
[eval exp='NS = "Ship2"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]



*select3
[cm]
[eval exp='KP=3000']
[eval exp='KS=400']
[eval exp='NS = "Ship3"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]

*select4
[cm]
[eval exp='KP=2500']
[eval exp='KS=500']
[eval exp='NS = "Ship4"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]

*select5
[cm]
[eval exp='KP=1500']
[eval exp='KS=2400']
[eval exp='NS = "Ship5"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]

*select6
[cm]
[eval exp='KP=700']
[eval exp='KS=4400']
[eval exp='NS = "Ship6"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]

*select7
[cm]
[eval exp='KP=2100']
[eval exp='KS=1400']
[eval exp='NS = "Ship7"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]

*select8
[cm]
[eval exp='KP=1700']
[eval exp='KS=4400']
[eval exp='NS = "Ship8"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]

*select9
[cm]
[eval exp='KP=2500']
[eval exp='KS=1400']
[eval exp='NS = "Ship9"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]

*select10
[cm]
[eval exp='KP=3000']
[eval exp='KS=1400']
[eval exp='NS = "Ship10"']
[loadjs storage="data.js"]
この艦隊の戦力は[emb exp="KPower"]です[l][cm]
この艦隊でよろしいでしょうか？[l][cm]
[link target=*common]はい[endlink][r]
[link target=*main]いいえ[endlink][r]
[freeimage layer="1"]
[s]

*kaifuku
[cm]
どのくらい回復しますか？[l][cm]
[freeimage layer="1"]
@jump storage = 'kaifuku.ks'
[s]

*jump1
[cm]
@jump target = *main2

*jump2
[cm]
@jump target = *main3

*jump3
[cm]
@jump target = *main

*information
[cm]
@jump storage = 'information.ks'

*common
[cm]
承知しました。[l][cm]
@jump storage = 'battlestate.ks'