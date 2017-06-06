# pydemia-client

## Windows

### Turn on `ubuntu bash shell`

1. Enable `Developer Mode`  
Open Settings -> Update and Security -> For developers  
Select the Developer Mode radio button  

2. Enable `Windows Subsystem for Linux` feature  
From Start, search for "Turn Windows features on or off" (type 'turn')  
Select Windows Subsystem for Linux (beta)  # (In Korean : Linux용 Windows 하위시스템(베타) )  
Then Reboot  

3. Install & Configure `cmder`
`cmder` can be downloaded [here](http://cmder.net)  

Add a new console Setting:
![console setting](https://github.com/pydemia/pydemia-server/blob/master/scripts/cmder%20bash_ubuntu_setting.png?raw=true)

Start a new console:
![console start](https://github.com/pydemia/pydemia-server/blob/master/scripts/cmder%20bash_ubuntu_start.png?raw=true)

## Syntax Color

### Console

```vim
Text Color : (dark)#839496 (light)#AABFC1
Bold Color : same as text color
Background Color : #002B36

Palette Entry : Tango

Dark
1(black) : #000000
2(red) : #CC0000
3(green) : #4E9A06
4(yellow) : #C4A000
5(blue) : #3465A4
6(purple) : #75507B
7(cyan) : #06989A
8(grey) : #D3D7CF

Light
1(black) : #555753
2(red) : #EF2929
3(green) : #8AE234
4(yellow) : #FCE94F
5(blue) : #729FCF
6(purple) : #AD7FA8
7(cyan) : #34E2E2
8(grey) : #EEEEEC

```

### Cobalt2

```vim
Background	#041927 #193549
Side areas	#19364b #0d3a58 

Current cell	#072539 #1f4662 #0d3a58
Current line 	#0d3a58
Occurrence 	#3b5364
Matched parens 	#0088ff
Unmatchedparens #e1efff
Link 		#0088ff

Normal text 	#ffffff
Comment 	#0088ff
String 		#3ad900
Number 		#ff628c
Keyword 	#ff9d00
Builtin 	#edef7d
Definition 	#ffc600
Instance 	#ff80e1


```
