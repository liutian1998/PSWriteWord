---
external help file: PSWriteWord-help.xml
Module Name: PSWriteWord
online version:
schema: 2.0.0
---

# Add-WordPageBreak

## SYNOPSIS
{{Fill in the Synopsis}}

## SYNTAX

```
Add-WordPageBreak [[-WordDocument] <Container>] [[-WordObject] <InsertBeforeOrAfter>]
 [[-InsertWhere] <InsertWhere>] [[-Supress] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
{{Fill in the Description}}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -InsertWhere
{{Fill InsertWhere Description}}

```yaml
Type: InsertWhere
Parameter Sets: (All)
Aliases: Insert
Accepted values: AfterSelf, BeforeSelf

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Supress
{{Fill Supress Description}}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WordDocument
{{Fill WordDocument Description}}

```yaml
Type: Container
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -WordObject
{{Fill WordObject Description}}

```yaml
Type: InsertBeforeOrAfter
Parameter Sets: (All)
Aliases: Paragraph, Table, List

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Xceed.Words.NET.Container
Xceed.Words.NET.InsertBeforeOrAfter

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
