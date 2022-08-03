---
external help file: Microsoft.Graph.DeviceManagement.Actions-help.xml
Module Name: Microsoft.Graph.DeviceManagement.Actions
online version: https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/start-mgdevicemanagementuserexperienceanalyticdevicescopeaction
schema: 2.0.0
---

# Start-MgDeviceManagementUserExperienceAnalyticDeviceScopeAction

## SYNOPSIS
Invoke action triggerDeviceScopeAction

## SYNTAX

### TriggerExpanded (Default)
```
Start-MgDeviceManagementUserExperienceAnalyticDeviceScopeAction [-ActionName <String>]
 [-AdditionalProperties <Hashtable>] [-DeviceScopeId <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Trigger
```
Start-MgDeviceManagementUserExperienceAnalyticDeviceScopeAction
 -BodyParameter <IPathsNcwx4CDevicemanagementUserexperienceanalyticsdevicescopeMicrosoftGraphTriggerdevicescopeactionPostRequestbodyContentApplicationJsonSchema>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Invoke action triggerDeviceScopeAction

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ActionName
Trigger on the service to either START or STOP computing metrics data based on a device scope configuration.

```yaml
Type: String
Parameter Sets: TriggerExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AdditionalProperties
Additional Parameters

```yaml
Type: Hashtable
Parameter Sets: TriggerExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BodyParameter
.
To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.

```yaml
Type: IPathsNcwx4CDevicemanagementUserexperienceanalyticsdevicescopeMicrosoftGraphTriggerdevicescopeactionPostRequestbodyContentApplicationJsonSchema
Parameter Sets: Trigger
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -DeviceScopeId
.

```yaml
Type: String
Parameter Sets: TriggerExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Graph.PowerShell.Models.IPathsNcwx4CDevicemanagementUserexperienceanalyticsdevicescopeMicrosoftGraphTriggerdevicescopeactionPostRequestbodyContentApplicationJsonSchema
## OUTPUTS

### Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceScopeActionResult
## NOTES
Please use Get-Help -Online.

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/start-mgdevicemanagementuserexperienceanalyticdevicescopeaction](https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.actions/start-mgdevicemanagementuserexperienceanalyticdevicescopeaction)

