.MODEL SMALL
.STACK 100h
 
MAX_ADMINS EQU 5
MAX_STAFF EQU 5
MAX_ITEMS EQU 20
EMAIL_SIZE EQU 31
PASS_SIZE EQU 17
NAME_SIZE EQU 31
ID_SIZE EQU 5
MAX_PRICE EQU 30000
 
.DATA

;wlM-welcomeMessage
wlM DB 'SMART WAREHOUSE & INVENTORY MANAGEMENT SYSTEM$'
;m-main 
m1 DB '[1] Sign Up$'
m2 DB '[2] Sign In$'
m3 DB '[3] Exit$'
;chOp-chooseOption
chOp DB 'Choose option: $'
 
;rT-roleTitle
rT DB 'Select Role:$'
;r-role
r1 DB '[1] Admin$'
r2 DB '[2] Staff$'


;adTtl-adminTitle 
adTtl DB 'ADMIN DASHBOARD$'
;ad-admin
ad1 DB '[1] Add New Item$'
ad2 DB '[2] Update Item$'
ad3 DB '[3] Sell Item$'
ad4 DB '[4] View Stock Report$'
ad5 DB '[5] Search Items$'
;lgOt-logout
lgOt0 DB '[0] Logout$'
 
;stTtl-staffTitle
stTtl DB 'STAFF DASHBOARD$'
;st-staff
st1 DB '[1] Search Items$'
st3 DB '[3] Sell Item$'




;pKmsg-pressKeyMessage 
pKmsg DB 'Press Any Key to Continue...$'
byeMsg DB 'Thank you. Exiting system...$'
;invOmsg-invalidOptMsg
invOmsg DB 'Invalid Option.$'
;suSmsg-SignupSuccessMessage
suSmsg DB 'Registration Successful.$'
;lgiSmsg-loginSuccessMsg
lgiSmsg DB 'Login Successful.$'

;lgOtMsg-logOutMessage
lgOtMsg DB 'Logged out successfully.$'
 

;pmptEml-promptEmail
pmptEml DB 'Enter Gmail Address: $'
;pmptPsw-promptPassword
pmptPsw DB 'Enter Password: $'
;fldEmpMsg-fieldsEmptyMessage
fldEmpMsg DB 'Fields Cannot Be Empty.$'
;rgFlMsg-registrationFullMessage
rgFlMsg DB 'Registration Full.$'




;dplEmlMsg-duplicateEmailMessage
dplEmlMsg DB 'Email Already Registered.$'
;invEmlMsg-invalidEmailMessage
invEmlMsg DB 'Invalid Email. Use valid gmail address.$'
;pswDgtMsg-passDigitMessage
pswDgtMsg DB 'Password Must Contain At Least One Digit.$'

;acsDndMsg-accessDeniedMessage 
acsDndMsg DB 'Access Denied: Invalid Role.$'
;usrNFmsg-userNotFoundMessage 
usrNFmsg DB 'User Not Found.$'
;incPswMsg-incorrectPassMessage 
incPswMsg DB 'Incorrect Password.$'

;lckMsg-lockedMessage 
lckMsg DB 'Account Locked. Contact Admin.$'

;gmlSfx-gmailSuffix
gmlSfx DB '@GMAIL.COM',0

;ctTtl-categoryTitle 
ctTtl DB 'Select Category:$'
;ctOp-catOpt
ctOp1 DB '[1] Electronics$'
ctOp2 DB '[2] Grocery$'
ctOp3 DB '[3] Stationary$'
ctOp4 DB '[4] Household$'

;pmptNm-promptName 
pmptNm DB 'Enter Item Name: $'
;pmptQty-promptQuantity
pmptQty DB 'Enter Quantity (0-9999): $'
pmptBuy DB 'Enter Buying Price (0-30000): $'
pmptSell DB 'Enter Selling Price (0-30000): $'
;pmptDisc-promptDiscount
pmptDisc DB 'Enter Discount Percent (0-99): $'
pmptID DB 'Enter Item ID, example E001: $'


;stcFmsg-stockFullMessage  
stcFmsg DB 'Stock Full. Cannot Add More Items.$'

;zStcWrn-zeroStockWarning
zStcWrn DB 'Warning: Item Added with Zero Stock.$'
;slWrn-sellGtBuyMessage 
slWrn DB 'Selling Price Must Be Greater Than Buying Price.$'
;invDscMsg-invalidDiscMessage 
invDscMsg DB 'Invalid Discount. Enter 0-99.$'

;invNmbMsg-invalidNumMessage 
invNmbMsg DB 'Invalid Input. Numbers Only.$'
;nmEmptMsg-nameEmptyMessage 
nmEmptMsg DB 'Item Name Cannot Be Empty.$'
;invNmMsg-invalidNameMessage 
invNmMsg DB 'Item Name Must Contain At Least One Letter.$'
;dplitmMsg-duplicateItemMessage 
dplitmMsg DB 'Item Already Exists in This Category.$'
;itmAdMsg-itemAddedMessage 
itmAdMsg DB 'Item Added Successfully. New ID: $'
;itmUpMsg-itemUpdatedMessage 
itmUpMsg DB 'Item Updated Successfully.$'
;itmNFMsg-itemNotFoundMessage 
itmNFMsg DB 'Item Not Found in Inventory.$'
noIdMsg DB 'No Item Found with This ID.$'
;idNFMsg-idNotFoundMessage 
idNFMsg DB 'Item ID Not Found.$'
;invidMsg-invalidIDMessage 
invidMsg DB 'Invalid Item ID. Use format E001, G001, S001, or H001.$'
;srcEmptMsg-searchEmptyMessage 
srcEmptMsg DB 'Search Field Cannot Be Empty.$'
noExactMsg DB 'No Exact Match Found. Try Full Name.$'
qtyZeroMsg DB 'Quantity Must Be At Least 1.$'
;otStcMsg-outStockMessage 
otStcMsg DB 'This Item Is Currently Out of Stock.$'
insuffMsg DB 'Insufficient Stock. Available: $'
lowAlertMsg DB 'Low Stock Alert: Only $'
leftMsg DB ' Left.$'
nowOutMsg DB 'Item Now Out of Stock.$'
noChangeMsg DB 'No Changes Detected.$'
invEmptyMsg DB 'Inventory is Empty.$'
;alAdqMsg-allAdequateMsg
alAdqMsg DB 'All Items Adequately Stocked.$'
noneOutMsg DB 'No Items Are Out of Stock.$'
assetMsg DB 'Total Asset Value: $'
bdtMsg DB ' BDT$'
 
