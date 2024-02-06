" Define a syntax group for 4-digit numbers
syn match iosFourDigitNumber "\<\d\{4}\>" 

" Define a syntax group for interface names (e.g., GigabitEthernet0/0 or FastEthernet0/0)
syn match iosInterface "\<[A-Z][a-zA-Z0-9]*[0-9]\+/\d\+\>"

" Define a syntax group for port numbers (0/1, 0/20, etc.)
syn match iosPortNumber "\<\d\+/\d\+\>" 

" Highlight 4-digit numbers as numbers
hi def link iosFourDigitNumber Number

" Link your syntax groups to highlighting styles
hi def link iosInterface Number
hi def link iosPortNumber Number

" Your existing syntax rules
syn keyword iosKeyword hostname write configure enable aaa vrf fa ge password switchport conf ip redistribute dot1q authentication line mpls standby ospf bgp username group login crypto transport pasword interface negotiation duplex speed description no permit 
syn keyword iosAttribute address default memory gateway neighbour family new model trunk vty eigrp vlan overload con policy isakmp peer transform set map terminal aux nat secret access ssh list shutdown auto mode
syn keyword iosMoreAttribute standard inside tcp udp encapsulation local icmp deny any eq lt gt neq source log in out static dynamic snmp snmp server community router route version
syn keyword interface GigabitEthernet gigabitethernet FastEthernet fastethernet

syn match iosComment "!.*"
syn match iosIP "\d\+\.\d\+\.\d\+\.\d\+" " this line matches IP addresses
syn match commaNumber "\d\+,\d\d" " This is for 1,10

" Link your existing syntax groups to highlighting styles
hi def link interface Number
hi def link iosKeyword Keyword
hi def link iosAttribute Type
hi def link iosComment Comment
hi def link iosMoreAttribute Boolean
hi def link iosIP Number  " this line highlights IP addresses as numbers
hi def link commaNumber Number  " this line highlights 1,10
