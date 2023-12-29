Ó
ÜC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\Complex\AccountantAdvanceDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
UI		 
.		 
DataTransfer		 +
.		+ ,
DataTransferObjects		, ?
.		? @
Complex		@ G
{

 
public 

class  
AccountantAdvanceDTO %
{ 
public 
AdvanceSelectDTO 
Advance  '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< )
AdvanceRequestStatusSelectDTO 1
>1 2 
AdvanceRequestStatus3 G
{H I
getJ M
;M N
setO R
;R S
}T U
} 
} û
ÉC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\Complex\ApproveAdvanceDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
UI		 
.		 
DataTransfer		 +
.		+ ,
DataTransferObjects		, ?
.		? @
Complex		@ G
{

 
public 

class 
ApproveAdvanceDTO "
{ 
public 
AdvanceSelectDTO 
Advance  '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< )
AdvanceRequestStatusSelectDTO 1
>1 2 
AdvanceRequestStatus3 G
{H I
getJ M
;M N
setO R
;R S
}T U
public 
int 
? "
AdvanceRequestStatusID *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} ø
zC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\Complex\ErrorDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
ComplexA H
{ 
public		 

class		 
ErrorDTO		 
{

 
public 
int 

StatusCode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
List 
< 
string 
> 
ErrorMessages )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
new: =
List> B
<B C
stringC I
>I J
(J K
)K L
;L M
} 
} Ë
ÉC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\Complex\FinanceAdvanceDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
UI		 
.		 
DataTransfer		 +
.		+ ,
DataTransferObjects		, ?
.		? @
Complex		@ G
{

 
public 

class 
FinanceAdvanceDTO "
{ 
public 
AdvanceSelectDTO 
Advance  '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< )
AdvanceRequestStatusSelectDTO 1
>1 2 
AdvanceRequestStatus3 G
{H I
getJ M
;M N
setO R
;R S
}T U
} 
} «	
zC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\Complex\LoginDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
UI		 
.		 
DataTransfer		 +
.		+ ,
DataTransferObjects		, ?
.		? @
Complex		@ G
{

 
public 

class 
LoginDTO 
{ 
public 
UserDTO 
User 
{ 
get !
;! "
set# &
;& '
}( )
=* +
new, /
UserDTO0 7
(7 8
)8 9
;9 :
public 

UserAddDTO 
UserAdd !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
new2 5

UserAddDTO6 @
(@ A
)A B
;B C
public 
WorkerAddDTO 
Worker "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
WorkerAddDTO7 C
(C D
)D E
;E F
} 
} –
}C:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\Complex\RegisterDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
Complex		A H
{

 
public 

class 
RegisterDTO 
{ 
public 

UserAddDTO 
User 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
new/ 2

UserAddDTO3 =
(= >
)> ?
;? @
public 
WorkerAddDTO 
Worker "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
WorkerAddDTO7 C
(C D
)D E
;E F
} 
} È
}C:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\Complex\SideMenuDTO.cs
	namespace 	
AdvanceManagement
 