;srcTtl-searchTitle
srcTtl DB 'Search Item:$'
;src-search
src1 DB '[1] Search by Item ID$'
src2 DB '[2] Search by Name$'
 
;upTtl-updateTitle
upTtl DB 'Update Field:$'
;up-update
up1 DB '[1] Quantity$'
up2 DB '[2] Selling Price$'
up3 DB '[3] Category$'
up4 DB '[4] Discount$'
 
;lblId-labelId
lblId DB 'Item ID: $'
;lbNm-labelName
lbNm DB 'Name: $'
;lbCtg-labelCategory
lbCtg DB 'Category: $'
;lb-label
lbQty DB 'Quantity: $'
lbBuy DB 'Buying Price: $'
lbSell DB 'Selling Price : $'
lbDisc DB 'Discount  	: $'
lbStatus DB 'Stock Status  : $'
percentMsg DB '%$'
inStockMsg DB 'In Stock: $'
lowStockMsg DB 'Low Stock$'
outOfStockMsg2 DB 'Out of Stock$'
catE DB 'Electronics$'
catG DB 'Grocery$'
catS DB 'Stationary$'
catH DB 'Household$'
 
reportHeader DB 'Name                       	ID	Qty    Buy	Sell$'
reportLine DB '----------------------------------------------------------$'
;lwLstHdr-lowListHeader
lwLstHdr DB 'Low Stock Items:$'
;otLstHdr-outListHeader
otLstHdr DB 'Out of Stock Items:$'
space4 DB '	$'

;rcpHdr-receiptHeader 
rcpHdr DB 'SALES RECEIPT$'
;rcpItm-receiptItem
rcpItm DB 'Item Name  	: $'
;rcp-receipt
rcpQty DB 'Qty Sold   	: $'
rcpUnit DB 'Unit Price 	: $'
;rcpItmDsc-receiptItemDiscount
rcpItmDsc DB 'Item Discount  : $'
rcpBulkDisc DB 'Bulk Discount  : $'
rcpFinal DB 'Final Total	: $'
saleDoneMsg DB 'Sale Completed Successfully.$'
 
emailBuf DB 30,0,31 DUP(0)
passBuf DB 16,0,17 DUP(0)
nameBuf DB 30,0,31 DUP(0)
idBuf DB 5,0,6 DUP(0)
numBuf DB 10,0,11 DUP(0)


adEmails DB MAX_ADMINS*EMAIL_SIZE DUP(0)
adPasses DB MAX_ADMINS*PASS_SIZE DUP(0)
stEmails DB MAX_STAFF*EMAIL_SIZE DUP(0)
stPasses DB MAX_STAFF*PASS_SIZE DUP(0)
adCount DB 0
stCount DB 0
sessionRole DB 0
selectedRole DB 0
loginFails DB 0
foundIndex DB 0
 
itemCount DB 0
itemIds DB MAX_ITEMS*ID_SIZE DUP(0)
itemNames DB MAX_ITEMS*NAME_SIZE DUP(0)
itemCategory DB MAX_ITEMS DUP(0)
itemQty DW MAX_ITEMS DUP(0)
itemBuy DW MAX_ITEMS DUP(0)
itemSell DW MAX_ITEMS DUP(0)
itemDiscount DB MAX_ITEMS DUP(0)
 
eCounter DW 0
gCounter DW 0
sCounter DW 0
hCounter DW 0
currentCategory DB 0
tempID DB ID_SIZE DUP(0)
tempWord DW 0
tempWord2 DW 0
tempDisc DB 0
 
sumLo DW 0
sumHi DW 0
totalLo DW 0
totalHi DW 0
discLo DW 0
discHi DW 0
bulkLo DW 0
bulkHi DW 0
finalLo DW 0
finalHi DW 0
p32Lo DW 0
p32Hi DW 0
qLo DW 0
qHi DW 0
remWord DW 0
resLo DW 0
resHi DW 0
 
.CODE
 
MAIN PROC
mov ax,@data
mov ds,ax
mov es,ax
MainLoop:
call ShowMainMenu
call ReadOption
cmp al,'1'
je DoSignup
cmp al,'2'
je DoSignin
cmp al,'3'
je ExitProgram
lea dx,invOmsg
call PrintLine
call PressAnyKey
jmp MainLoop
DoSignup:
call SignUp
call PressAnyKey
jmp MainLoop
DoSignin:
call SignIn
cmp sessionRole,1
je AdminDashboard
cmp sessionRole,2
je StaffDashboard
call PressAnyKey
jmp MainLoop
AdminDashboard:
call AdminMenuLoop
jmp MainLoop
StaffDashboard:
call StaffMenuLoop
jmp MainLoop
ExitProgram:
call NewLine
lea dx,byeMsg
call PrintLine
mov ah,4Ch
int 21h
MAIN ENDP
 
NewLine PROC
push ax
push dx
mov ah,02h
mov dl,13
int 21h
mov dl,10
int 21h
pop dx
pop ax
ret
NewLine ENDP
 
PrintString PROC
push ax
mov ah,09h
int 21h
pop ax
ret
PrintString ENDP
 
PrintLine PROC
call PrintString
call NewLine
ret
PrintLine ENDP
 
PrintChar PROC
push ax
mov ah,02h
int 21h
pop ax
ret
PrintChar ENDP
 
ReadOption PROC
mov ah,01h
int 21h
push ax
call NewLine
pop ax
ret
ReadOption ENDP
 
PressAnyKey PROC
call NewLine
lea dx,pKmsg
call PrintString
mov ah,08h
int 21h
call NewLine
ret
PressAnyKey ENDP
 



ShowMainMenu PROC
call NewLine
lea dx,wlM
call PrintLine
lea dx,m1
call PrintLine
lea dx,m2
call PrintLine
lea dx,m3
call PrintLine
lea dx,chOp
call PrintString
ret
ShowMainMenu ENDP
 
ShowRoleMenu PROC
call NewLine
lea dx,rT
call PrintLine
lea dx,r1
call PrintLine
lea dx,r2
call PrintLine
lea dx,chOp
call PrintString
ret
ShowRoleMenu ENDP
 
ShowAdminMenu PROC
call NewLine
lea dx,adTtl
call PrintLine
lea dx,ad1
call PrintLine
lea dx,ad2
call PrintLine
lea dx,ad3
call PrintLine
lea dx,ad4
call PrintLine
lea dx,ad5
call PrintLine
lea dx,lgOt0
call PrintLine
lea dx,chOp
call PrintString
ret
ShowAdminMenu ENDP
 
