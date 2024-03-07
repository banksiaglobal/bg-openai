Class AppExchange.Msg.PublishResponce Extends (Ens.Request, %JSON.Adaptor, %XML.Adaptor)
{

Parameter %JSONIGNOREINVALIDFIELD = 1;

/// Status
Property Status As %String(MAXLEN = "");

Storage Default
{
<Data name="PublishResponceDefaultData">
<Subscript>"PublishResponce"</Subscript>
<Value name="1">
<Value>Status</Value>
</Value>
</Data>
<DefaultData>PublishResponceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
