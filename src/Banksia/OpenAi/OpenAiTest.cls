Class Banksia.OpenAi.OpenAiTest Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Banksia.OpenAi.OpenAiTest" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="Banksia.OpenAi.Operation" Category="" ClassName="Banksia.OpenAi.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Credentials">user</Setting>
    <Setting Target="Adapter" Name="SSLConfig">OpenAiSSL</Setting>
  </Item>
  <Item Name="Banksia.OpenAi.Chat" Category="" ClassName="Banksia.OpenAi.Chat" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Banksia.OpenAi.Image" Category="" ClassName="Banksia.OpenAi.Image" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Banksia.OpenAi.App" Category="" ClassName="Banksia.OpenAi.App" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