ShowStaffMenu PROC
call NewLine
lea dx,stTtl
call PrintLine
lea dx,st1
call PrintLine
lea dx,st3
call PrintLine
lea dx,lgOt0
call PrintLine
lea dx,chOp
call PrintString
ret
ShowStaffMenu ENDP
 

ShowCategoryMenu PROC
call NewLine
lea dx,ctTtl
call PrintLine
lea dx,ctOp1
call PrintLine
lea dx,ctOp2
call PrintLine
lea dx,ctOp3
call PrintLine
lea dx,ctOp4
call PrintLine
lea dx,chOp
call PrintString
ret
ShowCategoryMenu ENDP
 



ShowSearchMenu PROC
call NewLine
lea dx,srcTtl
call PrintLine
lea dx,src1
call PrintLine
lea dx,src2
call PrintLine
lea dx,chOp
call PrintString
ret
ShowSearchMenu ENDP
 
ShowUpdateMenu PROC
call NewLine
lea dx,upTtl
call PrintLine
lea dx,up1
call PrintLine
lea dx,up2
call PrintLine
lea dx,up3
call PrintLine
lea dx,up4
call PrintLine
lea dx,chOp
call PrintString
ret
ShowUpdateMenu ENDP
 
ReadBuffer PROC
push ax
push bx
push cx
push di
mov bx,dx
mov cl,[bx]
mov ch,0
inc cx
mov di,bx
add di,2
mov al,0
rep stosb
mov byte ptr [bx+1],0
mov ah,0Ah
int 21h
mov bx,dx
mov al,[bx+1]
mov ah,0
add bx,ax
mov byte ptr [bx+2],0
call NewLine
pop di
pop cx
pop bx
pop ax
ret
ReadBuffer ENDP
 



ToUpperBuffer PROC
push ax
push cx
push si
mov si,dx
mov cl,[si+1]
mov ch,0
add si,2
UpperLoop:
jcxz UpperDone
mov al,[si]
cmp al,'a'
jl UpperNext
cmp al,'z'
jg UpperNext
sub al,20h
mov [si],al
UpperNext:
inc si
loop UpperLoop
UpperDone:
pop si
pop cx
pop ax
ret
ToUpperBuffer ENDP
 

PrintZ PROC
push ax
push dx
push si
PrintZLoop:
mov al,[si]
cmp al,0
je PrintZDone
mov dl,al
call PrintChar
inc si
jmp PrintZLoop
PrintZDone:
pop si
pop dx
pop ax
ret
PrintZ ENDP
 
StringEqual PROC
push si
push di
StringEqualLoop:
mov al,[si]
mov ah,[di]
cmp al,ah
jne StringNotEqual
cmp al,0
je StringIsEqual
inc si
inc di
jmp StringEqualLoop
StringIsEqual:
mov al,1
jmp StringEqualDone
StringNotEqual:
mov al,0
StringEqualDone:
pop di
pop si
ret
StringEqual ENDP
 
CopyZ PROC
push ax
CopyZLoop:
mov al,[si]
mov [di],al
inc si
inc di
cmp al,0
jne CopyZLoop
pop ax
ret
CopyZ ENDP
 
ReadNumber PROC
push bx
push cx
push dx
push si
push di
lea dx,numBuf
call ReadBuffer
cmp byte ptr numBuf+1,0
je ReadNumberBad
lea si,numBuf+2
mov cl,numBuf+1
mov ch,0
mov di,0
ReadNumberLoop:
mov al,[si]
cmp al,'0'
jl ReadNumberBad
cmp al,'9'
jg ReadNumberBad
sub al,'0'
mov ah,0
push ax
mov ax,di
mov bx,10
mul bx
cmp dx,0
jne ReadNumberBadPop
mov di,ax
pop ax
add di,ax
jc ReadNumberBad
inc si
loop ReadNumberLoop
mov ax,di
clc
jmp ReadNumberDone
ReadNumberBadPop:
pop ax
ReadNumberBad:
stc
ReadNumberDone:
pop di
pop si
pop dx
pop cx
pop bx
ret
ReadNumber ENDP
 
PrintNumber16 PROC
push ax
push bx
push cx
push dx
cmp ax,0
jne Print16Start
mov dl,'0'
call PrintChar
jmp Print16Done
Print16Start:
mov cx,0
mov bx,10
Print16Div:
mov dx,0
div bx
push dx
inc cx
cmp ax,0
jne Print16Div
Print16Loop:
pop dx
add dl,'0'
call PrintChar
loop Print16Loop
Print16Done:
pop dx
pop cx
pop bx
pop ax
ret
PrintNumber16 ENDP
 
PrintNumber32 PROC
push ax
push bx
push cx
push dx
mov p32Hi,dx
mov p32Lo,ax
cmp p32Hi,0
jne Print32Start
cmp p32Lo,0
jne Print32Start
mov dl,'0'
call PrintChar
jmp Print32Done
Print32Start:
mov cx,0
Print32Div:
mov bx,10
mov dx,0
mov ax,p32Hi
div bx
mov qHi,ax
mov ax,p32Lo
div bx
mov qLo,ax
mov ax,dx
push ax
inc cx
mov ax,qHi
mov p32Hi,ax
mov ax,qLo
mov p32Lo,ax
cmp p32Hi,0
jne Print32Div
cmp p32Lo,0
jne Print32Div
Print32Loop:
pop dx
add dl,'0'
call PrintChar
loop Print32Loop
Print32Done:
pop dx
pop cx
pop bx
pop ax
ret
PrintNumber32 ENDP
 
PercentOf32 PROC
push bx
push cx
mov p32Hi,dx
mov p32Lo,ax
mov bx,100
mov dx,0
mov ax,p32Hi
div bx
mov qHi,ax
mov ax,p32Lo
div bx
mov qLo,ax
mov remWord,dx
mov bh,0
mov bl,cl
mov ax,qLo
mul bx
mov resLo,ax
mov resHi,dx
mov ax,qHi
mul bx
add resHi,ax
mov ax,remWord
mul bx
mov bx,100
mov dx,0
div bx
add resLo,ax
adc resHi,0
mov ax,resLo
mov dx,resHi
pop cx
pop bx
ret
PercentOf32 ENDP
 
GetWordOffset PROC
push ax
mov ah,0
mov bl,2
mul bl
mov bx,ax
pop ax
ret
GetWordOffset ENDP
 
GetAdminEmailPtr PROC
push ax
push bx
mov ah,0
mov bl,EMAIL_SIZE
mul bl
lea di,adEmails
add di,ax
pop bx
pop ax
ret
GetAdminEmailPtr ENDP
 
