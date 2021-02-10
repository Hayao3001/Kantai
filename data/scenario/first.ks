*start
[eval exp='Ship1 = 0']
[eval exp='Ship2 = 0']
[eval exp='Ship3 = 0']
[loadjs storage="kantaistate.js"]
[eval exp='MP=3000']
[loadjs storage="kantaipower.js"]
[eval exp='YBK=5000']
[loadjs storage="yobiSR.js"]
戦闘シーンに移行します[l][cm]

@jump storage = 'battele.ks'

