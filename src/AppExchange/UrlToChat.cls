Class AppExchange.UrlToChat Extends Ens.DataTransformDTL [ DependsOn = (Ens.StringRequest, Banksia.OpenAi.Msg.SimplePrompt.Request) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Ens.StringRequest' targetClass='Banksia.OpenAi.Msg.SimplePrompt.Request' create='new' language='objectscript' >
<assign value='source.StringValue' property='target.Prompt' action='set' />
</transform>
}

}
