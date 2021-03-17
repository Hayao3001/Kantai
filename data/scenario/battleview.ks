*start
[position height=160 top=430]
[position layer=message0 width=800 height=300 top=500 left=200 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="70" marginr="70" marginb="60"]
[chara_config ptext="chara_name_area"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=230 y=505 size=26]
[layopt layer=1 visible=true]


攻撃します[l][cm]
[loadjs storage="KPower.js"]
[loadjs storage="Mikatapower.js"]
[wait time="1500"]
敵が強力な攻撃の準備をしている！！[l][cm]
[glink color="white" target="*select1" text="攻撃" size=20 x=100 y=100 ]
[glink color="blue" target="*select2" text="防御" size=20 x=100 y=140 ]
[s]
*c1
[wait time="1500"]
敵が弱ってる！！[l][cm]
[glink color="white" target="*select3" text="攻撃" size=20 x=100 y=100 ]
[glink color="blue" target="*select4" text="防御" size=20 x=100 y=140 ]
[wait time="1500"]
[s]
*c2
[wait time="1500"]
敵が何かの準備をしているようだ[l][cm]
[glink color="white" target="*select5" text="攻撃" size=20 x=100 y=100 ]
[glink color="blue" target="*select6" text="防御" size=20 x=100 y=140 ]
[wait time="1500"]
[s]
*c3
[if exp='MP >= 0']
    撃退しました[l][cm]
    [loadjs storage="kantai.js"]
    [if exp='Nowship == "Ship1"']
        [eval exp='Ship1 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]
    [if exp='Nowship == "Ship2"']
        [eval exp='Ship2 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]
    [if exp='Nowship == "Ship3"']
        [eval exp='Ship3 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]
    [loadjs storage="kantai.js"]
    [if exp='Nowship == "Ship4"']
        [eval exp='Ship4 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]
    [if exp='Nowship == "Ship5"']
        [eval exp='Ship5 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]
    [if exp='Nowship == "Ship6"']
        [eval exp='Ship6 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]
    [loadjs storage="kantai.js"]
    [if exp='Nowship == "Ship7"']
        [eval exp='Ship7 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]
    [if exp='Nowship == "Ship8"']
        [eval exp='Ship8 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]
    [if exp='Nowship == "Ship9"']
        [eval exp='Ship9 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]
    [if exp='Nowship == "Ship10"']
        [eval exp='Ship10 = 1']
        [loadjs storage="kantaistate.js"]
    [endif]        
    今現在の味方戦力は[emb exp="MP"]です[l][cm]
    [eval exp='KESU=0']
    [loadjs storage="yobi.js"]
    @jump storage = 'battele.ks'
[endif]
[if exp='MP < 0']
    敗北しました[l][cm]
    @jump storage = 'badend.ks'
[endif]

*select1
[eval exp='BP=500']
[loadjs storage="battle.js"]
@jump target=*c1

*select2
[eval exp='BP=-500']
[loadjs storage="battle.js"]
@jump target=*c1

*select3
[eval exp='BP=-500']
[loadjs storage="battle.js"]
@jump target=*c2

*select4
[eval exp='BP=500']
[loadjs storage="battle.js"]
@jump target=*c2

*select5
[eval exp='BP=-1500']
[loadjs storage="battle.js"]
@jump target=*c3

*select6
[eval exp='BP=1500']
[loadjs storage="battle.js"]
@jump target=*c3