GetAdminPassPtr PROC
push ax
push bx
mov ah,0
mov bl,PASS_SIZE
mul bl
lea di,adPasses
add di,ax
pop bx
pop ax
ret
GetAdminPassPtr ENDP
 
GetStaffEmailPtr PROC
push ax
push bx
mov ah,0
mov bl,EMAIL_SIZE
mul bl
lea di,stEmails
add di,ax
pop bx
pop ax
ret
GetStaffEmailPtr ENDP
 
GetStaffPassPtr PROC
push ax
push bx
mov ah,0
mov bl,PASS_SIZE
mul bl
lea di,stPasses
add di,ax
pop bx
pop ax
ret
GetStaffPassPtr ENDP
 
GetItemIdPtr PROC
push ax
push bx
mov ah,0
mov bl,ID_SIZE
mul bl
lea di,itemIds
add di,ax
pop bx
pop ax
ret
GetItemIdPtr ENDP
 
GetItemNamePtr PROC
push ax
push bx
mov ah,0
mov bl,NAME_SIZE
mul bl
lea di,itemNames
add di,ax
pop bx
pop ax
ret
GetItemNamePtr ENDP
 
ValidateGmailEmail PROC
push ax
push bx
push cx
push si
push di
mov bx,dx
mov al,[bx+1]
cmp al,10
jle GmailBad
mov ah,0
mov cx,ax
sub cx,10
lea si,[bx+2]
cmp byte ptr [si],'.'
je GmailBad
GmailUserLoop:
jcxz GmailUserDone
mov al,[si]
cmp al,'A'
jl GmailCheckDigit
cmp al,'Z'
jle GmailUserOK
GmailCheckDigit:
cmp al,'0'
jl GmailCheckDot
cmp al,'9'
jle GmailUserOK
GmailCheckDot:
cmp al,'.'
je GmailUserOK
jmp GmailBad
GmailUserOK:
inc si
loop GmailUserLoop
GmailUserDone:
dec si
cmp byte ptr [si],'.'
je GmailBad
inc si
lea di,gmlSfx
mov cx,10
GmailSuffixLoop:
mov al,[si]
cmp al,[di]
jne GmailBad
inc si
inc di
loop GmailSuffixLoop
clc
jmp GmailDone
GmailBad:
stc
GmailDone:
pop di
pop si
pop cx
pop bx
pop ax
ret
ValidateGmailEmail ENDP
 
PasswordHasDigit PROC
push ax
push cx
push si
mov si,dx
mov cl,[si+1]
mov ch,0
add si,2
PassDigitLoop:
jcxz PassDigitBad
mov al,[si]
cmp al,'0'
jl PassDigitNext
cmp al,'9'
jle PassDigitGood
PassDigitNext:
inc si
loop PassDigitLoop
PassDigitBad:
stc
jmp PassDigitDone
PassDigitGood:
clc
PassDigitDone:
pop si
pop cx
pop ax
ret
PasswordHasDigit ENDP
 
ItemNameHasLetter PROC
push ax
push cx
push si
mov si,dx
mov cl,[si+1]
mov ch,0
add si,2
NameLetterLoop:
jcxz NameLetterBad
mov al,[si]
cmp al,'A'
jl NameLetterNext
cmp al,'Z'
jle NameLetterGood
NameLetterNext:
inc si
loop NameLetterLoop
NameLetterBad:
stc
jmp NameLetterDone
NameLetterGood:
clc
NameLetterDone:
pop si
pop cx
pop ax
ret
ItemNameHasLetter ENDP
 
ValidateItemIDInput PROC
push ax
push bx
push cx
push si
mov bx,dx
cmp byte ptr [bx+1],4
jne BadIDFormat
lea si,[bx+2]
mov al,[si]
cmp al,'E'
je IDDigits
cmp al,'G'
je IDDigits
cmp al,'S'
je IDDigits
cmp al,'H'
jne BadIDFormat
IDDigits:
inc si
mov cx,3
IDDigitLoop:
mov al,[si]
cmp al,'0'
jl BadIDFormat
cmp al,'9'
jg BadIDFormat
inc si
loop IDDigitLoop
clc
jmp IDDone
BadIDFormat:
stc
IDDone:
pop si
pop cx
pop bx
pop ax
ret
ValidateItemIDInput ENDP
 
AdminMenuLoop PROC
AdminLoop:
call ShowAdminMenu
call ReadOption
cmp al,'1'
je AdminAdd
cmp al,'2'
je AdminUpdate
cmp al,'3'
je AdminSell
cmp al,'4'
je AdminReport
cmp al,'5'
je AdminSearch
cmp al,'0'
je AdminLogout
lea dx,invOmsg
call PrintLine
call PressAnyKey
jmp AdminLoop
AdminAdd:
call AddItem
call PressAnyKey
jmp AdminLoop
AdminUpdate:
call UpdateItem
call PressAnyKey
jmp AdminLoop
AdminSell:
call SellItem
call PressAnyKey
jmp AdminLoop
AdminReport:
call StockReport
call PressAnyKey
jmp AdminLoop
AdminSearch:
call SearchItem
call PressAnyKey
jmp AdminLoop
AdminLogout:
mov sessionRole,0
lea dx,lgOtMsg
call PrintLine
call PressAnyKey
ret
AdminMenuLoop ENDP
 
StaffMenuLoop PROC
StaffLoop:
call ShowStaffMenu
call ReadOption
cmp al,'1'
je StaffSearch
cmp al,'3'
je StaffSell
cmp al,'0'
je StaffLogout
lea dx,invOmsg
call PrintLine
call PressAnyKey
jmp StaffLoop
StaffSearch:
call SearchItem
call PressAnyKey
jmp StaffLoop
StaffSell:
call SellItem
call PressAnyKey
jmp StaffLoop
StaffLogout:
mov sessionRole,0
lea dx,lgOtMsg
call PrintLine
call PressAnyKey
ret
StaffMenuLoop ENDP
 
