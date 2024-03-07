/// 
Class Banksia.OpenAi.Image Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Banksia.OpenAi.Msg.Images.Request' response='Ens.StringResponse' height='2000' width='2000' >
<context>
<property name='imageRequest' type='Banksia.OpenAi.Msg.Images.Request' instantiate='0' />
<property name='imageResponse' type='Banksia.OpenAi.Msg.Images.Response' instantiate='0' />
</context>
<sequence xend='200' yend='650' >
<transform name='Image to OpenAi image' class='Banksia.OpenAi.DTLImage' source='request' target='context.imageRequest' xpos='200' ypos='250' />
<call name='Call Api' target='Banksia.OpenAi.Operation' async='1' xpos='200' ypos='350' >
<request type='Banksia.OpenAi.Msg.Images.Request' >
<assign property="callrequest" value="context.imageRequest" action="set" />
</request>
<response type='Banksia.OpenAi.Msg.Images.Response' >
<assign property="context.imageResponse" value="callresponse" action="set" />
</response>
</call>
<sync name='Wait Image api' calls='Call Api' type='all' xpos='200' ypos='450' />
<transform name='OpenAi image to Image' class='Banksia.OpenAi.DTLImageResponce' source='context.imageResponse' target='response' xpos='200' ypos='550' />
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
