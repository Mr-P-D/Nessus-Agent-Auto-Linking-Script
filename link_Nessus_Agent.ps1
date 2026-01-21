$nessusCli = "C:\Program Files\Tenable\Nessus Agent\nessuscli.exe"

if (Test-Path $nessusCli) {

    & $nessusCli agent unlink --force

    Start-Sleep -Seconds 10

    & $nessusCli agent link --key="paste activation key from TenableIO" --host="sensor.cloud.tenable.com" --port=443 --groups="add your group here"
}
