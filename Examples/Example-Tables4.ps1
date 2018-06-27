Import-Module PSWriteWord -Force

$FilePath = "$Env:USERPROFILE\Desktop\PSWriteWord-Example-Tables4.docx"

#Clear-Host
$WordDocument = New-WordDocument $FilePath

$InvoiceEntry1 = @{}
$InvoiceEntry1.Description = 'IT Services'
$InvoiceEntry1.Amount = '$200'

$InvoiceEntry2 = @{}
$InvoiceEntry2.Description = 'IT Services'
$InvoiceEntry2.Amount = '$200'

$InvoiceData = @()
$InvoiceData += $InvoiceEntry1
$InvoiceData += $InvoiceEntry2


$Table = New-WordTable -WordDocument $WordDocument -NrRows 5 -NrColumns 3 -Supress $false

$BorderTypeTop = New-WordTableBorder -BorderStyle Tcbs_dotted -BorderSize two -BorderSpace 0 -BorderColor Blue
$BorderTypeBottom = New-WordTableBorder -BorderStyle Tcbs_single -BorderSize one -BorderSpace 0 -BorderColor Red
$BorderTypeLeft = New-WordTableBorder -BorderStyle Tcbs_dashed -BorderSize two -BorderSpace 0 -BorderColor Blue
$BorderTypeRight = New-WordTableBorder -BorderStyle Tcbs_single -BorderSize one -BorderSpace 1 -BorderColor Yellow

$BorderTypeInsideH = New-WordTableBorder -BorderStyle Tcbs_single -BorderSize one -BorderSpace 1 -BorderColor Pink
$BorderTypeInsideV = New-WordTableBorder -BorderStyle Tcbs_single -BorderSize one -BorderSpace 1 -BorderColor Black

#$Table = Add-WordTable -WordDocument $WordDocument -Table $InvoiceData -Design LightShading -Supress $false

Set-WordTableBorder -Table $Table -TableBorderType Top -Border $BorderTypeTop
Set-WordTableBorder -Table $Table -TableBorderType Bottom -Border $BorderTypeBottom
Set-WordTableBorder -Table $Table -TableBorderType Left -Border $BorderTypeLeft
Set-WordTableBorder -Table $Table -TableBorderType Right -Border $BorderTypeRight
Set-WordTableBorder -Table $Table -TableBorderType InsideH -Border $BorderTypeInsideH
Set-WordTableBorder -Table $Table -TableBorderType InsideV -Border $BorderTypeInsideV

#Add-WordText -WordDocument $WordDocument -Text "Invoice Data" -FontSize 15
#Add-WordParagraph -WordDocument $WordDocument


Save-WordDocument $WordDocument

### Start Word with file
Invoke-Item $FilePath
