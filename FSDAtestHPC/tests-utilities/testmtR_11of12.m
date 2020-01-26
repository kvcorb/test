load tempfileWS
clear all; close all;
Rstring = ['EXECUTE THE FOLLOWING IN R TO INITIATE THE SIMULATION' char(10) char(10) ...
'RNGkind("Mersenne-Twister") # set "Mersenne-Twister" "Inversion"' char(10)...
'set.seed(12345)' char(10)...
'state = .Random.seed' char(10) ...
char(10)...
'rnorm(5)' char(10)...
'for (i in 1:1000) {' char(10)...
'    rn=rnorm(5) ' char(10)...
'    if (i==1000){print(rn)}' char(10)...
'}' char(10) ...
];
disp(Rstring);
% MATLAB SIDE:
%
m = 'MATLAB: ';
r = 'R:      ';
% 5 random numbers from a normal distribution in [0 1], seed 12345.
stateR12345 = [403 , 624 , 1638542565 , 108172386 , -1884566405 , -1838154368 , -250773631 , 919185230 , -1001918601 , -1002779316 , -321961507 , 1781331706 , 1166440499 , -117712936 , 58314745 , -938201242 , 1844978351 , -869947100 , 216221141 , 576699538 , 533687019 , 1819381040 , 675905393 , 2110048894 , 2136771815 , 1026265084 , -1037166387 , -285653718 , 1263109283 , -1975616120 , 1576168937 , -123742058 , 244715039 , 1526718932 , -1087137083 , 1442050242 , 676570459 , 800852192 , -823755935 , -566904402 , 1696695895 , 906100396 , 1479781309 , -321511590 , -1503089389 , 1068470072 , 2031323097 , 2053295558 , -749218417 , -2000861564 , 1655319477 , -768462606 , 262110155 , 399143056 , -983338159 , -1865452322 , -202515513 , 1164515676 , 80673453 , 1462142346 , 1143665027 , -1238758168 , 255598025 , 1584402166 , 1601468671 , -748103884 , 1964374181 , -656573150 , 1708781115 , -1898462144 , 469722945 , -888865778 , -807891657 , -53747700 , -1448147555 , -905087046 , -208186893 , 289994392 , -2104807495 , -895837146 , -1276970897 , -1949461532 , -133824107 , -327625390 , 1424620715 , -572587024 , 45700913 , -284602562 , 850959015 , -1739238724 , -1539126131 , -1167198742 , -713765277 , -1419293624 , -857752151 , 695563606 , -1621470241 , -2055832428 , 1623803525 , 4667778 , 276211483 , -593809504 , -1185922271 , -1144033682 , 1545929751 , -1359974036 , -1111928963 , -1511325670 , -867539245 , -979366408 , 1876477849 , 1515428486 , 777096015 , -961638076 , -2006005899 , -1471436366 , 1172761995 , -1584969904 , 2135108369 , 2097830302 , 24430983 , -498582500 , 453086829 , 1122473546 , -329311421 , 936262568 , 1691700617 , -515372106 , 452959935 , 947966452 , -1681554331 , 1229530594 , -1939746821 , 836651776 , -2083451135 , 992809166 , -1111561481 , -1899515188 , 751470941 , -1333348230 , -340137037 , 546100568 , 217337721 , 388352230 , 1029410351 , 1454915236 , 190610773 , 1220718098 , -724677013 , 832256688 , -705106191 , -345336834 , -2116392857 , 2073679228 , -1618788275 , -1498716502 , -1843275741 , -1791567096 , 555011433 , 1501549078 , -82028129 , -538978476 , 2072162885 , 1023099458 , -640456485 , -1820780960 , 1417267937 , -1615469778 , 73286103 , -1968593876 , 1264235325 , -1510432550 , 689823891 , 1374112952 , -1579825319 , 984164166 , -1212612337 , -2059232252 , -1270406347 , 485876338 , -1881661621 , 1223876112 , -1647140143 , -1228800418 , 832665415 , 1755455196 , 608166445 , 668034826 , -336263933 , 1769548392 , -946455223 , -1313552266 , 1147700351 , -1695839052 , -1854353371 , 1886752418 , -1794936389 , -230452800 , 4355777 , 201450894 , -1682241353 , 1022248332 , 702663965 , -833046214 , 2007909747 , -175672296 , -227201223 , 1249228198 , 1344398319 , -945444508 , -223954667 , 2147305170 , -1589878741 , -1905905296 , 1774732977 , 665360574 , -360581593 , 1505302588 , 1471116301 , -1804494998 , 990945763 , -965924408 , -1705927383 , 1434382038 , -677634209 , -1258556908 , -1423974907 , -2066740478 , -165025125 , 722844960 , 1478693537 , 1856575470 , 1267548055 , -336750868 , -1797794051 , -37813862 , -425518509 , 323308408 , 1053460249 , 404976646 , -1790036273 , -1086757180 , 1911766773 , -655303886 , -818736885 , -1798490928 , -925771119 , 1387684638 , -499915513 , -1422474852 , -1538656787 , 1185150922 , -592662845 , 703256872 , 1463741705 , -59357898 , 1903110719 , -1519843468 , -772809755 , 656586594 , -780217477 , 113744000 , 689151617 , -2109506994 , 931980919 , -1979738036 , 347394269 , -1807517190 , -1590403277 , 519623384 , 1120784121 , -1052089754 , -235538001 , 961926180 , 430224597 , -1696030830 , 2079601131 , -620763088 , 1172790897 , 411262334 , -1435548697 , 1702042364 , 814180301 , 612403242 , 1241590691 , 2110404744 , 945171689 , -1439511658 , -1432771297 , 260754644 , 1264634309 , 277189570 , -1757795237 , 976298976 , 1007426145 , -848753490 , -546177705 , -1250145876 , -302990659 , 2113806938 , -291892205 , -126219720 , 913770201 , -1350401850 , -1395577713 , 793964932 , 221452981 , 1157403634 , -1514683701 , -875148400 , 1744884305 , 631736286 , 820777671 , 1019618396 , -555759187 , -1608562550 , 407246979 , 400771048 , -208708407 , -1370717706 , -137129985 , -1028046284 , -1729452123 , 101752866 , 1402205499 , 1714052928 , 1443137089 , -1565405426 , 519341111 , -1195660532 , 553882781 , 856095418 , 839661811 , -341773928 , -843174215 , -1738289370 , -392704145 , -964116764 , -1407815531 , 1648670802 , -424295509 , -1104650512 , -1307167183 , -222633410 , -1084075609 , -1853366852 , 1305156493 , -1214760726 , -122456733 , -1173485752 , -1159562071 , -1537513386 , -1445664033 , -1169397868 , 2013623685 , -656679806 , -1362874853 , 395004576 , 938795553 , 548782446 , 768375575 , -1978286996 , 1785028221 , -1217002726 , -356332077 , -1337620232 , 949700249 , 2105953670 , -1543380401 , 1347370052 , -1849248139 , -1982264142 , 1965438091 , -187817392 , -1558214127 , -1001034594 , -74841977 , 1880114972 , -675193491 , -184329910 , -1199488445 , -1843235160 , 1011321993 , 1945599670 , -313150017 , 496778484 , -500616347 , 1711229154 , -318580997 , -953424384 , -1630196223 , 839705550 , -1615732233 , -874349108 , 1116608605 , -1687995526 , -1275735373 , 1782567000 , 587615865 , -1400767514 , -1178114769 , 1241409956 , -1782846379 , 1590792466 , 591467883 , -1633708624 , -1240150543 , -1425070338 , -417652889 , -1867030404 , -1824878771 , 1853401514 , 1088913187 , 972592648 , -1581872023 , 1354286358 , -888278881 , 1073791572 , 214819141 , -1768757950 , -293081125 , -639356576 , 1134389729 , -1924188626 , 1683798231 , -864424148 , -571096515 , -85548070 , 1155352467 , -1452816456 , -1258863015 , -1091642810 , -526362609 , 1559119620 , -881978827 , -1874442894 , 1597924939 , -696993520 , 1642987985 , -2088758946 , -540168633 , 1473587676 , 1387180333 , -972019190 , -1759630333 , -1217895064 , -1859683255 , -1170785418 , 666213247 , -1596852300 , 1768652581 , 1605284258 , 797669563 , -1601426240 , -616196671 , -1256933234 , -947585097 , -2043408244 , 756309021 , 2115517498 , 1890659443 , 1771400984 , -1838797255 , -1704662874 , -1421559057 , 1584845924 , -2108348395 , -649123374 , 861284139 , -1557820304 , 430122417 , -163566658 , -1621512921 , -708730052 , -1533689075 , 702667370 , -597866269 , 2085217480 , 747789353 , 2081087958 , -1006324129 , -345514732 , -1518727931 , -1033196030 , -934973029 , 1476122656 , 382054817 , -134911250 , 1893906071 , -1620516372 , -597563907 , 1494221978 , 648642899 , 312526456 , -615840231 , 1887184646 , -2006151729 , 1341133252 , 1172909557 , 17055282 , 1170233355 , -141946928 , 1277966737 , 2011657758 , 997661703 , -959132516 , -748174099 , 1409661642 , 1306318275 , 1718948904 , 300887049 , -1379157962 , 1018380607 , -149261708 , -1435399451 , -874587550 , 1827527291 , 688599936 , -1558856319 , 1888046414 , 1680727415 , 1785750348 , 1414946781 , 1273363706 , 1912489523 , 2019675608 , 731762169 , -1093888666 , -1026568017 , 1588723492 , -576576555 , -629308782 , -659228437 , -1300610256 , 1686191473 , 1225650302 , 635304679 , -1821989380 , -442714419 , -1970025686 , 1154798243 , -1077808248 , 1530260457 , -1290682730 , 175717407 , -951994412 , -1647707963 , -1792854334 , 1841083227 , 680672992 , 690862433 , 90726318 , 18773079 , -442329940 , -1184249411 , -1565383334 , 2045213459 , -625965768 , -1688828455 , 1324233670 , -2128182385 , -468411260 , 1291323829 , 1154676466 , -898889269 , -1630656880 , -912641711 , 1984666334 , 742803911 , 1338978140 , -1649633107 , -1616639094 , 914177923 , 1040745192 , -1637966903 , 997520630 , -2112968961 , -1959416524 , -520399195 , 1129300770 , -1226179525 , 1466497600 , 1308992833 , 1764401678 , 57441079 , -1151896052 , -334224483 , 898399674 , -2120409101 , -446370664 , -1100141127 , 913900070 , -970414481 , 1701833188 , -748494955 , 723295058 , -1793226069 , 1935522288 , -563145423 , -667388610 , 2020083879 , -1134139204 , 2047830669 , -246514710 , -1274143645 , 52478536 , -312394839 , 1116560214 , -735346209 , -1639034220 , 293446789 , 125599618 , -793922277 , -1570282080 , -1298824927 , 443028590 , -2100301289 , 1105659756 , -1999803011 , 1754072602 , -396938029 , -1336474632 , -1529231975 , -687538042 , 1888368975 , -1810110652 ];
Rstate      = typecast(int32(stateR12345),'int32');
seed        = 12345;
disp('Five random numbers generated in the first simulation step: ');
rn1 = mtR(5, 1, Rstate);
rn2 = mtR(5, 1, seed);
expectedRes=[0.5855288  0.7094660 -0.1093033 -0.4534972  0.6058875]';
sprintf('%s %0.7f  ',m,rn1)
disp('     input: R state as int32')
sprintf('%s %0.7f  ',m,rn2)
disp('     input: seed')
sprintf('%s %0.7f  ',r,[0.5855288  0.7094660 -0.1093033 -0.4534972  0.6058875])
assert(isequal(round(rn1,7), round(rn2,7), round(expectedRes,7)), 'Error: MATLAB did not output the same random values as R!')
% 1000 arrays of 5 random numbers from a uniform distribution in [0 1]
% generated while keeping the current MATLAB state (this is obtained
% by setting a negative Rstate)
for i=1:1000
rn2=mtR(5, 1, -3524);
end
expectedRes=[-0.6924722  1.1246956  0.1745351 -1.9678067 -1.6442717]';
disp('Five random numbers generated in the last of the 1000 simulation steps: ');
sprintf('%s %0.7f  ',m,rn2)
sprintf('%s %0.7f  ',r,[-0.6924722  1.1246956  0.1745351 -1.9678067 -1.6442717])
assert(isequal(round(rn2,7), round(expectedRes,7)), 'Error: MATLAB did not output the same random values as R!')
close all
save tempfileWS