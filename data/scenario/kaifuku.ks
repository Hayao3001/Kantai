*start
[cm]
[if exp='YoBiS >= 500']
    [glink color="red" target="*select1" text="500" size=20 x=100 y=100 ]
[endif]
[if exp='YoBiS >= 1000']
    [glink color="blue" target="*select2" text="1000" size=20 x=100 y=140]
[endif]
[if exp='YoBiS >= 1500']
    [glink color="white" target="*select3" text="1500" size=20 x=100 y=180]
[endif]
[if exp='YoBiS >= 2000']
    [glink color="white" target="*select4" text="2000" size=20 x=100 y=220]
[endif]
[s]

*select1
[cm]
[eval exp='YB=500']
[eval exp='KESU=1']
[loadjs storage="yobi.js"]
[loadjs storage="Mikatapower.js"]
[loadjs storage="kaifuku.js"]
回復しました[l][cm]
今現在の味方戦力は[emb exp="MPW"]です[l][cm]
@jump storage = 'battele.ks'

*select2
[cm]
[eval exp='YB=1000']
[eval exp='KESU=1']
[loadjs storage="yobi.js"]
[loadjs storage="Mikatapower.js"]
[loadjs storage="kaifuku.js"]
回復しました[l][cm]
今現在の味方戦力は[emb exp="MPW"]です。[l][cm]
@jump storage = 'battele.ks'

*select3
[cm]
[eval exp='YB=1500']
[eval exp='KESU=1']
[loadjs storage="yobi.js"]
[loadjs storage="Mikatapower.js"]
[loadjs storage="kaifuku.js"]
回復しました[l][cm]
今現在の味方戦力は[emb exp="MPW"]です[l][cm]
@jump storage = 'battele.ks'

*select4
[eval exp='YB=2000']
[eval exp='KESU=1']
[loadjs storage="yobi.js"]
[loadjs storage="Mikatapower.js"]
[loadjs storage="kaifuku.js"]
[loadjs storage="kantaipower.js"]
回復しました[l][cm]
今現在の味方戦力は[emb exp="MPW"]です[l][cm]
@jump storage = 'battele.ks'