ÿ0
rC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.Service\Services\AdvanceConnectionService.cs
	namespace 	
AdvanceManagement
 
. 
UI 
. 
Service &
.& '
Services' /
{ 
public 

class $
AdvanceConnectionService )
{ 

HttpClient 
_client 
; 
public $
AdvanceConnectionService '
(' (

HttpClient( 2
client3 9
)9 :
{ 	
_client 
= 
client 
; 
} 	
public 
async 
Task 
< 
bool 
> 

AddAdvance  *
(* +
AdvanceAddDTO+ 8
advance9 @
)@ A
{ 	
StringContent 
stringContent '
=( )
new* -
StringContent. ;
(; <
JsonConvert< G
.G H
SerializeObjectH W
(W X
advanceX _
)_ `
)` a
;a b
stringContent 
. 
Headers !
.! "
ContentType" -
=. /
new0 3 
MediaTypeHeaderValue4 H
(H I
$strI [
)[ \
;\ ]
var 

donendeger 
= 
await "
_client# *
.* +
	PostAsync+ 4
(4 5
$str5 E
,E F
stringContentG T
)T U
;U V
if 
( 

donendeger 
. 
IsSuccessStatusCode .
). /
{   
return!! 
true!! 
;!! 
}"" 
return$$ 
false$$ 
;$$ 
}%% 	
public'' 
async'' 
Task'' 
<'' 
List'' 
<'' 
AdvanceSelectDTO'' /
>''/ 0
>''0 1
BringAll''2 :
('': ;
int''; >
workerID''? G
)''G H
{(( 	
var)) 
value)) 
=)) 
await)) 
_client)) %
.))% &
GetAsync))& .
()). /
$"))/ 1
$str))1 9
{))9 :
workerID)): B
}))B C
"))C D
)))D E
;))E F
if++ 
(++ 
value++ 
.++ 
IsSuccessStatusCode++ (
)++( )
{,, 
return-- 
JsonConvert-- "
.--" #
DeserializeObject--# 4
<--4 5
List--5 9
<--9 :
AdvanceSelectDTO--: J
>--J K
>--K L
(--L M
await--M R
value--S X
.--X Y
Content--Y `
.--` a
ReadAsStringAsync--a r
(--r s
)--s t
)--t u
;--u v
}.. 
return// 
null// 
;// 
}00 	
public22 
async22 
Task22 
<22 
AdvanceSelectDTO22 *
>22* +
BringByAdvanceID22, <
(22< =
int22= @
	advanceID22A J
)22J K
{33 	
var44 
value44 
=44 
await44 
_client44 %
.44% &
GetAsync44& .
(44. /
$"44/ 1
$str441 J
{44J K
	advanceID44K T
}44T U
"44U V
)44V W
;44W X
if66 
(66 
value66 
.66 
IsSuccessStatusCode66 )
)66) *
{77 
return88 
JsonConvert88 "
.88" #
DeserializeObject88# 4
<884 5
AdvanceSelectDTO885 E
>88E F
(88F G
await88G L
value88M R
.88R S
Content88S Z
.88Z [
ReadAsStringAsync88[ l
(88l m
)88m n
)88n o
;88o p
}99 
return:: 
null:: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
List== 
<== 
AdvanceSelectDTO== /
>==/ 0
>==0 1
BringAllForFinance==2 D
(==D E
)==E F
{>> 	
var?? 
value?? 
=?? 
await?? 
_client?? %
.??% &
GetAsync??& .
(??. /
$str??/ >
)??> ?
;??? @
ifAA 
(AA 
valueAA 
.AA 
IsSuccessStatusCodeAA )
)AA) *
{BB 
returnCC 
JsonConvertCC "
.CC" #
DeserializeObjectCC# 4
<CC4 5
ListCC5 9
<CC9 :
AdvanceSelectDTOCC: J
>CCJ K
>CCK L
(CCL M
awaitCCM R
valueCCS X
.CCX Y
ContentCCY `
.CC` a
ReadAsStringAsyncCCa r
(CCr s
)CCs t
)CCt u
;CCu v
}DD 
returnEE 
nullEE 
;EE 
}FF 	
publicII 
asyncII 
TaskII 
<II 
ListII 
<II 
AdvanceSelectDTOII /
>II/ 0
>II0 1!
BringAllForAccountantII2 G
(IIG H
)IIH I
{JJ 	
varKK 
valueKK 
=KK 
awaitKK 
_clientKK %
.KK% &
GetAsyncKK& .
(KK. /
$strKK/ A
)KKA B
;KKB C
ifMM 
(MM 
valueMM 
.MM 
IsSuccessStatusCodeMM )
)MM) *
{NN 
returnOO 
JsonConvertOO "
.OO" #
DeserializeObjectOO# 4
<OO4 5
ListOO5 9
<OO9 :
AdvanceSelectDTOOO: J
>OOJ K
>OOK L
(OOL M
awaitOOM R
valueOOS X
.OOX Y
ContentOOY `
.OO` a
ReadAsStringAsyncOOa r
(OOr s
)OOs t
)OOt u
;OOu v
}PP 
returnQQ 
nullQQ 
;QQ 
}RR 	
}SS 
}TT À+
C:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.Service\Services\AdvanceRequestStatusConnectionService.cs
	namespace 	
