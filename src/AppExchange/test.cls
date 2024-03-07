Class AppExchange.test Extends Ens.DataTransformDTL [ DependsOn = EnsLib.ebXML.MessageWithPayload ]
{

/// DTL Definition.
XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform targetClass='EnsLib.ebXML.MessageWithPayload' targetDocType='' sourceClass='EnsLib.ebXML.MessageWithPayload' sourceDocType='' create='new' language='objectscript'>
</transform>
}

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

}
