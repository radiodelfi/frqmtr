10 rem frequenzimetro
20 poke 36879,8 
30 print chr$(5),chr$(147)            
40 poke 37138,240:poke 37139,124
50 poke 37137,124:poke 37148,192
60 poke 37147,192
70 poke 37142,84:poke 37140,84
80 poke 37143,4:poke 37141,4
90 for i=0 to 100:next  
100 poke 37148,224
110 for i=0 to 100:next
120 for i=0 to 3
130 poke 37137,124-2^(i+2)
140 a=a+peek(37136)*16^i
150 next
160 print chr$(147);a;"khz"
170 poke 37137,124:poke 37148,192
180 a=0:goto 90