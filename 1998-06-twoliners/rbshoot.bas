1 SCREEN1:KEYOFF:ONINTERVAL=60GOSUB2:S=153:X=6912:INTERVALON:VDP(6)=0:J=S:FORN=XTOX+15:READR:VPOKEN,R:NEXT:ONSPRITEGOSUB2:SPRITEON:FORB=0TO1:B=J<3:J=(J+3*(J<SORSTRIG(0)))*(B+1)-S*B:VPOKEX+12,J:FORI=X+1TOX+9STEP4:VPOKEI,VPEEK(I)+2AND255:SOUND0,S-J:NEXTI,B
2 IFVDP(8)AND32THENQ=0:FORK=XTOX+8STEP4:M=ABS(VPEEK(K+1)-128)<10:VPOKEK,VPEEK(K)*(1+M)-200*M:Q=Q+VPEEK(K):NEXT:IFQ=600THENPRINT"Game Over":BEEPELSERETURNELSEH=H+1:LOCATE1,20:PRINTH;:SOUND8,10:SOUND7,254:RETURN:DATA1,0,1,3,1,85,1,3,1,170,1,3,153,128,94,6
