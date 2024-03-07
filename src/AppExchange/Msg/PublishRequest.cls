Class AppExchange.Msg.PublishRequest Extends (Ens.Request, %JSON.Adaptor, %XML.Adaptor)
{

Parameter %JSONIGNOREINVALIDFIELD = 1;

/// The GitHub URL of project
Property GitHubUrl As %String(MAXLEN = "");

/// The summary of the project
Property Summary As %String(MAXLEN = "");

/// Logo URL
Property LogoUrl As %String(MAXLEN = "");

Storage Default
{
<Data name="PublishRequestDefaultData">
<Subscript>"PublishRequest"</Subscript>
<Value name="1">
<Value>GitHubUrl</Value>
</Value>
<Value name="2">
<Value>Summary</Value>
</Value>
<Value name="3">
<Value>LogoUrl</Value>
</Value>
</Data>
<DefaultData>PublishRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
