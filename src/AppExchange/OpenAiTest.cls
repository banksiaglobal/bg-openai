Class AppExchange.OpenAiTest Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="AppExchange.OpenAiTest" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="AppExchange.Operation" Category="" ClassName="AppExchange.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Credentials">user</Setting>
    <Setting Target="Adapter" Name="SSLConfig">OpenAiSSL</Setting>
  </Item>
  <Item Name="AppExchange.Chat" Category="" ClassName="AppExchange.Chat" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="AppExchange.Image" Category="" ClassName="AppExchange.Image" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="AppExchange.App" Category="" ClassName="AppExchange.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