. 
UI 
. 
DataTransfer +
.+ ,
DataTransferObjects, ?
.? @
Complex@ G
{		 
public

 

class

 
SideMenuDTO

 
{ 
public 
List 
< &
PageAuthorizationSelectDTO .
>. /
PageAuthoriation0 @
{A B
getC F
;F G
setH K
;K L
}M N
public 
string 

WorkerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Rolename 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ì
õC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTAdvanceRequestStatus\AdvanceRequestStatusAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A"
DTAdvanceRequestStatusA W
{ 
public 

record &
AdvanceRequestStatusAddDTO ,
{ 
public 
int "
AdvanceRequestStatusID )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 

StatusName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
? 
StatusDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public   
decimal   
ApprovedAmount   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
public## 
int## 
?## 
ApprovingRejectedID## '
{##( )
get##* -
;##- .
set##/ 2
;##2 3
}##4 5
public&& 
int&& 
?&& 
ApprovalStatusID&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
public** 
DateTime** 
?** 
ProcessDate** $
{**% &
get**' *
;*** +
set**, /
;**/ 0
}**1 2
public-- 
bool-- 
?-- 
IsActive-- 
{-- 
get--  #
;--# $
set--% (
;--( )
}--* +
public00 
int00 
?00 

ModifiedBy00 
{00  
get00! $
;00$ %
set00& )
;00) *
}00+ ,
public22 
DateTime22 
?22 
CreatedDate22 $
{22% &
get22' *
;22* +
set22, /
;22/ 0
}221 2
public66 
DateTime66 
?66 
ModifiedDate66 %
{66& '
get66( +
;66+ ,
set66- 0
;660 1
}662 3
public99 
int99 
?99 
	CreatedBy99 
{99 
get99  #
;99# $
set99% (
;99( )
}99* +
[>> 	
	NotMapped>>	 
]>> 
public?? 
AdvanceSelectDTO?? 
Advance??  '
{??( )
get??* -
;??- .
set??/ 2
;??2 3
}??4 5
[BB 	
	NotMappedBB	 
]BB 
publicCC #
FinanceManagerSelectDTOCC &
FinanceManagerCC' 5
{CC6 7
getCC8 ;
;CC; <
setCC= @
;CC@ A
}CCB C
[EE 	
	NotMappedEE	 
]EE 
publicFF #
ApprovalStatusSelectDTOFF &
ApprovalStatusFF' 5
{FF6 7
getFF8 ;
;FF; <
setFF= @
;FF@ A
}FFB C
[HH 	
	NotMappedHH	 
]HH 
publicII 
WorkerSelectDTOII 
WorkerII %
{II& '
getII( +
;II+ ,
setII- 0
;II0 1
}II2 3
[KK 	
	NotMappedKK	 
]KK 
publicLL 
ProjectSelectDTOLL 
ProjectLL  '
{LL( )
getLL* -
;LL- .
setLL/ 2
;LL2 3
}LL4 5
[NN 	
	NotMappedNN	 
]NN 
publicOO 
TitleSelectDTOOO 
TitleOO #
{OO$ %
getOO& )
;OO) *
setOO+ .
;OO. /
}OO0 1
}QQ 
}RR «!
ûC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTAdvanceRequestStatus\AdvanceRequestStatusSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A"
DTAdvanceRequestStatusA W
{ 
public 

record )
AdvanceRequestStatusSelectDTO /
{ 
public 
int "
AdvanceRequestStatusID )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 

StatusName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
? 
StatusDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public!! 
decimal!! 
ApprovedAmount!! %
{!!& '
get!!( +
;!!+ ,
set!!- 0
;!!0 1
}!!2 3
public$$ 
int$$ 
?$$ 
ApprovingRejectedID$$ '
{$$( )
get$$* -
;$$- .
set$$/ 2
;$$2 3
}$$4 5
public'' 
int'' 
?'' 
ApprovalStatusID'' $
{''% &
get''' *
;''* +
set'', /
;''/ 0
}''1 2
public++ 
DateTime++ 
?++ 
ProcessDate++ $
{++% &
get++' *
;++* +
set++, /
;++/ 0
}++1 2
public.. 
bool.. 
?.. 
IsActive.. 
{.. 
get..  #
;..# $
set..% (
;..( )
}..* +
public11 
int11 
?11 

ModifiedBy11 
{11  
get11! $
;11$ %
set11& )
;11) *
}11+ ,
public33 
DateTime33 
?33 
CreatedDate33 $
{33% &
get33' *
;33* +
set33, /
;33/ 0
}331 2
public77 
DateTime77 
?77 
ModifiedDate77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
public:: 
int:: 
?:: 
	CreatedBy:: 
{:: 
get::  #
;::# $
set::% (
;::( )
}::* +
[?? 	
	NotMapped??	 
]?? 
public@@ 
AdvanceSelectDTO@@ 
Advance@@  '
{@@( )
get@@* -
;@@- .
set@@/ 2
;@@2 3
}@@4 5
[CC 	
	NotMappedCC	 
]CC 
publicDD #
FinanceManagerSelectDTODD &
FinanceManagerDD' 5
{DD6 7
getDD8 ;
;DD; <
setDD= @
;DD@ A
}DDB C
[FF 	
	NotMappedFF	 
]FF 
publicGG #
ApprovalStatusSelectDTOGG &
ApprovalStatusGG' 5
{GG6 7
getGG8 ;
;GG; <
setGG= @
;GG@ A
}GGB C
[II 	
	NotMappedII	 
]II 
publicJJ 
WorkerSelectDTOJJ 
WorkerJJ %
{JJ& '
getJJ( +
;JJ+ ,
setJJ- 0
;JJ0 1
}JJ2 3
[LL 	
	NotMappedLL	 
]LL 
publicMM 
ProjectSelectDTOMM 
ProjectMM  '
{MM( )
getMM* -
;MM- .
setMM/ 2
;MM2 3
}MM4 5
[OO 	
	NotMappedOO	 
]OO 
publicPP 
TitleSelectDTOPP 
TitlePP #
{PP$ %
getPP& )
;PP) *
setPP+ .
;PP. /
}PP0 1
[QQ 	
	NotMappedQQ	 
]QQ 
publicRR 
UnitSelectDTORR 
UnitRR !
{RR" #
getRR$ '
;RR' (
setRR) ,
;RR, -
}RR. /
}TT 
}UU ≠
ûC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTAdvanceRequestStatus\AdvanceRequestStatusUpdateDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A"
DTAdvanceRequestStatusA W
{ 
public 

record )
AdvanceRequestStatusUpdateDTO /
{ 
public 
int "
AdvanceRequestStatusID )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
? 

StatusName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
? 
StatusDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
ApprovingRejectedID '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
decimal 
? 
ApprovedAmount &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
ProcessDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
public"" 
int"" 
?"" 

ModifiedBy"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
public$$ 
DateTime$$ 
?$$ 
ModifiedDate$$ %
{$$& '
get$$( +
;$$+ ,
set$$- 0
;$$0 1
}$$2 3
})) 
}** Ã
ÅC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTAdvance\AdvanceAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
	DTAdvanceA J
{		 
public

 

record

 
AdvanceAddDTO

 
{ 
public 
decimal 
? 
AdvanceAmount %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
? 
AdvanceExplanation )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
? 
WorkerID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? 
RequestDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
AmountPaymentDate *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
DateTime 
? 
PaybackDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? 
	ProjectID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
public"" 
List"" 
<"" 
SelectListItem"" "
>""" #
Projects""$ ,
{""- .
get""/ 2
;""2 3
set""4 7
;""7 8
}""9 :
}## 
}$$ ê
ÑC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTAdvance\AdvanceSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
	DTAdvanceA J
{ 
public 

record 
AdvanceSelectDTO "
{ 
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
decimal 
AdvanceAmount $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AdvanceExplanation (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
WorkerID 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
RequestDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
AmountPaymentDate )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public   
DateTime   
PaybackDate   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
int"" 
	ProjectID"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
public%% 
DateTime%% 
CreatedDate%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
public(( 
bool(( 
IsActive(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
[,, 	
	NotMapped,,	 
],, 
public-- )
AdvanceRequestStatusSelectDTO-- , 
AdvanceRequestStatus--- A
{--B C
get--D G
;--G H
set--I L
;--L M
}--N O
[// 	
	NotMapped//	 
]// 
public00 #
FinanceManagerSelectDTO00 &
FinanceManager00' 5
{006 7
get008 ;
;00; <
set00= @
;00@ A
}00B C
[22 	
	NotMapped22	 
]22 
public33 #
ApprovalStatusSelectDTO33 &
ApprovalStatus33' 5
{336 7
get338 ;
;33; <
set33= @
;33@ A
}33B C
[55 	
	NotMapped55	 
]55 
public66 
WorkerSelectDTO66 
Worker66 %
{66& '
get66( +
;66+ ,
set66- 0
;660 1
}662 3
[77 	
	NotMapped77	 
]77 
public88 
WorkerSelectDTO88 
AdvanceWorker88 ,
{88- .
get88/ 2
;882 3
set884 7
;887 8
}889 :
[:: 	
	NotMapped::	 
]:: 
public;; 
ProjectSelectDTO;; 
Project;;  '
{;;( )
get;;* -
;;;- .
set;;/ 2
;;;2 3
};;4 5
[== 	
	NotMapped==	 
]== 
public>> 
TitleSelectDTO>> 
Title>> #
{>>$ %
get>>& )
;>>) *
set>>+ .
;>>. /
}>>0 1
[?? 	
	NotMapped??	 
]?? 
public@@ 
UnitSelectDTO@@ 
Unit@@ !
{@@" #
get@@$ '
;@@' (
set@@) ,
;@@, -
}@@. /
}BB 
}CC ë
ÑC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTAdvance\AdvanceUpdateDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
	DTAdvanceA J
{ 
public		 

record		 
AdvanceUpdateDTO		 "
{

 
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
decimal 
AdvanceAmount $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AdvanceExplanation (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
WorkerID 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
RequestDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
AmountPaymentDate )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DateTime 
PaybackDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
	ProjectID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
bool   
IsActive   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
}!! 
}"" ¡
èC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTApprovalStatus\ApprovalStatusAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTApprovalStatusA Q
{ 
public		 

record		  
ApprovalStatusAddDTO		 &
{

 
public 
int 
ApprovalStatusID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ApprovalName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} «
íC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTApprovalStatus\ApprovalStatusSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTApprovalStatusA Q
{ 
public		 

record		 #
ApprovalStatusSelectDTO		 )
{

 
public 
int 
ApprovalStatusID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ApprovalName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} «
íC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTApprovalStatus\ApprovalStatusUpdateDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
DTApprovalStatus		A Q
{

 
public 

record #
ApprovalStatusUpdateDTO )
{ 
public 
int 
ApprovalStatusID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ApprovalName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
int   
	CreatedBy   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
}!! 
}"" Ê
èC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTFinanceManager\FinanceManagerAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTFinanceManagerA Q
{		 
public

 

record

  
FinanceManagerAddDTO

 &
{ 
public 
int 
WorkerID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime !
DeterminedPaymentDate -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ˚
íC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTFinanceManager\FinanceManagerSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTFinanceManagerA Q
{ 
public		 

record		 #
FinanceManagerSelectDTO		 )
{

 
public 
int 
WorkerID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? !
DeterminedPaymentDate .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ï
íC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTFinanceManager\FinanceManagerUpdateDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTFinanceManagerA Q
{ 
public		 

record		 #
FinanceManagerUpdateDTO		 )
{

 
public 
int 
WorkerID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime !
DeterminedPaymentDate -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ƒ
òC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTPageAuthorization\PageAuthorizationSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTPageAuthorizationA T
{		 
public

 

record

 &
PageAuthorizationSelectDTO

 ,
{ 
public 
int 
PageAuthorizationID &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string !
PageAuthorizationName +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string !
PageAuthorizationPath +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 

ModifiedBy 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
ModifiedDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public"" 
int"" 
?"" 
	CreatedBy"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
}## 
}$$ Ç
èC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTPaybackReceipt\PaybackReceiptAddDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
DTPaybackReceipt		A Q
{

 
public 

record  
PaybackReceiptAddDTO &
{ 
public 
int 
PaybackReceiptID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ReceiptDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ReceiptDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
public"" 
DateTime"" 
ModifiedDate"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
public%% 
DateTime%% 
CreatedDate%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
}&& 
}'' à
íC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTPaybackReceipt\PaybackReceiptSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTPaybackReceiptA Q
{ 
public		 

record		 #
PaybackReceiptSelectDTO		 )
{

 
public 
int 
PaybackReceiptID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ReceiptDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ReceiptDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public"" 
DateTime"" 
CreatedDate"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
}## 
}$$ Ó
íC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTPaybackReceipt\PaybackReceiptUpdateDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTPaybackReceiptA Q
{ 
public		 

record		 #
PaybackReceiptUpdateDTO		 )
{

 
public 
int 
PaybackReceiptID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ReceiptDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ReceiptDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
DateTime   
CreatedDate   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
}!! 
}"" Ú
èC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTPaymentReceipt\PaymentReceiptAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTPaymentReceiptA Q
{ 
public		 

record		  
PaymentReceiptAddDTO		 &
{

 
public 
int 
PaymentReceiptID #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ReceiptDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ReceiptDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
	AdvanceID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
? 
	CreatedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
? 
CreatedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ¶
ÑC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTProject\ProjectSelectDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
	DTProject		A J
{

 
public 

record 
ProjectSelectDTO "
{ 
[ 	
Key	 
] 
public 
int 
	ProjectID 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
ProjectName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Column	 
( 
$str $
)$ %
]% &
public 
string 
ProjectExplanation (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
	StartDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Column	 
( 
$str 
) 
] 
public 
DateTime 
EndDate 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
$str 
) 
] 
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ò
~C:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTRole\RoleSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTRoleA G
{ 
public		 

record		 
RoleSelectDTO		 
{

 
public 
int 
RoleID 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ¸
§C:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTTitleAmountApprovalRule\TitleAmountApprovalRuleSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A%
DTTitleAmountApprovalRuleA Z
{ 
public 

class ,
 TitleAmountApprovalRuleSelectDTO 1
{ 
[ 	
Key	 
] 
public 
int %
TitleAmountApprovalRuleID ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	
Column	 
] 
public 
decimal 
	MinAmount  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Column	 
] 
public 
decimal 
	MaxAmount  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
int 
TitleID 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
] 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
[   	
Column  	 
]   
public!! 
bool!! 
IsActive!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
[$$ 	
	NotMapped$$	 
]$$ 
public%% 
TitleSelectDTO%% 
Title%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
}&& 
}'' …
}C:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTTitle\TitleAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTTitleA H
{ 
public		 

record		 
TitleAddDTO		 
{

 
} 
} ª
ÄC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTTitle\TitleSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTTitleA H
{ 
public		 

record		 
TitleSelectDTO		  
{

 
public 
int 
TitleID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	TitleName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
TitleDescription &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ModifiedBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
ModifiedDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} –
ÄC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTTitle\TitleUpdateDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTTitleA H
{ 
public		 

record		 
TitleUpdateDTO		  
{

 
} 
} ª
~C:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTUnit\UnitSelectDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
DTUnit		A G
{

 
public 

record 
UnitSelectDTO 
{ 
public 
int 
UnitID 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
UnitName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
UnitExplanation %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ƒ
{C:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTUser\UserAddDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTUserA G
{ 
public		 

record		 

UserAddDTO		 
{

 
public 
string 
? 
Username 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Password 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ‰
xC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTUser\UserDTO.cs
	namespace

 	
AdvanceManagement


 
.

 
API

 
.

  
DataTransfer

  ,
.

, -
DataTransferObjects

- @
.

@ A
DTUser

A G
{ 
public 

class 
UserDTO 
{ 
public 
string 
? 
Username 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Password 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
? 
RoleName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? 
TitleID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
WorkerID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 

WorkerName !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} £
C:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTWorker\WorkerAddDTO.cs
	namespace		 	
AdvanceManagement		
 
.		 
API		 
.		  
DataTransfer		  ,
.		, -
DataTransferObjects		- @
.		@ A
DTWorker		A I
{

 
public 

class 
WorkerAddDTO 
{ 
public 
string 

WorkerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
WorkerEmail !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} 
ÇC:\Users\Fatih\source\repos\AdvanceManagement.UI\AdvanceManagement.UI.DataTransfer\DataTransferObjects\DTWorker\WorkerSelectDTO.cs
	namespace 	
AdvanceManagement
 
. 
API 
.  
DataTransfer  ,
., -
DataTransferObjects- @
.@ A
DTWorkerA I
{ 
public		 

record		 
WorkerSelectDTO		 !
{

 
public 
string 

WorkerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
? 
WorkerEmail "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
WorkerPhonenumber (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
UserID 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
UnitID 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
TitleID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
	ManagerID 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 