;mim start
SignUp PROC
call ShowRoleMenu
call ReadOption
cmp al,'1'
je SignUpAdmin
cmp al,'2'
je SignUpStaff
lea dx,invOmsg
call PrintLine
ret
SignUpAdmin:
mov selectedRole,1
cmp adCount,MAX_ADMINS
jge SignUpFull
jmp SignUpRead
SignUpStaff:
mov selectedRole,2
cmp stCount,MAX_STAFF
jge SignUpFull
SignUpRead:
call NewLine
lea dx,pmptEml
call PrintString
lea dx,emailBuf
call ReadBuffer
cmp byte ptr emailBuf+1,0
je SignUpEmpty
lea dx,emailBuf
call ToUpperBuffer
lea dx,emailBuf
call ValidateGmailEmail
jnc SignUpEmailOK
lea dx,invEmlMsg
call PrintLine
ret
SignUpEmailOK:
lea dx,pmptPsw
call PrintString
lea dx,passBuf
call ReadBuffer
cmp byte ptr passBuf+1,0
je SignUpEmpty
lea dx,passBuf
call PasswordHasDigit
jnc SignUpPassOK
lea dx,pswDgtMsg
call PrintLine
ret
SignUpPassOK:
lea si,emailBuf+2
call FindEmailAnyRole
jc SignUpNoDuplicate
lea dx,dplEmlMsg
call PrintLine
ret
SignUpNoDuplicate:
cmp selectedRole,1
je SaveAdminAccount
mov al,stCount
call GetStaffEmailPtr
lea si,emailBuf+2
call CopyZ
mov al,stCount
call GetStaffPassPtr
lea si,passBuf+2
call CopyZ
inc stCount
lea dx,suSmsg
call PrintLine
ret
SaveAdminAccount:
mov al,adCount
call GetAdminEmailPtr
lea si,emailBuf+2
call CopyZ
mov al,adCount
call GetAdminPassPtr
lea si,passBuf+2
call CopyZ
inc adCount
lea dx,suSmsg
call PrintLine
ret
SignUpFull:
lea dx,rgFlMsg
call PrintLine
ret
SignUpEmpty:
lea dx,fldEmpMsg
call PrintLine
ret
SignUp ENDP
 
SignIn PROC
mov sessionRole,0
mov loginFails,0
SignInAgain:
call ShowRoleMenu
call ReadOption
cmp al,'1'
je SignInAdminRole
cmp al,'2'
je SignInStaffRole
lea dx,invOmsg
call PrintLine
ret
SignInAdminRole:
mov selectedRole,1
jmp SignInRead
SignInStaffRole:
mov selectedRole,2
SignInRead:
call NewLine
lea dx,pmptEml
call PrintString
lea dx,emailBuf
call ReadBuffer
cmp byte ptr emailBuf+1,0
je SignInEmpty
lea dx,emailBuf
call ToUpperBuffer
lea dx,emailBuf
call ValidateGmailEmail
jnc SignInEmailOK
lea dx,invEmlMsg
call PrintLine
jmp SignInFail
SignInEmailOK:
lea dx,pmptPsw
call PrintString
lea dx,passBuf
call ReadBuffer
cmp byte ptr passBuf+1,0
je SignInEmpty
lea dx,passBuf
call PasswordHasDigit
jnc SignInPassOK
lea dx,pswDgtMsg
call PrintLine
jmp SignInFail
SignInPassOK:
cmp selectedRole,1
je CheckAdminLogin
lea si,emailBuf+2
call FindStaffEmail
jnc StaffFound
lea si,emailBuf+2
call FindAdminEmail
jnc WrongRole
lea dx,usrNFmsg
call PrintLine
jmp SignInFail
StaffFound:
mov foundIndex,al
call CheckStaffPassword
jc BadPassword
mov sessionRole,2
lea dx,lgiSmsg
call PrintLine
ret
CheckAdminLogin:
lea si,emailBuf+2
call FindAdminEmail
jnc AdminFound
lea si,emailBuf+2
call FindStaffEmail
jnc WrongRole
lea dx,usrNFmsg
call PrintLine
jmp SignInFail
AdminFound:
mov foundIndex,al
call CheckAdminPassword
jc BadPassword
mov sessionRole,1
lea dx,lgiSmsg
call PrintLine
ret
WrongRole:
lea dx,acsDndMsg
call PrintLine
jmp SignInFail
BadPassword:
lea dx,incPswMsg
call PrintLine
jmp SignInFail
SignInEmpty:
lea dx,fldEmpMsg
call PrintLine
SignInFail:
inc loginFails
cmp loginFails,3
jge SignInLocked
jmp SignInAgain
SignInLocked:
lea dx,lckMsg
call PrintLine
mov sessionRole,0
ret
SignIn ENDP
 
FindEmailAnyRole PROC
lea si,emailBuf+2
call FindAdminEmail
jnc AnyEmailFound
lea si,emailBuf+2
call FindStaffEmail
jnc AnyEmailFound
stc
ret
AnyEmailFound:
clc
ret
FindEmailAnyRole ENDP
 
FindAdminEmail PROC
push bx
push cx
mov cl,adCount
mov ch,0
mov bl,0
mov bh,0
jcxz AdminEmailNotFound
FindAdminLoop:
mov al,bl
call GetAdminEmailPtr
call StringEqual
cmp al,1
je AdminEmailFound
inc bl
loop FindAdminLoop
AdminEmailNotFound:
stc
jmp FindAdminDone
AdminEmailFound:
mov al,bl
clc
FindAdminDone:
pop cx
pop bx
ret
FindAdminEmail ENDP
 
FindStaffEmail PROC
push bx
push cx
mov cl,stCount
mov ch,0
mov bl,0
mov bh,0
jcxz StaffEmailNotFound
FindStaffLoop:
mov al,bl
call GetStaffEmailPtr
call StringEqual
cmp al,1
je StaffEmailFound
inc bl
loop FindStaffLoop
StaffEmailNotFound:
stc
jmp FindStaffDone
StaffEmailFound:
mov al,bl
clc
FindStaffDone:
pop cx
pop bx
ret
FindStaffEmail ENDP
 
CheckAdminPassword PROC
mov al,foundIndex
call GetAdminPassPtr
lea si,passBuf+2
call StringEqual
cmp al,1
je AdminPassOK
stc
ret
AdminPassOK:
clc
ret
CheckAdminPassword ENDP
 
CheckStaffPassword PROC
mov al,foundIndex
call GetStaffPassPtr
lea si,passBuf+2
call StringEqual
cmp al,1
je StaffPassOK
stc
ret
StaffPassOK:
clc
ret
CheckStaffPassword ENDP
 
SelectCategory PROC
call ShowCategoryMenu
call ReadOption
cmp al,'1'
je Cat1
cmp al,'2'
je Cat2
cmp al,'3'
je Cat3
cmp al,'4'
je Cat4
lea dx,invOmsg
call PrintLine
stc
ret
Cat1:
mov currentCategory,1
clc
ret
Cat2:
mov currentCategory,2
clc
ret
Cat3:
mov currentCategory,3
clc
ret
Cat4:
mov currentCategory,4
clc
ret
SelectCategory ENDP
 
