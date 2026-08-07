-- Protected by Advanced Obfuscator v3.0 FIERCE
local _BC="\68\86\77\33\3\0\0\0\3\5\0\0\0\136\249\152\105\192\3\27\0\0\0\222\75\28\147\72\163\20\99\21\247\187\95\227\234\27\217\106\135\55\173\252\132\176\125\150\30\48\2\216\31\6\217\116\46\4\157\17\8\0\28\24\5\12\27\9\18\29\30\26\21\11\7\14\23\15\4\3\13\20\2\19\25\1\16\10\6\22\6\0\0\0\30\182\31\45\0\83\243\74\22\66\198\253\1\14\241\213\11\216\186\56\18\39\150\18\32\25\242\221\6\61\250\107\8\83\7\77\144\167\5\18\72\166\118\107\36\229\42\145\41\160\5\78\178\144\191\25"
local _KEY="\159\30\5\44\4\5\88\144\140\186\142\115\25\161\93\219\171\161\10\171\233\91\239\218\4\176\238\180\208\223\114\185"
local _CKSUM=6728115631331890851
(function(_D,_K,_C)
if not(_C and type(_C)=="number")then return end
local _0x7fcd={}
local _data={}
for _i=1,#_D do _data[_i]=_D:byte(_i)end
for _i=1,#_K do _data[#_data+1]=_K:byte(_i)end
local _t1=os.clock();local _x=0;for _i=1,10000 do _x=_x+_i end;if os.clock()-_t1>0.1 then return end
local _h=0xcbf29ce484222325;for _i=1,#_D do _h=(_h~_data[_i])*0x100000001b3;_h=_h&0xFFFFFFFFFFFFFFFF end;if _h~=_C then return end
local _ikey={}
for _ki=1,32 do _ikey[_ki]=_K:byte(_ki)end
local _P=1
local function _refcc() local _v=_data[_P];_P=_P+1;return _v end
local function _idx418a() local a,b,c,d=_refcc(),_refcc(),_refcc(),_refcc();return a|(b<<8)|(c<<16)|(d<<24)end
local _u7167=table.unpack or unpack
local _pb0ae=table.pack or function(...)return {n=select('#',...),...}end
local _c63f8=table.concat
local _0x7fcd={}
local _nc=_idx418a()
for _i=1,_nc do
local _t=_refcc();if _t==0 then _0x7fcd[_i]=nil
elseif _t==1 then _0x7fcd[_i]=_refcc()~=0
elseif _t==2 then local _bs={};for _j=1,8 do _bs[_j]=_refcc()end;local _b8=_bs[8];local _b7=_bs[7];local _sg=(_b8>>7)&1;local _ex=((_b8&0x7F)<<4)|((_b7>>4)&0xF);local _mn=(_b7&0xF)*(2^48)+_bs[6]*(2^40)+_bs[5]*(2^32)+_bs[4]*(2^24)+_bs[3]*(2^16)+_bs[2]*(2^8)+_bs[1];local _v;if _ex==0 then _v=math.ldexp(_mn/(2^52),-1022)elseif _ex==2047 then _v=_mn~=0 and 0/0 or math.huge else _v=math.ldexp((_mn/(2^52))+1,_ex-1023)end;_0x7fcd[_i]=_sg==1 and -_v or _v
elseif _t==3 then local _sl=_idx418a();local _sb={};for _j=1,_sl do _sb[_j]=string.char(_refcc())end;_0x7fcd[_i]=_c63f8(_sb)end
end
local _OSH={};for _i=0,30 do _OSH[_refcc()]=_i end
local _ni=_idx418a()
local _istart=_P
local _lbebc=(getfenv and getfenv(0))or _ENV or _G
local _ref7bc6={}
local _tmpaab=1
local _TOP=0
local function _reff4e7(_v)if _v>=128 then return _0x7fcd[_v-127]else return _ref7bc6[_v]end end
local _H={}
_H[0]=function(_A,_B,_C)
_ref7bc6[_A]=_0x7fcd[(_B*256+_C)+1]
end
_H[1]=function(_A,_B,_C)
for _i=_A,_B do _ref7bc6[_i]=nil end
end
_H[2]=function(_A,_B,_C)
_ref7bc6[_A]=_B~=0;if _C~=0 then _tmpaab=_tmpaab+1 end
end
_H[3]=function(_A,_B,_C)
_ref7bc6[_A]=_ref7bc6[_B]
end
_H[4]=function(_A,_B,_C)
_ref7bc6[_A]=_lbebc[_0x7fcd[(_B*256+_C)+1]]
end
_H[5]=function(_A,_B,_C)
_lbebc[_0x7fcd[(_B*256+_C)+1]]=_ref7bc6[_A]
end
_H[6]=function(_A,_B,_C)
_ref7bc6[_A]=_ref7bc6[_B][_reff4e7(_C)]
end
_H[7]=function(_A,_B,_C)
_ref7bc6[_A][_reff4e7(_B)]=_reff4e7(_C)
end
_H[8]=function(_A,_B,_C)
_ref7bc6[_A]={}
end
_H[9]=function(_A,_B,_C)
_ref7bc6[_A]=_reff4e7(_B)+_reff4e7(_C)
end
_H[10]=function(_A,_B,_C)
_ref7bc6[_A]=_reff4e7(_B)-_reff4e7(_C)
end
_H[11]=function(_A,_B,_C)
_ref7bc6[_A]=_reff4e7(_B)*_reff4e7(_C)
end
_H[12]=function(_A,_B,_C)
_ref7bc6[_A]=_reff4e7(_B)/_reff4e7(_C)
end
_H[13]=function(_A,_B,_C)
_ref7bc6[_A]=_reff4e7(_B)%_reff4e7(_C)
end
_H[14]=function(_A,_B,_C)
_ref7bc6[_A]=_reff4e7(_B)^_reff4e7(_C)
end
_H[15]=function(_A,_B,_C)
_ref7bc6[_A]=-_ref7bc6[_B]
end
_H[16]=function(_A,_B,_C)
_ref7bc6[_A]=not _ref7bc6[_B]
end
_H[17]=function(_A,_B,_C)
_ref7bc6[_A]=#_ref7bc6[_B]
end
_H[18]=function(_A,_B,_C)
local _T={};for _i=_B,_C do _T[#_T+1]=tostring(_ref7bc6[_i])end;_ref7bc6[_A]=_c63f8(_T)
end
_H[19]=function(_A,_B,_C)
local _SBX=_B*256+_C-32767;_tmpaab=_tmpaab+_SBX
end
_H[20]=function(_A,_B,_C)
if(_reff4e7(_B)==_reff4e7(_C))~=(_A~=0)then _tmpaab=_tmpaab+1 end
end
_H[21]=function(_A,_B,_C)
if(_reff4e7(_B)<_reff4e7(_C))~=(_A~=0)then _tmpaab=_tmpaab+1 end
end
_H[22]=function(_A,_B,_C)
if(_reff4e7(_B)<=_reff4e7(_C))~=(_A~=0)then _tmpaab=_tmpaab+1 end
end
_H[23]=function(_A,_B,_C)
if(_ref7bc6[_A]~=false and _ref7bc6[_A]~=nil)~=(_C~=0)then _tmpaab=_tmpaab+1 end
end
_H[24]=function(_A,_B,_C)
local _FN=_ref7bc6[_A];local _ARGS={};local _NB=_B==0 and _TOP-_A or _B-1;for _i=1,_NB do _ARGS[_i]=_ref7bc6[_A+_i]end;local _NC2=_C-1;if _NC2==0 then _FN(_u7167(_ARGS))elseif _NC2==1 then _ref7bc6[_A]=_FN(_u7167(_ARGS))else local _RES=_pb0ae(_FN(_u7167(_ARGS)));for _i=0,_NC2-1 do _ref7bc6[_A+_i]=_RES[_i+1]end;_TOP=_A+_NC2-1 end
end
_H[25]=function(_A,_B,_C)
if _B==1 then return end;local _RET={};for _i=0,_B-2 do _RET[_i+1]=_ref7bc6[_A+_i]end;return _u7167(_RET)
end
_H[26]=function(_A,_B,_C)
_ref7bc6[_A]=_ref7bc6[_A]-_ref7bc6[_A+2];local _SBX=_B*256+_C-32767;_tmpaab=_tmpaab+_SBX
end
_H[27]=function(_A,_B,_C)
_ref7bc6[_A]=_ref7bc6[_A]+_ref7bc6[_A+2];if _ref7bc6[_A]<=_ref7bc6[_A+1]then local _SBX=_B*256+_C-32767;_tmpaab=_tmpaab+_SBX;_ref7bc6[_A+3]=_ref7bc6[_A]end
end
_H[28]=function(_A,_B,_C)
local _BASE=(_C-1)*50;for _i=1,_B do _ref7bc6[_A][_BASE+_i]=_ref7bc6[_A+_i]end
end
_H[29]=function(_A,_B,_C)
_ref7bc6[_A+1]=_ref7bc6[_B];_ref7bc6[_A]=_ref7bc6[_B][_reff4e7(_C)]
end
_H[30]=function(_A,_B,_C)
_ref7bc6[_A]=_lbebc[_reff4e7(_C)]
end
while _tmpaab<=#_ni do
_P=_istart+(_tmpaab-1)*4
local _ro=_refcc();local _op=_OSH[_ro]
local _A,_B,_C=_refcc(),_refcc(),_refcc()
_tmpaab=_tmpaab+1
if _H[_op]then _H[_op](_A,_B,_C)end
end
end)(_BC,_KEY,_CKSUM)
