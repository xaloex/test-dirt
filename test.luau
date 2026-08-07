-- Protected by Advanced Obfuscator v3.0 FIERCE
local _BC="\68\86\77\33\2\0\0\0\3\5\0\0\0\192\98\167\200\98\3\7\0\0\0\152\190\196\182\34\126\146\25\4\6\21\9\24\18\7\12\0\14\23\26\19\22\3\5\15\13\16\10\1\17\8\29\30\28\27\20\2\11\3\0\0\0\0\67\41\24\10\35\130\231\28\198\79\87\216\185\139\184\4\46\107\143\106\63\245\5\36\56\140\174\16\52\122\33\193\137\213\213\96\163\19\213\107\48\79\72"
local _KEY="\105\114\103\32\54\243\169\131\254\243\110\139\76\61\56\36\66\156\137\13\65\176\177\201\61\239\221\136\141\80\65\69"
local _CKSUM=16196036777645201381
(function(_D,_K,_C)
if not(_C and type(_C)=="number")then return end
local _idx428c={}
local _data={}
for _i=1,#_D do _data[_i]=_D:byte(_i)end
for _i=1,#_K do _data[#_data+1]=_K:byte(_i)end
local _t1=os.clock();local _x=0;for _i=1,10000 do _x=_x+_i end;if os.clock()-_t1>0.1 then return end
local _h=0xcbf29ce484222325;for _i=1,#_D do _h=(_h~_data[_i])*0x100000001b3;_h=_h&0xFFFFFFFFFFFFFFFF end;if _h~=_C then return end
local _ikey={}
for _ki=1,32 do _ikey[_ki]=_K:byte(_ki)end
local _P=1
local function _va131() local _v=_data[_P];_P=_P+1;return _v end
local function _led8d() local a,b,c,d=_va131(),_va131(),_va131(),_va131();return a|(b<<8)|(c<<16)|(d<<24)end
local _u305a=table.unpack or unpack
local _pd086=table.pack or function(...)return {n=select('#',...),...}end
local _c9c99=table.concat
local _idx428c={}
local _nc=_led8d()
for _i=1,_nc do
local _t=_va131();if _t==0 then _idx428c[_i]=nil
elseif _t==1 then _idx428c[_i]=_va131()~=0
elseif _t==2 then local _bs={};for _j=1,8 do _bs[_j]=_va131()end;local _b8=_bs[8];local _b7=_bs[7];local _sg=(_b8>>7)&1;local _ex=((_b8&0x7F)<<4)|((_b7>>4)&0xF);local _mn=(_b7&0xF)*(2^48)+_bs[6]*(2^40)+_bs[5]*(2^32)+_bs[4]*(2^24)+_bs[3]*(2^16)+_bs[2]*(2^8)+_bs[1];local _v;if _ex==0 then _v=math.ldexp(_mn/(2^52),-1022)elseif _ex==2047 then _v=_mn~=0 and 0/0 or math.huge else _v=math.ldexp((_mn/(2^52))+1,_ex-1023)end;_idx428c[_i]=_sg==1 and -_v or _v
elseif _t==3 then local _sl=_led8d();local _sb={};for _j=1,_sl do _sb[_j]=string.char(_va131())end;_idx428c[_i]=_c9c99(_sb)end
end
local _OSH={};for _i=0,30 do _OSH[_va131()]=_i end
local _ni=_led8d()
local _istart=_P
local _tmp2be1=(getfenv and getfenv(0))or _ENV or _G
local _ref47dc={}
local _idx93c4=1
local _TOP=0
local function _v4a9e(_v)if _v>=128 then return _idx428c[_v-127]else return _ref47dc[_v]end end
local _H={}
_H[0]=function(_A,_B,_C)
_ref47dc[_A]=_idx428c[(_B*256+_C)+1]
end
_H[1]=function(_A,_B,_C)
for _i=_A,_B do _ref47dc[_i]=nil end
end
_H[2]=function(_A,_B,_C)
_ref47dc[_A]=_B~=0;if _C~=0 then _idx93c4=_idx93c4+1 end
end
_H[3]=function(_A,_B,_C)
_ref47dc[_A]=_ref47dc[_B]
end
_H[4]=function(_A,_B,_C)
_ref47dc[_A]=_tmp2be1[_idx428c[(_B*256+_C)+1]]
end
_H[5]=function(_A,_B,_C)
_tmp2be1[_idx428c[(_B*256+_C)+1]]=_ref47dc[_A]
end
_H[6]=function(_A,_B,_C)
_ref47dc[_A]=_ref47dc[_B][_v4a9e(_C)]
end
_H[7]=function(_A,_B,_C)
_ref47dc[_A][_v4a9e(_B)]=_v4a9e(_C)
end
_H[8]=function(_A,_B,_C)
_ref47dc[_A]={}
end
_H[9]=function(_A,_B,_C)
_ref47dc[_A]=_v4a9e(_B)+_v4a9e(_C)
end
_H[10]=function(_A,_B,_C)
_ref47dc[_A]=_v4a9e(_B)-_v4a9e(_C)
end
_H[11]=function(_A,_B,_C)
_ref47dc[_A]=_v4a9e(_B)*_v4a9e(_C)
end
_H[12]=function(_A,_B,_C)
_ref47dc[_A]=_v4a9e(_B)/_v4a9e(_C)
end
_H[13]=function(_A,_B,_C)
_ref47dc[_A]=_v4a9e(_B)%_v4a9e(_C)
end
_H[14]=function(_A,_B,_C)
_ref47dc[_A]=_v4a9e(_B)^_v4a9e(_C)
end
_H[15]=function(_A,_B,_C)
_ref47dc[_A]=-_ref47dc[_B]
end
_H[16]=function(_A,_B,_C)
_ref47dc[_A]=not _ref47dc[_B]
end
_H[17]=function(_A,_B,_C)
_ref47dc[_A]=#_ref47dc[_B]
end
_H[18]=function(_A,_B,_C)
local _T={};for _i=_B,_C do _T[#_T+1]=tostring(_ref47dc[_i])end;_ref47dc[_A]=_c9c99(_T)
end
_H[19]=function(_A,_B,_C)
local _SBX=_B*256+_C-32767;_idx93c4=_idx93c4+_SBX
end
_H[20]=function(_A,_B,_C)
if(_v4a9e(_B)==_v4a9e(_C))~=(_A~=0)then _idx93c4=_idx93c4+1 end
end
_H[21]=function(_A,_B,_C)
if(_v4a9e(_B)<_v4a9e(_C))~=(_A~=0)then _idx93c4=_idx93c4+1 end
end
_H[22]=function(_A,_B,_C)
if(_v4a9e(_B)<=_v4a9e(_C))~=(_A~=0)then _idx93c4=_idx93c4+1 end
end
_H[23]=function(_A,_B,_C)
if(_ref47dc[_A]~=false and _ref47dc[_A]~=nil)~=(_C~=0)then _idx93c4=_idx93c4+1 end
end
_H[24]=function(_A,_B,_C)
local _FN=_ref47dc[_A];local _ARGS={};local _NB=_B==0 and _TOP-_A or _B-1;for _i=1,_NB do _ARGS[_i]=_ref47dc[_A+_i]end;local _NC2=_C-1;if _NC2==0 then _FN(_u305a(_ARGS))elseif _NC2==1 then _ref47dc[_A]=_FN(_u305a(_ARGS))else local _RES=_pd086(_FN(_u305a(_ARGS)));for _i=0,_NC2-1 do _ref47dc[_A+_i]=_RES[_i+1]end;_TOP=_A+_NC2-1 end
end
_H[25]=function(_A,_B,_C)
if _B==1 then return end;local _RET={};for _i=0,_B-2 do _RET[_i+1]=_ref47dc[_A+_i]end;return _u305a(_RET)
end
_H[26]=function(_A,_B,_C)
_ref47dc[_A]=_ref47dc[_A]-_ref47dc[_A+2];local _SBX=_B*256+_C-32767;_idx93c4=_idx93c4+_SBX
end
_H[27]=function(_A,_B,_C)
_ref47dc[_A]=_ref47dc[_A]+_ref47dc[_A+2];if _ref47dc[_A]<=_ref47dc[_A+1]then local _SBX=_B*256+_C-32767;_idx93c4=_idx93c4+_SBX;_ref47dc[_A+3]=_ref47dc[_A]end
end
_H[28]=function(_A,_B,_C)
local _BASE=(_C-1)*50;for _i=1,_B do _ref47dc[_A][_BASE+_i]=_ref47dc[_A+_i]end
end
_H[29]=function(_A,_B,_C)
_ref47dc[_A+1]=_ref47dc[_B];_ref47dc[_A]=_ref47dc[_B][_v4a9e(_C)]
end
_H[30]=function(_A,_B,_C)
_ref47dc[_A]=_tmp2be1[_v4a9e(_C)]
end
while _idx93c4<=#_ni do
_P=_istart+(_idx93c4-1)*4
local _ro=_va131();local _op=_OSH[_ro]
local _A,_B,_C=_va131(),_va131(),_va131()
_idx93c4=_idx93c4+1
if _H[_op]then _H[_op](_A,_B,_C)end
end
end)(_BC,_KEY,_CKSUM)
