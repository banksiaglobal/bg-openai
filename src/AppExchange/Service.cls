Include Banksia.OpenAi.OpenAi

Class AppExchange.Service Extends Ens.BusinessService
{

/// Publish App
Method PublishApp(pRequest As AppExchange.Msg.PublishRequest, Output pResponse As AppExchange.Msg.PublishResponse) As %Status
{
    set status = $$$OK
    try
    {
        set pResponse = ##class(AppExchange.Msg.PublishResponse).%New()
        set pResponse.Status="OK"
    }
    Catch ex {
        set status = ex.AsStatus()
        set msgError = $System.Status.GetOneStatusText(status,1)
        $$$ThrowOnError($System.Status.Error(5001,"Internal error: "_msgError))
    }
    return status
}

/// MessageMap
XData MessageMap
{
<MapItems>
    <MapItem MessageType="AppExchange.Msg.PublishRequest">
        <Method>PublishApp</Method>
    </MapItem>
</MapItems>
}

}
