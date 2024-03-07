Class AppExchange.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="AppExchange.Production" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="AppPublish" Category="" ClassName="AppExchange.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="AppIn" Category="" ClassName="EnsLib.File.PassthroughService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">AppProcess</Setting>
    <Setting Target="Adapter" Name="FilePath">/tmp</Setting>
    <Setting Target="Adapter" Name="FileSpec">AppTest*</Setting>
  </Item>
  <Item Name="AppProcess" Category="" ClassName="AppExchange.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="OpenAiOut" Category="" ClassName="Banksia.OpenAi.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Credentials">openai</Setting>
    <Setting Target="Adapter" Name="SSLConfig">OpenAiSSL</Setting>
  </Item>
</Production>
}

}