GenerateID PROC
mov al,currentCategory
cmp al,1
je GenE
cmp al,2
je GenG
cmp al,3
je GenS
jmp GenH
GenE:
inc eCounter
mov ax,eCounter
mov dl,'E'
jmp GenWrite
GenG:
inc gCounter
mov ax,gCounter
mov dl,'G'
jmp GenWrite
GenS:
inc sCounter
mov ax,sCounter
mov dl,'S'
jmp GenWrite
GenH:
inc hCounter
mov ax,hCounter
mov dl,'H'
GenWrite:
call Write3DigitID
ret
GenerateID ENDP
 
Write3DigitID PROC
push ax
push bx
push dx
mov tempID[0],dl
mov dx,0
mov bx,100
div bx
add al,'0'
mov tempID[1],al
mov ax,dx
mov dx,0
mov bx,10
div bx
add al,'0'
mov tempID[2],al
add dl,'0'
mov tempID[3],dl
mov tempID[4],0
pop dx
pop bx
pop ax
ret
Write3DigitID ENDP
 
FindDuplicateItemNameInCategory PROC
push bx
push cx
mov cl,itemCount
mov ch,0
mov bl,0
mov bh,0
jcxz NoDuplicateItem
DuplicateLoop:
mov al,itemCategory[bx]
cmp al,currentCategory
jne DuplicateNext
mov al,bl
call GetItemNamePtr
call StringEqual
cmp al,1
je DuplicateFound
DuplicateNext:
inc bl
loop DuplicateLoop
NoDuplicateItem:
stc
jmp DuplicateDone
DuplicateFound:
clc
DuplicateDone:
pop cx
pop bx
ret
FindDuplicateItemNameInCategory ENDP
 
AddItem PROC
cmp itemCount,MAX_ITEMS
jl AddCanContinue
lea dx,stcFmsg
call PrintLine
ret
AddCanContinue:
call SelectCategory
jc AddEnd
call NewLine
lea dx,pmptNm
call PrintString
lea dx,nameBuf
call ReadBuffer
cmp byte ptr nameBuf+1,0
jne AddNameNotEmpty
lea dx,nmEmptMsg
call PrintLine
ret
AddNameNotEmpty:
lea dx,nameBuf
call ToUpperBuffer
lea dx,nameBuf
call ItemNameHasLetter
jnc AddNameOK
lea dx,invNmMsg
call PrintLine
ret
AddNameOK:
lea si,nameBuf+2
call FindDuplicateItemNameInCategory
jc AddNoDuplicate
lea dx,dplitmMsg
call PrintLine
ret
AddNoDuplicate:
lea dx,pmptQty
call PrintString
call ReadNumber
jc AddInvalidNum
cmp ax,9999
jg AddInvalidNum
mov tempWord,ax
lea dx,pmptBuy
call PrintString
call ReadNumber
jc AddInvalidNum
cmp ax,MAX_PRICE
jg AddInvalidNum
mov tempWord2,ax
lea dx,pmptSell
call PrintString
call ReadNumber
jc AddInvalidNum
cmp ax,MAX_PRICE
jg AddInvalidNum
cmp ax,tempWord2
jg AddSellingOK
lea dx,slWrn
call PrintLine
ret
AddSellingOK:
push ax
lea dx,pmptDisc
call PrintString
call ReadNumber
jc AddDiscountBad
cmp ax,99
jg AddDiscountBad
mov tempDisc,al
pop ax
push ax
call GenerateID
mov al,itemCount
call GetItemIdPtr
lea si,tempID
call CopyZ
mov al,itemCount
call GetItemNamePtr
lea si,nameBuf+2
call CopyZ
mov bl,itemCount
mov bh,0
mov al,currentCategory
mov itemCategory[bx],al
mov al,itemCount
call GetWordOffset
mov ax,tempWord
mov itemQty[bx],ax
mov ax,tempWord2
mov itemBuy[bx],ax
pop ax
mov itemSell[bx],ax
mov bl,itemCount
mov bh,0
mov al,tempDisc
mov itemDiscount[bx],al
inc itemCount
lea dx,itmAdMsg
call PrintString
lea si,tempID
call PrintZ
call NewLine
mov ax,tempWord
cmp ax,0
jne AddEnd
lea dx,zStcWrn
call PrintLine
AddEnd:
ret
AddInvalidNum:
lea dx,invNmbMsg
call PrintLine
ret
AddDiscountBad:
pop ax
lea dx,invDscMsg
call PrintLine
ret
AddItem ENDP
;mim end
 
;sakib start
FindItemByID PROC
push bx
push cx
mov cl,itemCount
mov ch,0
mov bl,0
mov bh,0
jcxz ItemIDNotFound
FindIDLoop:
mov al,bl
call GetItemIdPtr
call StringEqual
cmp al,1
je ItemIDFound
inc bl
loop FindIDLoop
ItemIDNotFound:
stc
jmp FindIDDone
ItemIDFound:
mov al,bl
clc
FindIDDone:
pop cx
pop bx
ret
FindItemByID ENDP
 
FindItemByName PROC
push bx
push cx
mov cl,itemCount
mov ch,0
mov bl,0
mov bh,0
jcxz ItemNameNotFound
FindNameLoop:
mov al,bl
call GetItemNamePtr
call StringEqual
cmp al,1
je ItemNameFound
inc bl
loop FindNameLoop
ItemNameNotFound:
stc
jmp FindNameDone
ItemNameFound:
mov al,bl
clc
FindNameDone:
pop cx
pop bx
ret
FindItemByName ENDP
 
SearchItem PROC
call ShowSearchMenu
call ReadOption
cmp al,'1'
je SearchByID
cmp al,'2'
je SearchByName
lea dx,invOmsg
call PrintLine
ret
SearchByID:
call NewLine
lea dx,pmptID
call PrintString
lea dx,idBuf
call ReadBuffer
cmp byte ptr idBuf+1,0
jne SearchIDNotEmpty
lea dx,srcEmptMsg
call PrintLine
ret
SearchIDNotEmpty:
lea dx,idBuf
call ToUpperBuffer
lea dx,idBuf
call ValidateItemIDInput
jnc SearchIDValid
lea dx,invidMsg
call PrintLine
ret
SearchIDValid:
lea si,idBuf+2
call FindItemByID
jnc SearchFound
lea dx,itmNFMsg
call PrintLine
ret
SearchByName:
call NewLine
lea dx,pmptNm
call PrintString
lea dx,nameBuf
call ReadBuffer
cmp byte ptr nameBuf+1,0
jne SearchNameNotEmpty
lea dx,srcEmptMsg
call PrintLine
ret
SearchNameNotEmpty:
lea dx,nameBuf
call ToUpperBuffer
lea si,nameBuf+2
call FindItemByName
jnc SearchFound
lea dx,noExactMsg
call PrintLine
ret
SearchFound:
mov foundIndex,al
call DisplayItemDetails
ret
SearchItem ENDP
 
