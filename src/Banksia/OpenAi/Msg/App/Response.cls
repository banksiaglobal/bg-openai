Class Banksia.OpenAi.Msg.App.Response Extends Banksia.OpenAi.Msg.Api.Response
{

Property DescRepo As %String(%JSONFIELDNAME = "description", MAXLEN = "");

Property UrlLogo As Banksia.OpenAi.Msg.Chat.Usage(%JSONFIELDNAME = "url_logo", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ResponseDefaultData1">
<Subscript>"Response1"</Subscript>
<Value name="1">
<Value>Content</Value>
</Value>
<Value name="2">
<Value>Usage</Value>
</Value>
<Value name="3">
<Value>DescRepo</Value>
</Value>
<Value name="4">
<Value>UrlLogo</Value>
</Value>
</Data>
<DefaultData>ResponseDefaultData1</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
