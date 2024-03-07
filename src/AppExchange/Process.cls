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
<sequence xend='200' yend='900' >
<empty name='Process App Request' xpos='200' ypos='250' >
<annotation><![CDATA[This is some process our app usually goes through]]></annotation>
</empty>
<if name='Summary empty' condition='request.Summary=""' xpos='200' ypos='350' xend='200' yend='700' >
<true>
<call name='Generate Summary' target='OpenAiOut' async='1' xpos='335' ypos='500' >
<request type='Banksia.OpenAi.Msg.SimplePrompt.Request' >
<assign property="callrequest.Prompt" value="&quot;Visit the website you will be provided on the next step. Describe the main idea of the project, its objectives and key features in one paragraph.&quot;" action="set" />
<assign property="callrequest.UserInput" value="request.GitHubUrl" action="set" />
<assign property="callrequest.Model" value="&quot;gpt-4&quot;" action="set" />
</request>
<response type='Banksia.OpenAi.Msg.SimplePrompt.Response' />
</call>
<sync calls='Generate Summary' type='all' xpos='335' ypos='600' />
</true>
</if>
<call name='Publish App' target='AppPublish' async='0' xpos='200' ypos='800' >
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
