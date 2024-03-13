/// 
Class AppExchange.Process Extends Ens.BusinessProcessBPL
{

/// BPL Definition
Storage Default
{
<Description>
<![CDATA[BPL Definition]]></Description>
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='AppExchange.Msg.PublishRequest' response='AppExchange.Msg.PublishResponse' height='2000' width='2000' >
<context>
<property name='imageResponse' type='Banksia.OpenAi.Msg.Images.Response' instantiate='0' />
<property name='summary' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='2500' />
</parameters>
</property>
</context>
<sequence xend='200' yend='1109' >
<empty name='Process App Request' xpos='200' ypos='250' >
<annotation><![CDATA[This is some process our app usually goes through]]></annotation>
</empty>
<if name='Summary empty' condition='request.Summary="" &amp; request.GitHubUrl &apos;=""' xpos='200' ypos='350' xend='200' yend='700' >
<true>
<call name='Generate Summary' target='OpenAiOut' async='1' xpos='335' ypos='500' >
<request type='Banksia.OpenAi.Msg.SimplePrompt.Request' >
<assign property="callrequest.Prompt" value="&quot;Visit the website you will be provided on the next step. Describe the main idea of the project, its objectives and key features in one paragraph.&quot;" action="set" />
<assign property="callrequest.UserInput" value="request.GitHubUrl" action="set" />
<assign property="callrequest.Model" value="&quot;gpt-4&quot;" action="set" />
</request>
<response type='Banksia.OpenAi.Msg.SimplePrompt.Response' >
<assign property="context.summary" value="callresponse.Content" action="set" />
</response>
</call>
<sync name='Wait call' calls='Generate Summary' type='all' xpos='335' ypos='600' />
</true>
</if>
<if name='LogoUrl empty' condition='request.LogoUrl ="" &amp; context.summary &apos;=""' xpos='199' ypos='774' xend='204' yend='934' >
<true>
<call name='Generate Logo' target='OpenAiOut' async='1' xpos='510' ypos='877' >
<request type='Banksia.OpenAi.Msg.Images.Request' >
<assign property="callrequest.Operation" value="&quot;generations&quot;" action="set" />
<assign property="callrequest.ResponseFormat" value="&quot;url&quot;" action="set" />
<assign property="callrequest.Prompt" value="&quot;Create on app logo based on the description: &quot;_context.summary" action="set" />
</request>
<response type='Banksia.OpenAi.Msg.Images.Response' >
<assign property="context.imageResponse" value="callresponse" action="set" />
<assign property="request.Summary" value="context.summary" action="set" />
</response>
</call>
<sync name='Wait call' calls='Generate Logo' type='all' xpos='509' ypos='967' />
<transform name='Image to request' class='AppExchange.DTLImageToString' source='context.imageResponse' target='request.LogoUrl' xpos='541' ypos='1038' />
</true>
</if>
<call name='Publish App' target='AppPublish' async='0' xpos='200' ypos='1014' >
<request type='AppExchange.Msg.PublishRequest' >
<assign property="callrequest.GitHubUrl" value="request.GitHubUrl" action="set" />
<assign property="callrequest.Summary" value="request.Summary" action="set" />
<assign property="callrequest.LogoUrl" value="request.LogoUrl" action="set" />
</request>
<response type='AppExchange.Msg.PublishResponse' >
<assign property="response.Status" value="callresponse.Status" action="set" />
</response>
</call>
</sequence>
</process>
}

}
