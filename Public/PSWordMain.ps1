function New-WordDocument {
    [CmdletBinding()]
    param(
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)][string] $FilePath = ''
    )
    $Word = [Xceed.Words.NET.DocX]
    $WordDocument = $Word::Create($FilePath)
    return $WordDocument
}

function Get-WordDocument {
    [CmdletBinding()]
    param(
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)][string] $FilePath
    )
    $Word = [Xceed.Words.NET.DocX]
    $WordDocument = $Word::Load($FilePath)
    return $WordDocument
}

function Save-WordDocument {
    [CmdletBinding()]
    param (
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)][Xceed.Words.NET.Container] $WordDocument,
        [string] $FilePath,
        [string] $Language,
        [switch] $KillWord,
        [bool] $Supress = $false
    )

    if (-not [string]::IsNullOrEmpty($Language)) {
        Write-Verbose "Save-WordDocument - Setting Language to $Language"
        $Paragraphs = Get-WordParagraphs -WordDocument $WordDocument
        foreach ($p in $Paragraphs) {
            Set-WordParagraph -Paragraph $p -Language $Language -Supress $Supress
        }
    }
    if (($KillWord) -and ($FilePath -ne '')) {
        $FileName = Split-Path $FilePath -leaf
        #$Process = get-process | Where { $_.MainWindowTitle -like "$FileName*"} | Select-Object id, name, mainwindowtitle | Sort-Object mainwindowtitle
        #$Process.MainWindowTitle
        Write-Verbose "Save-WordDocument - Killing Microsoft Word with text $FileName"
        $Process = Stop-Process -Name "$FileName*" -Confirm:$false -PassThru
        Write-Verbose "Save-WordDocument - Killed Microsoft Word: $FileName"
    }
    if ([string]::IsNullOrEmpty($FilePath)) {
        $WordDocument.Save()
    } else {
        $WordDocument.SaveAs($FilePath)
    }
    if ($Supress) { return } else { return $WordDocument }
}