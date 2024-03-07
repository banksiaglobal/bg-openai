/// 
Class AppExchange.App Extends Ens.BusinessProcessBPL
{
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.StringRequest' response='Ens.StringResponse' height='2000' width='2000' >
<context>
<property name='url' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='2500' />
</parameters>
</property>
<property name='description' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='2500' />
</parameters>
</property>
<property name='urlLogo' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='2500' />
</parameters>
</property>
</context>
<sequence xend='200' yend='900' >
<if name='check url' condition='request.StringValue &apos;= ""' xpos='200' ypos='250' xend='200' yend='800' >
<true>
<call name='Call Chat' target='AppExchange.Chat' async='1' xpos='335' ypos='400' >
<request type='Banksia.OpenAi.Msg.SimplePrompt.Request' >
<assign property="callrequest.Prompt" value="request.StringValue" action="set" />
<assign property="context.url" value="request.StringValue" action="set" />
</request>
<response type='Banksia.OpenAi.Msg.SimplePrompt.Response' >
<assign property="context.description" value="callresponse.Content" action="set" />
</response>
</call>
<sync name='Wait chat' calls='Call Chat' type='all' xpos='335' ypos='500' />
<call name='Call Image' target='AppExchange.Image' async='1' xpos='335' ypos='600' >
<request type='Banksia.OpenAi.Msg.Images.Request' >
<assign property="callrequest.Prompt" value="context.description" action="set" />
</request>
<response type='Ens.StringResponse' >
<assign property="context.urlLogo" value="callresponse.StringValue" action="set" />
<assign property="response.StringValue" value="&quot;url: &quot;_context.url_ &quot; description: &quot;_ context.description _ &quot; logo: &quot;_ callresponse.StringValue " action="set" />
</response>
</call>
<sync name='Wait Image' calls='Call Image' type='all' xpos='335' ypos='700' />
</true>
</if>
</sequence>
</process>
}

/// BPL Definition
Storage Default
{
<Description>
<![CDATA[BPL Definition]]></Description>
<Type>%Storage.Persistent</Type>
}

}
