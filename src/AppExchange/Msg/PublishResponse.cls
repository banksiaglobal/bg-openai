Class AppExchange.Msg.PublishResponse Extends (Ens.Response, %JSON.Adaptor, %XML.Adaptor)
{

Parameter %JSONIGNOREINVALIDFIELD = 1;

/// Status
Property Status As %String(MAXLEN = "");

Storage Default
{
<Data name="PublishResponseDefaultData">
<Subscript>"PublishResponse"</Subscript>
<Value name="1">
<Value>Status</Value>
</Value>
</Data>
<DefaultData>PublishResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
