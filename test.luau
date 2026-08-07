-- Protected by Advanced Obfuscator v3.1 FIXED
local _BC="\68\86\77\33\2\0\0\0\243\5\0\0\0\172\66\114\89\128\172\7\0\0\0\125\125\89\149\214\137\193\5\16\0\20\13\30\26\27\25\15\1\18\10\7\2\23\24\17\28\4\12\19\11\8\29\22\9\3\6\21\14\3\0\0\0\253\175\251\172\225\193\45\16\46\236\178\251\70\65\243\198\203\177\237\14\215\118\1\180\94\220\112\145\104\71\6\127\185\115\209\54\91\114\181\16\245\183\147\177"
local _KEY="\240\175\251\172\236\192\45\17\56\236\179\251\178\34\241\145\243\84\189\70\26\136\164\203\72\121\137\39\100\188\28\9"
local _CS=1783559221
(function(_D,_K,_C)
if not(_C and type(_C)=="number")then return end
local _data={}
for _i=1,#_D do _data[_i]=_D:byte(_i)end
local _key={}
for _i=1,#_K do _key[_i]=_K:byte(_i)end
local _t=os.clock();local _x=0;for _i=1,10000 do _x=_x+_i end
if os.clock()-_t>0.1 then return end
local _h=0x811c9dc5
for _i=1,#_data do
_h=((_h*0x01000193)%0x100000000)~_data[_i]
end
if _h~=_C then return end
local _P=1
local function _data83c5()local _v=_data[_P];_P=_P+1;return _v end
local function _r6069()local a,b,c,d=_data83c5(),_data83c5(),_data83c5(),_data83c5();return a|(b<<8)|(c<<16)|(d<<24)end
local _m1,_m2,_m3,_m4=_data83c5(),_data83c5(),_data83c5(),_data83c5()
if _m1~=0x44 or _m2~=0x56 or _m3~=0x4D or _m4~=0x21 then return end
local _v4b06=table.unpack or unpack
local _va95e=table.pack or function(...)return {n=select('#',...),...}end
local _tmpca98=table.concat
local _r3623={}
local _nc=_r6069()
for _i=1,_nc do
local _ci=_i-1;local _xk=_key[(_ci%32)+1]
local _t=_data83c5()~_xk
if _t==0 then _r3623[_i]=nil
elseif _t==1 then _r3623[_i]=_data83c5()~=0
elseif _t==2 then
local _bs={}
for _j=1,8 do _bs[_j]=_data83c5()~_key[((_ci+_j)%32)+1]end
local _b8=_bs[8];local _b7=_bs[7]
local _sg=(_b8>>7)&1
local _ex=((_b8&0x7F)<<4)|((_b7>>4)&0xF)
local _mn=(_b7&0xF)*(2^48)+_bs[6]*(2^40)+_bs[5]*(2^32)+_bs[4]*(2^24)+_bs[3]*(2^16)+_bs[2]*(2^8)+_bs[1]
local _v
if _ex==0 then _v=math.ldexp(_mn/(2^52),-1022)
elseif _ex==2047 then _v=_mn~=0 and 0/0 or math.huge
else _v=math.ldexp((_mn/(2^52))+1,_ex-1023)end
_r3623[_i]=_sg==1 and -_v or _v
elseif _t==3 then
local _sl=_r6069()
local _sb={}
for _j=1,_sl do _sb[_j]=string.char(_data83c5()~_key[((_ci+_j+4)%32)+1])end
_r3623[_i]=_tmpca98(_sb)
end
end
local _OSH={}
for _i=0,30 do _OSH[_data83c5()]=_i end
local _ni=_r6069()
local _istart=_P
local _rawget=rawget
local _rawset=rawset
local _setmeta=setmetatable
local _pairs=pairs
local _rawENV=_ENV or _G
local _r5b1c={}
for _ek,_ev in _pairs(_rawENV) do _rawset(_r5b1c,_ek,_ev) end
_setmeta(_r5b1c,{__newindex=function()end,__index=function(_,k)return _rawENV[k]end})
local _ptrcb7e={}
local _r1207=1
local _TOP=0
local function _0xe1bd(_v)
if _v>=128 then return _r3623[_v-127]else return _ptrcb7e[_v]end
end
local _H={}
_H[0]=function(_A,_B,_C)
_ptrcb7e[_A]=_r3623[(_B*256+_C)+1]
end
_H[1]=function(_A,_B,_C)
for _i=_A,_B do _ptrcb7e[_i]=nil end
end
_H[2]=function(_A,_B,_C)
_ptrcb7e[_A]=_B~=0;if _C~=0 then _r1207=_r1207+1 end
end
_H[3]=function(_A,_B,_C)
_ptrcb7e[_A]=_ptrcb7e[_B]
end
_H[4]=function(_A,_B,_C)
_ptrcb7e[_A]=_r5b1c[_r3623[(_B*256+_C)+1]]
end
_H[5]=function(_A,_B,_C)
_r5b1c[_r3623[(_B*256+_C)+1]]=_ptrcb7e[_A]
end
_H[6]=function(_A,_B,_C)
_ptrcb7e[_A]=_ptrcb7e[_B][_0xe1bd(_C)]
end
_H[7]=function(_A,_B,_C)
_ptrcb7e[_A][_0xe1bd(_B)]=_0xe1bd(_C)
end
_H[8]=function(_A,_B,_C)
_ptrcb7e[_A]={}
end
_H[9]=function(_A,_B,_C)
_ptrcb7e[_A]=_0xe1bd(_B)+_0xe1bd(_C)
end
_H[10]=function(_A,_B,_C)
_ptrcb7e[_A]=_0xe1bd(_B)-_0xe1bd(_C)
end
_H[11]=function(_A,_B,_C)
_ptrcb7e[_A]=_0xe1bd(_B)*_0xe1bd(_C)
end
_H[12]=function(_A,_B,_C)
_ptrcb7e[_A]=_0xe1bd(_B)/_0xe1bd(_C)
end
_H[13]=function(_A,_B,_C)
_ptrcb7e[_A]=_0xe1bd(_B)%_0xe1bd(_C)
end
_H[14]=function(_A,_B,_C)
_ptrcb7e[_A]=_0xe1bd(_B)^_0xe1bd(_C)
end
_H[15]=function(_A,_B,_C)
_ptrcb7e[_A]=-_ptrcb7e[_B]
end
_H[16]=function(_A,_B,_C)
_ptrcb7e[_A]=not _ptrcb7e[_B]
end
_H[17]=function(_A,_B,_C)
_ptrcb7e[_A]=#_ptrcb7e[_B]
end
_H[18]=function(_A,_B,_C)
local _T={};for _i=_B,_C do _T[#_T+1]=tostring(_ptrcb7e[_i])end;_ptrcb7e[_A]=_tmpca98(_T)
end
_H[19]=function(_A,_B,_C)
local _SBX=_B*256+_C-32767;_r1207=_r1207+_SBX
end
_H[20]=function(_A,_B,_C)
if(_0xe1bd(_B)==_0xe1bd(_C))~=(_A~=0)then _r1207=_r1207+1 end
end
_H[21]=function(_A,_B,_C)
if(_0xe1bd(_B)<_0xe1bd(_C))~=(_A~=0)then _r1207=_r1207+1 end
end
_H[22]=function(_A,_B,_C)
if(_0xe1bd(_B)<=_0xe1bd(_C))~=(_A~=0)then _r1207=_r1207+1 end
end
_H[23]=function(_A,_B,_C)
if(_ptrcb7e[_A]~=false and _ptrcb7e[_A]~=nil)~=(_C~=0)then _r1207=_r1207+1 end
end
_H[24]=function(_A,_B,_C)
local _FN=_ptrcb7e[_A];local _ARGS={};local _NB=_B==0 and _TOP-_A or _B-1;for _i=1,_NB do _ARGS[_i]=_ptrcb7e[_A+_i]end;local _NC2=_C-1;if _NC2==0 then _FN(_v4b06(_ARGS))elseif _NC2==1 then _ptrcb7e[_A]=_FN(_v4b06(_ARGS))else local _RES=_va95e(_FN(_v4b06(_ARGS)));for _i=0,_NC2-1 do _ptrcb7e[_A+_i]=_RES[_i+1]end;_TOP=_A+_NC2-1 end
end
_H[25]=function(_A,_B,_C)
if _B==1 then return end;local _RET={};for _i=0,_B-2 do _RET[_i+1]=_ptrcb7e[_A+_i]end;return _v4b06(_RET)
end
_H[26]=function(_A,_B,_C)
_ptrcb7e[_A]=_ptrcb7e[_A]-_ptrcb7e[_A+2];local _SBX=_B*256+_C-32767;_r1207=_r1207+_SBX
end
_H[27]=function(_A,_B,_C)
_ptrcb7e[_A]=_ptrcb7e[_A]+_ptrcb7e[_A+2];if _ptrcb7e[_A]<=_ptrcb7e[_A+1]then local _SBX=_B*256+_C-32767;_r1207=_r1207+_SBX;_ptrcb7e[_A+3]=_ptrcb7e[_A]end
end
_H[28]=function(_A,_B,_C)
local _BASE=(_C-1)*50;for _i=1,_B do _ptrcb7e[_A][_BASE+_i]=_ptrcb7e[_A+_i]end
end
_H[29]=function(_A,_B,_C)
_ptrcb7e[_A+1]=_ptrcb7e[_B];_ptrcb7e[_A]=_ptrcb7e[_B][_0xe1bd(_C)]
end
_H[30]=function(_A,_B,_C)
_ptrcb7e[_A]=_r5b1c[_0xe1bd(_C)]
end
while _r1207<=_ni do
local _ii=_r1207-1
_P=_istart+_ii*4
local _ro=_data83c5()~_key[(_ii*4%32)+1]
local _op=_OSH[_ro]
local _A=_data83c5()~_key[((_ii*4+1)%32)+1]
local _B=_data83c5()~_key[((_ii*4+2)%32)+1]
local _C=_data83c5()~_key[((_ii*4+3)%32)+1]
_r1207=_r1207+1
if _H[_op]then _H[_op](_A,_B,_C)end
end
end)(_BC,_KEY,_CS)