AdvanceManagement
 
. 
UI 
. 
Service &
.& '
Services' /
{ 
public 

class 1
%AdvanceRequestStatusConnectionService 6
{ 

HttpClient 
_client 
; 
public 1
%AdvanceRequestStatusConnectionService 4
(4 5

HttpClient5 ?
client@ F
)F G
{ 	
_client 
= 
client 
; 
} 	
public 
async 
Task 
< 
List 
< )
AdvanceRequestStatusSelectDTO <
>< =
>= >
BringStatus? J
(J K
intK N
	advanceIDO X
)X Y
{ 	
var 
value 
= 
await 
_client %
.% &
GetAsync& .
(. /
$"/ 1
$str1 F
{F G
	advanceIDG P
}P Q
"Q R
)R S
;S T
if 
( 
value 
. 
IsSuccessStatusCode )
)) *
{ 
return 
JsonConvert "
." #
DeserializeObject# 4
<4 5
List5 9
<9 :)
AdvanceRequestStatusSelectDTO: W
>W X
>X Y
(Y Z
awaitZ _
value` e
.e f
Contentf m
.m n
ReadAsStringAsyncn 
(	 Ä
)
Ä Å
)
Å Ç
;
Ç É
} 
return   
null   
;   
}!! 	
public$$ 
async$$ 
Task$$ 
<$$ 
List$$ 
<$$ )
AdvanceRequestStatusSelectDTO$$ <
>$$< =
>$$= >
BringApproveStatus$$? Q
($$Q R
int$$R U
titleID$$V ]
)$$] ^
{%% 	
var&& 
value&& 
=&& 
await&& 
_client&& %
.&&% &
GetAsync&&& .
(&&. /
$"&&/ 1
$str&&1 V
{&&V W
titleID&&W ^
}&&^ _
"&&_ `
)&&` a
;&&a b
if(( 
((( 
value(( 
.(( 
IsSuccessStatusCode(( )
)(() *
{)) 
return++ 
JsonConvert++ "
.++" #
DeserializeObject++# 4
<++4 5
List++5 9
<++9 :)
AdvanceRequestStatusSelectDTO++: W
>++W X
>++X Y
(++Y Z
await++Z _
value++` e
.++e f
Content++f m
.++m n
ReadAsStringAsync++n 
(	++ Ä
)
++Ä Å
)
++Å Ç
;
++Ç É
},, 
return-- 
null-- 
;-- 
}.. 	
public00 
async00 
Task00 
<00 
List00 
<00 )
AdvanceRequestStatusSelectDTO00 <
>00< =
>00= >"
BringApproveUnitStatus00? U
(00U V
int00V Y
titleID00Z a
)00a b
{11 	
var22 
value22 
=22 
await22 
_client22 %
.22% &
GetAsync22& .
(22. /
$"22/ 1
$str221 [
{22[ \
titleID22\ c
}22c d
"22d e
)22e f
;22f g
if44 
(44 
value44 
.44 
IsSuccessStatusCode44 )
)44) *
{55 
return77 
JsonConvert77 "
.77" #
DeserializeObject77# 4
<774 5
List775 9
<779 :)
AdvanceRequestStatusSelectDTO77: W
>77W X
>77X Y
(77Y Z
await77Z _
value77` e
.77e f
Content77f m
.77m n
ReadAsStringAsync77n 
(	77 Ä
)
77Ä Å
)
77Å Ç
;
77Ç É
}88 
return99 
null99 
;99 
}:: 	
public<< 
async<< 
Task<< 
<<< 
bool<< 
><< "
ApproveOrDeclineStatus<<  6
(<<6 7)
AdvanceRequestStatusUpdateDTO<<7 T
request<<U \
)<<\ ]
{== 	
StringContent>> 
stringContent>> '
=>>( )
new>>* -
StringContent>>. ;
(>>; <
JsonConvert>>< G
.>>G H
SerializeObject>>H W
(>>W X
request>>X _
)>>_ `
)>>` a
;>>a b
stringContent?? 
.?? 
Headers?? !
.??! "
ContentType??" -
=??. /
new??0 3 
MediaTypeHeaderValue??4 H
(??H I
$str??I [
)??[ \
;??\ ]
var@@ 

donendeger@@ 
=@@ 
await@@ "
_client@@# *
.@@* +
PutAsync@@+ 3
(@@3 4
$str@@4 J
,@@J K
stringContent@@L Y
)@@Y Z
;@@Z [
ifBB 
(BB 

donendegerBB 
.BB 
IsSuccessStatusCodeBB .
)BB. /
{CC 
returnDD 
trueDD 
;DD 
}EE 
returnGG 
falseGG 
;GG 
}HH 	
}JJ 
}KK •
yC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.Service\Services\FinanceManagerConnectionService.cs
	namespace 	
AdvanceManagement
 
. 
UI 
. 
Service &
.& '
Services' /
{ 
public 

class +
FinanceManagerConnectionService 0
{ 

HttpClient 
_client 
; 
public +
FinanceManagerConnectionService .
(. /

HttpClient/ 9
client: @
)@ A
{ 	
_client 
= 
client 
; 
} 	
public 
async 
Task 
< 
bool 
> 

AddFinance  *
(* + 
FinanceManagerAddDTO+ ?
finance@ G
)G H
{ 	
StringContent 
stringContent '
=( )
new* -
StringContent. ;
(; <
JsonConvert< G
.G H
SerializeObjectH W
(W X
financeX _
)_ `
)` a
;a b
stringContent 
. 
Headers !
.! "
ContentType" -
=. /
new0 3 
MediaTypeHeaderValue4 H
(H I
$strI [
)[ \
;\ ]
var 
value 
= 
await 
_client %
.% &
	PostAsync& /
(/ 0
$str0 <
,< =
stringContent> K
)K L
;L M
if 
( 
value 
. 
IsSuccessStatusCode )
)) *
{ 
return   
true   
;   
}!! 
return## 
false## 
;## 
}$$ 	
}%% 
}&& µ#
pC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.Service\Services\LoginConnectionService.cs
	namespace 	
AdvanceManagement
 
. 
UI 
. 
Service &
.& '
Services' /
{ 
public 

class "
LoginConnectionService '
{ 

HttpClient 
_client 
; 
public "
LoginConnectionService %
(% &

HttpClient& 0
client1 7
)7 8
{ 	
_client 
= 
client 
; 
} 	
public 
async 
Task 
< 
string  
>  !
Login" '
(' (
UserDTO( /
dto0 3
)3 4
{ 	
StringContent 
stringContent '
=( )
new* -
StringContent. ;
(; <
JsonConvert< G
.G H
SerializeObjectH W
(W X
dtoX [
)[ \
)\ ]
;] ^
stringContent 
. 
Headers !
.! "
ContentType" -
=. /
new0 3 
MediaTypeHeaderValue4 H
(H I
$strI [
)[ \
;\ ]
var 
value 
= 
await 
_client %
.% &
	PostAsync& /
(/ 0
$str0 7
,7 8
stringContent9 F
)F G
;G H
if!! 
(!! 
value!! 
.!! 
IsSuccessStatusCode!! )
)!!) *
{"" 
var## 
token## 
=## 
await## !
value##" '
.##' (
Content##( /
.##/ 0
ReadAsStringAsync##0 A
(##A B
)##B C
;##C D
return$$ 
token$$ 
;$$ 
}%% 
return'' 
$str'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
bool** 
>** 
Register**  (
(**( )
RegisterDTO**) 4
register**5 =
)**= >
{++ 	
StringContent,, 
stringContent,, '
=,,( )
new,,* -
StringContent,,. ;
(,,; <
JsonConvert,,< G
.,,G H
SerializeObject,,H W
(,,W X
register,,X `
),,` a
),,a b
;,,b c
stringContent-- 
.-- 
Headers-- !
.--! "
ContentType--" -
=--. /
new--0 3 
MediaTypeHeaderValue--4 H
(--H I
$str--I [
)--[ \
;--\ ]
var.. 
value.. 
=.. 
await.. 
_client.. %
...% &
	PostAsync..& /
(../ 0
$str..0 :
,..: ;
stringContent..< I
)..I J
;..J K
if00 
(00 
value00 
.00 
IsSuccessStatusCode00 )
)00) *
{11 
return22 
true22 
;22 
}33 
return55 
false55 
;55 
}66 	
public99 
async99 
Task99 
<99 
List99 
<99 &
PageAuthorizationSelectDTO99 9
>999 :
>99: ;
GetAuthorization99< L
(99L M
string99M S
username99T \
)99\ ]
{:: 	
var<< 
value<< 
=<< 
await<< 
_client<< %
.<<% &
GetAsync<<& .
(<<. /
$"<</ 1
$str<<1 7
{<<7 8
username<<8 @
}<<@ A
"<<A B
)<<B C
;<<C D
if>> 
(>> 
value>> 
.>> 
IsSuccessStatusCode>> )
)>>) *
{?? 
return@@ 
JsonConvert@@ "
.@@" #
DeserializeObject@@# 4
<@@4 5
List@@5 9
<@@9 :&
PageAuthorizationSelectDTO@@: T
>@@T U
>@@U V
(@@V W
await@@W \
value@@] b
.@@b c
Content@@c j
.@@j k
ReadAsStringAsync@@k |
(@@| }
)@@} ~
)@@~ 
;	@@ Ä
}AA 
returnCC 
nullCC 
;CC 
}DD 	
}EE 
}FF ¨
yC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.Service\Services\PaymentReceiptControllerService.cs
	namespace 	
AdvanceManagement
 
. 
UI 
. 
Service &
.& '
Services' /
{ 
public 

class +
PaymentReceiptControllerService 0
{ 

HttpClient 
_client 
; 
public +
PaymentReceiptControllerService .
(. /

HttpClient/ 9
client: @
)@ A
{ 	
_client 
= 
client 
; 
} 	
public 
async 
Task 
< 
bool 
> 
AddPaymentReceipt  1
(1 2 
PaymentReceiptAddDTO2 F
receiptG N
)N O
{ 	
StringContent 
stringContent '
=( )
new* -
StringContent. ;
(; <
JsonConvert< G
.G H
SerializeObjectH W
(W X
receiptX _
)_ `
)` a
;a b
stringContent 
. 
Headers !
.! "
ContentType" -
=. /
new0 3 
MediaTypeHeaderValue4 H
(H I
$strI [
)[ \
;\ ]
var 
value 
= 
await 
_client %
.% &
	PostAsync& /
(/ 0
$str0 C
,C D
stringContentE R
)R S
;S T
if 
( 
value 
. 
IsSuccessStatusCode )
)) *
{ 
return 
true 
; 
}   
return"" 
false"" 
;"" 
}## 	
}$$ 
}%% º
rC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.Service\Services\ProjectConnectionService.cs
	namespace		 	
AdvanceManagement		
 
.		 
UI		 
.		 
Service		 &
.		& '
Services		' /
{

 
public 

class $
ProjectConnectionService )
{ 

HttpClient 
_client 
; 
public $
ProjectConnectionService '
(' (

HttpClient( 2
client3 9
)9 :
{ 	
_client 
= 
client 
; 
} 	
public 
async 
Task 
< 
List 
< 
ProjectSelectDTO /
>/ 0
>0 1
BringProject2 >
(> ?
int? B
workerIDC K
)K L
{ 	
var 
value 
= 
await 
_client %
.% &
GetAsync& .
(. /
$"/ 1
$str1 9
{9 :
workerID: B
}B C
"C D
)D E
;E F
if 
( 
value 
. 
IsSuccessStatusCode )
)) *
{ 
return 
JsonConvert "
." #
DeserializeObject# 4
<4 5
List5 9
<9 :
ProjectSelectDTO: J
>J K
>K L
(L M
awaitM R
valueS X
.X Y
ContentY `
.` a
ReadAsStringAsynca r
(r s
)s t
)t u
;u v
} 
return 
null 
; 
} 	
}   
}!! 