DisplayItemDetails PROC
call NewLine
lea dx,lblId
call PrintString
mov al,foundIndex
call GetItemIdPtr
mov si,di
call PrintZ
call NewLine
lea dx,lbNm
call PrintString
mov al,foundIndex
call GetItemNamePtr
mov si,di
call PrintZ
call NewLine
lea dx,lbCtg
call PrintString
mov bl,foundIndex
mov bh,0
mov al,itemCategory[bx]
call PrintCategory
mov al,foundIndex
call GetWordOffset
call NewLine
lea dx,lbQty
call PrintString
mov ax,itemQty[bx]
call PrintNumber16
call NewLine
lea dx,lbBuy
call PrintString
mov ax,itemBuy[bx]
call PrintNumber16
lea dx,bdtMsg
call PrintString
call NewLine
lea dx,lbSell
call PrintString
mov ax,itemSell[bx]
call PrintNumber16
lea dx,bdtMsg
call PrintString
call NewLine
mov bl,foundIndex
mov bh,0
lea dx,lbDisc
call PrintString
mov ah,0
mov al,itemDiscount[bx]
call PrintNumber16
lea dx,percentMsg
call PrintString
call NewLine
lea dx,lbStatus
call PrintString
call PrintStockStatus
call NewLine
ret
DisplayItemDetails ENDP
 
PrintCategory PROC
cmp al,1
je PrintCatE
cmp al,2
je PrintCatG
cmp al,3
je PrintCatS
lea dx,catH
jmp PrintCatDone
PrintCatE:
lea dx,catE
jmp PrintCatDone
PrintCatG:
lea dx,catG
jmp PrintCatDone
PrintCatS:
lea dx,catS
PrintCatDone:
call PrintString
ret
PrintCategory ENDP
 
PrintStockStatus PROC
mov al,foundIndex
call GetWordOffset
mov ax,itemQty[bx]
cmp ax,0
je StockOut
cmp ax,5
jl StockLow
lea dx,inStockMsg
call PrintString
call PrintNumber16
ret
StockLow:
lea dx,lowStockMsg
call PrintString
ret
StockOut:
lea dx,outOfStockMsg2
call PrintString
ret
PrintStockStatus ENDP
 
UpdateItem PROC
call NewLine
lea dx,pmptID
call PrintString
lea dx,idBuf
call ReadBuffer
cmp byte ptr idBuf+1,0
jne UpdateIDNotEmpty
lea dx,srcEmptMsg
call PrintLine
ret
UpdateIDNotEmpty:
lea dx,idBuf
call ToUpperBuffer
lea dx,idBuf
call ValidateItemIDInput
jnc UpdateIDValid
lea dx,invidMsg
call PrintLine
ret
UpdateIDValid:
lea si,idBuf+2
call FindItemByID
jnc UpdateFound
lea dx,noIdMsg
call PrintLine
ret
UpdateFound:
mov foundIndex,al
call DisplayItemDetails
call ShowUpdateMenu
call ReadOption
cmp al,'1'
je UpdateQty
cmp al,'2'
je UpdateSell
cmp al,'3'
je UpdateCategory
cmp al,'4'
je UpdateDiscount
lea dx,invOmsg
call PrintLine
ret
UpdateQty:
call NewLine
lea dx,pmptQty
call PrintString
call ReadNumber
jc UpdateInvalidNum
cmp ax,9999
jg UpdateInvalidNum
mov tempWord,ax
mov al,foundIndex
call GetWordOffset
mov ax,tempWord
cmp ax,itemQty[bx]
je UpdateNoChange
mov itemQty[bx],ax
jmp UpdateSuccess
UpdateSell:
call NewLine
lea dx,pmptSell
call PrintString
call ReadNumber
jc UpdateInvalidNum
cmp ax,MAX_PRICE
jg UpdateInvalidNum
mov tempWord,ax
mov al,foundIndex
call GetWordOffset
mov ax,tempWord
cmp ax,itemBuy[bx]
jg UpdateSellOK
lea dx,slWrn
call PrintLine
ret
UpdateSellOK:
cmp ax,itemSell[bx]
je UpdateNoChange
mov itemSell[bx],ax
jmp UpdateSuccess
UpdateCategory:
call SelectCategory
jc UpdateEnd
mov bl,foundIndex
mov bh,0
mov al,itemCategory[bx]
cmp al,currentCategory
je UpdateNoChange
mov al,currentCategory
mov itemCategory[bx],al
call GenerateID
mov al,foundIndex
call GetItemIdPtr
lea si,tempID
call CopyZ
jmp UpdateSuccess
UpdateDiscount:
call NewLine
lea dx,pmptDisc
call PrintString
call ReadNumber
jc UpdateDiscountBad
cmp ax,99
jg UpdateDiscountBad
mov bl,foundIndex
mov bh,0
cmp al,itemDiscount[bx]
je UpdateNoChange
mov itemDiscount[bx],al
jmp UpdateSuccess
UpdateInvalidNum:
lea dx,invNmbMsg
call PrintLine
ret
UpdateDiscountBad:
lea dx,invDscMsg
call PrintLine
ret
UpdateNoChange:
lea dx,noChangeMsg
call PrintLine
ret
UpdateSuccess:
lea dx,itmUpMsg
call PrintLine
call DisplayItemDetails
UpdateEnd:
ret
UpdateItem ENDP
;sakib end
 
