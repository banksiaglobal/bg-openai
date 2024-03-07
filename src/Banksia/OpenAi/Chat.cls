/// 
Class Banksia.OpenAi.Chat Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Banksia.OpenAi.Msg.SimplePrompt.Request' response='Banksia.OpenAi.Msg.SimplePrompt.Response' height='2000' width='2000' >
<context>
<property name='MsgChatRequest' type='Banksia.OpenAi.Msg.Chat.Request' instantiate='0' />
<property name='MsgChatResponse' type='Banksia.OpenAi.Msg.Chat.Response' instantiate='0' />
</context>
<sequence xend='200' yend='650' >
<code name='Prepare Msg' xpos='200' ypos='250' >
<![CDATA[ set context.MsgChatRequest = ##class(Banksia.OpenAi.Msg.Chat.Request).%New()
 set context.MsgChatRequest.Model = request.Model
 if context.MsgChatRequest.Model = ""
 {
 set context.MsgChatRequest.Model = "gpt-4"
 }
 
 set context.MsgChatRequest.MaxTokens = request.MaxTokens
 if context.MsgChatRequest.MaxTokens = 0
 {
 set context.MsgChatRequest.MaxTokens = 100
 }
 
 set context.MsgChatRequest.CompiledStop = "none"
 set message = ##class(Banksia.OpenAi.Msg.Chat.Message).%New()
 set message.Role = "user"
 set message.Content = "Visit the website " _request.Prompt_ " .Describe the main idea of the project, its objectives and key features in one paragraph."
 do context.MsgChatRequest.Messages.Insert(message)]]>
</code>
<call name='Call Api' target='Banksia.OpenAi.Operation' async='1' xpos='200' ypos='350' >
<request type='Banksia.OpenAi.Msg.Chat.Request' >
<assign property="callrequest" value="context.MsgChatRequest" action="set" />
</request>
<response type='Banksia.OpenAi.Msg.Chat.Response' >
<assign property="context.MsgChatResponse" value="callresponse" action="set" />
</response>
</call>
<sync name='Wait Call api' calls='Call Api' type='all' xpos='200' ypos='450' />
<transform name='Openai chat to Chat' class='Banksia.OpenAi.DTLChat' source='context.MsgChatResponse' target='response' xpos='200' ypos='550' />
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
