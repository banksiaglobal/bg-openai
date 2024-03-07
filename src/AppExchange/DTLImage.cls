Class AppExchange.DTLImage Extends Ens.DataTransformDTL [ DependsOn = Banksia.OpenAi.Msg.Images.Request ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Banksia.OpenAi.Msg.Images.Request' targetClass='Banksia.OpenAi.Msg.Images.Request' create='new' language='objectscript' >
<assign value='"generations"' property='target.Operation' action='set' />
<assign value='"Generate a logo based on the project description: "_source.Prompt' property='target.Prompt' action='set' />
<assign value='source.User' property='target.User' action='set' />
<assign value='source.Size' property='target.Size' action='set' />
<assign value='"url"' property='target.ResponseFormat' action='set' />
</transform>
}

}
