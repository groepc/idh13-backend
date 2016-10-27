<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:tns="saibot.airport/services/utility/reference"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/QueryAirportsDB"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions"
                xmlns:refData="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/QueryAirportsDB_table.xsd"/>
        <oracle-xsl-mapper:rootElement name="CmnAirportsCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/QueryAirportsDB"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/AirportService.xsd"/>
        <oracle-xsl-mapper:rootElement name="findAirportsResponseMessage"
                                       namespace="saibot.airport/services/utility/reference"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU OCT 20 14:51:00 CEST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:findAirportsResponseMessage>
      <tns:Airports>
        <xsl:for-each select="/ns0:CmnAirportsCollection/ns0:CmnAirports">
          <tns:airport>
            <refData:IATACode>
              <xsl:value-of select="ns0:iataCode"/>
            </refData:IATACode>
            <refData:ICAOCode>
              <xsl:value-of select="ns0:icaoCode"/>
            </refData:ICAOCode>
            <refData:Name>
              <xsl:value-of select="ns0:name"/>
            </refData:Name>
            <refData:Country>
              <refData:code>
                <xsl:value-of select="ns0:cmnCountries/ns0:code"/>
              </refData:code>
              <refData:name>
                <xsl:value-of select="ns0:cmnCountries/ns0:name"/>
              </refData:name>
              <refData:tailcode>
                <xsl:value-of select="ns0:cmnCountries/ns0:tailcode"/>
              </refData:tailcode>
              <refData:Flag>
                <xsl:value-of select="ns0:cmnCountries/ns0:flag"/>
              </refData:Flag>
            </refData:Country>
            <refData:City>
              <xsl:value-of select="ns0:city"/>
            </refData:City>
            <refData:UTCOffset>
              <xsl:value-of select="ns0:utcOffset"/>
            </refData:UTCOffset>
          </tns:airport>
        </xsl:for-each>
      </tns:Airports>
    </tns:findAirportsResponseMessage>
  </xsl:template>
</xsl:stylesheet>