;Shraya start
SellItem PROC
call NewLine
lea dx,pmptID
call PrintString
lea dx,idBuf
call ReadBuffer
cmp byte ptr idBuf+1,0
jne SellIDNotEmpty
lea dx,srcEmptMsg
call PrintLine
ret
SellIDNotEmpty:
lea dx,idBuf
call ToUpperBuffer
lea dx,idBuf
call ValidateItemIDInput
jnc SellIDValid
lea dx,invidMsg
call PrintLine
ret
SellIDValid:
lea si,idBuf+2
call FindItemByID
jnc SellFound
lea dx,idNFMsg
call PrintLine
ret
SellFound:
mov foundIndex,al
call GetWordOffset
mov ax,itemQty[bx]
cmp ax,0
jne SellAskQty
lea dx,otStcMsg
call PrintLine
ret
SellAskQty:
lea dx,pmptQty
call PrintString
call ReadNumber
jc SellInvalidNum
cmp ax,0
jg SellQtyNotZero
lea dx,qtyZeroMsg
call PrintLine
ret
SellQtyNotZero:
mov tempWord,ax
mov al,foundIndex
call GetWordOffset
mov ax,tempWord
cmp ax,itemQty[bx]
jle SellQtyOK
lea dx,insuffMsg
call PrintString
mov ax,itemQty[bx]
call PrintNumber16
call NewLine
ret
SellQtyOK:
mov ax,itemSell[bx]
mov cx,tempWord
mul cx
mov totalLo,ax
mov totalHi,dx
mov bl,foundIndex
mov bh,0
mov cl,itemDiscount[bx]
mov ax,totalLo
mov dx,totalHi
call PercentOf32
mov discLo,ax
mov discHi,dx
mov ax,tempWord
cmp ax,10
jl NoBulkDiscount
mov cl,5
mov ax,totalLo
mov dx,totalHi
call PercentOf32
mov bulkLo,ax
mov bulkHi,dx
jmp BulkDone
NoBulkDiscount:
mov bulkLo,0
mov bulkHi,0
BulkDone:
mov ax,discLo
mov dx,discHi
add ax,bulkLo
adc dx,bulkHi
jc FinalZero
cmp dx,totalHi
jg FinalZero
jl FinalSubtract
cmp ax,totalLo
jg FinalZero
FinalSubtract:
mov bx,ax
mov cx,dx
mov ax,totalLo
mov dx,totalHi
sub ax,bx
sbb dx,cx
mov finalLo,ax
mov finalHi,dx
jmp FinalReady
FinalZero:
mov finalLo,0
mov finalHi,0
FinalReady:
mov al,foundIndex
call GetWordOffset
mov ax,itemQty[bx]
sub ax,tempWord
mov itemQty[bx],ax
call PrintReceipt
lea dx,saleDoneMsg
call PrintLine
mov ax,itemQty[bx]
cmp ax,0
je SellNowOut
cmp ax,5
jl SellLow
ret
SellLow:
lea dx,lowAlertMsg
call PrintString
call PrintNumber16
lea dx,leftMsg
call PrintLine
ret
SellNowOut:
lea dx,nowOutMsg
call PrintLine
ret
SellInvalidNum:
lea dx,invNmbMsg
call PrintLine
ret
SellItem ENDP
 
PrintReceipt PROC
call NewLine
lea dx,rcpHdr
call PrintLine
lea dx,rcpItm
call PrintString
mov al,foundIndex
call GetItemNamePtr
mov si,di
call PrintZ
call NewLine
lea dx,rcpQty
call PrintString
mov ax,tempWord
call PrintNumber16
call NewLine
lea dx,rcpUnit
call PrintString
mov al,foundIndex
call GetWordOffset
mov ax,itemSell[bx]
call PrintNumber16
lea dx,bdtMsg
call PrintString
call NewLine
lea dx,rcpItmDsc
call PrintString
mov ax,discLo
mov dx,discHi
call PrintNumber32
lea dx,bdtMsg
call PrintString
call NewLine
lea dx,rcpBulkDisc
call PrintString
mov ax,bulkLo
mov dx,bulkHi
call PrintNumber32
lea dx,bdtMsg
call PrintString
call NewLine
lea dx,rcpFinal
call PrintString
mov ax,finalLo
mov dx,finalHi
call PrintNumber32
lea dx,bdtMsg
call PrintString
call NewLine
ret
PrintReceipt ENDP
 
StockReport PROC
cmp itemCount,0
jne StockReportStart
lea dx,invEmptyMsg
call PrintLine
ret
StockReportStart:
mov sumLo,0
mov sumHi,0
call NewLine
lea dx,reportHeader
call PrintLine
lea dx,reportLine
call PrintLine
mov si,0
StockReportLoop:
mov ax,si
cmp al,itemCount
jge StockReportTotal
mov foundIndex,al
mov al,foundIndex
call GetItemNamePtr
mov si,di
call PrintZ
lea dx,space4
call PrintString
mov al,foundIndex
call GetItemIdPtr
mov si,di
call PrintZ
lea dx,space4
call PrintString
mov al,foundIndex
call GetWordOffset
mov ax,itemQty[bx]
call PrintNumber16
lea dx,space4
call PrintString
mov ax,itemBuy[bx]
call PrintNumber16
lea dx,space4
call PrintString
mov ax,itemSell[bx]
call PrintNumber16
call NewLine
mov ax,itemBuy[bx]
mov cx,itemQty[bx]
mul cx
add sumLo,ax
adc sumHi,dx
mov ax,0
mov al,foundIndex
inc ax
mov si,ax
jmp StockReportLoop
StockReportTotal:
lea dx,assetMsg
call PrintString
mov ax,sumLo
mov dx,sumHi
call PrintNumber32
lea dx,bdtMsg
call PrintString
call NewLine
call PrintLowStockList
call PrintOutStockList
ret
StockReport ENDP
 
PrintLowStockList PROC
lea dx,lwLstHdr
call PrintLine
mov tempWord,0
mov si,0
LowListLoop:
mov ax,si
cmp al,itemCount
jge LowListDone
mov foundIndex,al
mov al,foundIndex
call GetWordOffset
mov ax,itemQty[bx]
cmp ax,0
je LowListNext
cmp ax,5
jge LowListNext
mov al,foundIndex
call GetItemNamePtr
mov si,di
call PrintZ
lea dx,space4
call PrintString
mov ax,itemQty[bx]
call PrintNumber16
call NewLine
inc tempWord
LowListNext:
mov ax,0
mov al,foundIndex
inc ax
mov si,ax
jmp LowListLoop
LowListDone:
cmp tempWord,0
jne LowListEnd
lea dx,alAdqMsg
call PrintLine
LowListEnd:
ret
PrintLowStockList ENDP
 
PrintOutStockList PROC
lea dx,otLstHdr
call PrintLine
mov tempWord,0
mov si,0
OutListLoop:
mov ax,si
cmp al,itemCount
jge OutListDone
mov foundIndex,al
mov al,foundIndex
call GetWordOffset
mov ax,itemQty[bx]
cmp ax,0
jne OutListNext
mov al,foundIndex
call GetItemNamePtr
mov si,di
call PrintZ
call NewLine
inc tempWord
OutListNext:
mov ax,0
mov al,foundIndex
inc ax
mov si,ax
jmp OutListLoop
OutListDone:
cmp tempWord,0
jne OutListEnd
lea dx,noneOutMsg
call PrintLine
OutListEnd:
ret
PrintOutStockList ENDP
;Shraya end
 
END MAIN


