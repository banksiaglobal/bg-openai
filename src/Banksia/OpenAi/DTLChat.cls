Class Banksia.OpenAi.DTLChat Extends Ens.DataTransformDTL [ DependsOn = (Banksia.OpenAi.Msg.Chat.Response, Banksia.OpenAi.Msg.SimplePrompt.Response) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Banksia.OpenAi.Msg.Chat.Response' targetClass='Banksia.OpenAi.Msg.SimplePrompt.Response' create='new' language='objectscript' >
<assign value='source.Choices.(1).Message.Content' property='target.Content' action='set' />
<assign value='source.Model' property='target.Model' action='set' />
<assign value='source.Object' property='target.Object' action='set' />
<assign value='source.Organization' property='target.Organization' action='set' />
<assign value='source.RequestId' property='target.RequestId' action='set' />
<assign value='source.OpenaiVersion' property='target.OpenaiVersion' action='set' />
<assign value='source.Created' property='target.Created' action='set' />
<assign value='source.Usage' property='target.Usage' action='set' />
</transform>
}

}
