Class AppExchange.DTLImageResponse Extends Ens.DataTransformDTL [ DependsOn = (Banksia.OpenAi.Msg.Images.Response, Ens.StringResponse) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Banksia.OpenAi.Msg.Images.Response' targetClass='Ens.StringResponse' create='new' language='objectscript' >
<assign value='source.Data.(1).Url' property='target.StringValue' action='set' />
</transform>
}

}
