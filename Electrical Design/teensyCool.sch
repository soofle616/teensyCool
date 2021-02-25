EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L teensy:Teensy3.2 U1
U 1 1 6028876F
P 5600 3750
F 0 "U1" H 5600 5387 60  0000 C CNN
F 1 "Teensy3.2" H 5600 5281 60  0000 C CNN
F 2 "teensy:Teensy30_31_32_All_Pins" H 5600 5281 60  0001 C CNN
F 3 "" H 5600 3000 60  0000 C CNN
	1    5600 3750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 6028E224
P 3800 3350
F 0 "Q1" V 4049 3350 50  0000 C CNN
F 1 "2N7000" V 4140 3350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4000 3275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 3800 3350 50  0001 L CNN
	1    3800 3350
	0    -1   1    0   
$EndComp
$Comp
L Transistor_FET:BUZ11 Q3
U 1 1 6029097A
P 3000 3450
F 0 "Q3" H 3205 3404 50  0000 L CNN
F 1 "RFP30N06LE" H 3205 3495 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabUp" H 3250 3375 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/BUZ11.pdf" H 3000 3450 50  0001 L CNN
	1    3000 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 6029233B
P 4150 2200
F 0 "R1" H 4218 2246 50  0000 L CNN
F 1 "10k" H 4218 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 4150 2200 50  0001 C CNN
F 3 "~" H 4150 2200 50  0001 C CNN
	1    4150 2200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 60296522
P 3800 2300
F 0 "Q2" V 4049 2300 50  0000 C CNN
F 1 "2N7000" V 4140 2300 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4000 2225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 3800 2300 50  0001 L CNN
	1    3800 2300
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 60298E60
P 4150 3250
F 0 "R2" H 4218 3296 50  0000 L CNN
F 1 "10k" H 4218 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 4150 3250 50  0001 C CNN
F 3 "~" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 6029925B
P 3400 2200
F 0 "R3" H 3468 2246 50  0000 L CNN
F 1 "10k" H 3468 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 3400 2200 50  0001 C CNN
F 3 "~" H 3400 2200 50  0001 C CNN
	1    3400 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 6029958E
P 3400 3250
F 0 "R4" H 3468 3296 50  0000 L CNN
F 1 "10k" H 3468 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 3400 3250 50  0001 C CNN
F 3 "~" H 3400 3250 50  0001 C CNN
	1    3400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3450 4150 3450
Wire Wire Line
	4150 3450 4150 3350
Wire Wire Line
	4000 2400 4150 2400
Wire Wire Line
	4150 2400 4150 2300
Wire Wire Line
	4150 3150 4150 3100
Wire Wire Line
	3800 3150 3800 3100
Wire Wire Line
	3800 3100 4150 3100
Connection ~ 4150 3100
Wire Wire Line
	4150 3100 4150 3050
Wire Wire Line
	3800 2100 3800 2050
Wire Wire Line
	3800 2050 4150 2050
Wire Wire Line
	4150 2050 4150 2100
Wire Wire Line
	4150 2050 4150 2000
Connection ~ 4150 2050
Wire Wire Line
	3600 2400 3400 2400
Wire Wire Line
	3400 2400 3400 2300
Wire Wire Line
	3600 3450 3400 3450
Wire Wire Line
	3400 3450 3400 3350
Wire Wire Line
	3400 3150 3400 3050
Wire Wire Line
	3400 2100 3400 2000
Text Label 3400 2000 0    50   ~ 0
5V
Text Label 3400 3050 0    50   ~ 0
5V
Wire Wire Line
	4600 2500 4550 2500
Wire Wire Line
	4550 2500 4550 2600
Wire Wire Line
	4550 2600 4600 2600
Wire Wire Line
	4550 2500 4150 2500
Wire Wire Line
	4150 2500 4150 2400
Connection ~ 4550 2500
Connection ~ 4150 2400
Wire Wire Line
	3400 3450 3200 3450
Connection ~ 3400 3450
$Comp
L power:GND #PWR0101
U 1 1 602BFC21
P 2900 3750
F 0 "#PWR0101" H 2900 3500 50  0001 C CNN
F 1 "GND" H 2905 3577 50  0000 C CNN
F 2 "" H 2900 3750 50  0001 C CNN
F 3 "" H 2900 3750 50  0001 C CNN
	1    2900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3750 2900 3650
Text Label 4150 3050 0    50   ~ 0
3.3V
Text Label 4150 2000 0    50   ~ 0
3.3V
Connection ~ 3400 2400
Wire Wire Line
	2700 2400 3400 2400
Wire Wire Line
	2150 2500 2350 2500
Text Label 2350 2500 0    50   ~ 0
12V
Wire Wire Line
	2150 2400 2350 2400
Text Label 2350 2400 0    50   ~ 0
12V
Wire Wire Line
	4600 2700 4550 2700
Wire Wire Line
	4550 2700 4550 3450
Wire Wire Line
	4550 3450 4150 3450
Connection ~ 4150 3450
$Comp
L power:GND #PWR0103
U 1 1 602DFBCF
P 2350 3100
F 0 "#PWR0103" H 2350 2850 50  0001 C CNN
F 1 "GND" H 2355 2927 50  0000 C CNN
F 2 "" H 2350 3100 50  0001 C CNN
F 3 "" H 2350 3100 50  0001 C CNN
	1    2350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3100 2350 3000
Wire Wire Line
	2350 3000 2150 3000
Wire Wire Line
	2150 2600 2350 2600
Text Label 2350 2600 0    50   ~ 0
12V
Wire Wire Line
	6600 4900 6800 4900
Wire Wire Line
	6600 4700 6750 4700
Text Label 6750 4700 0    50   ~ 0
5V
Text Label 6800 4900 0    50   ~ 0
3.3V
$Comp
L Connector:Screw_Terminal_01x07 J1
U 1 1 602EA555
P 1950 2700
F 0 "J1" H 1868 2175 50  0000 C CNN
F 1 "Screw_Terminal_01x07" H 1868 2266 50  0000 C CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x07_P3.50mm_Horizontal" H 1950 2700 50  0001 C CNN
F 3 "~" H 1950 2700 50  0001 C CNN
	1    1950 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 2900 2350 2900
Wire Wire Line
	2350 2900 2350 3000
Connection ~ 2350 3000
Wire Wire Line
	2150 2700 2700 2700
Wire Wire Line
	2700 2700 2700 2400
Wire Wire Line
	2150 2800 2900 2800
Wire Wire Line
	2900 2800 2900 3250
Wire Wire Line
	4600 2400 4550 2400
Wire Wire Line
	4550 2400 4550 2250
Text Label 4550 2250 0    50   ~ 0
GND
$EndSCHEMATC
