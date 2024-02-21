<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<style>
.header img {
  float: left;
  
  width: 100px;
  height: 60px;
}

.header h2 {
  position: relative;
  top:5px;
}
</style>

<xsl:for-each select="DCC_Image">
<div class="header">
 <xsl:variable name="img" select="@Image"/>
 <img src="{$img}" />
 <h2 position="" style="color:#555555;margin-left:120px">Dell Command | Configure BIOS CONFIGURATIONS</h2>
</div>
</xsl:for-each>

  <xsl:for-each select="DCC_Image/BiosConfiguration">
    <h5 style="color:#555555;margin-top:-10px;margin-left:120px;font-weight:500">
      Created Date and Time : <xsl:value-of select="@DateTime" />
    </h5>
  </xsl:for-each>
  
 <xsl:for-each select="DCC_Image/BiosConfiguration/category">
 <h4 style="color:#555555;margin-top:30px">Category Name : <xsl:value-of select="@name" /></h4>
	
  <html>

    <style>
      table {
      border-collapse: collapse;
      margin-left:20px;
      margin-top:-10px
      }

      table, td, th {
      border-style:solid;
      border-width:thin;
      border-color:#cccccc;
      }

      body {
      margin-top: 40px;
      margin-bottom: 40px;
      margin-left: 50px;
      }
    </style>

    <body>
  <table>
      <tr style="color:white; background-color:#007db8">
        <td width="200">
          <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;Setting</xsl:text>
          <span class="xmlxsltmaker"></span>
        </td>
        <td width="800">
          <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;Value</xsl:text>
          <span class="xmlxsltmaker"></span>
        </td>
      </tr>

  <xsl:for-each select="setting">

     <tr style="color:#555555">
        	<td wrap="soft">
            <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
            <span class="xmlxsltmaker"></span>
            <xsl:value-of select="@name"/>
          </td>
        	<td wrap="soft" width="800">
            <xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
            <span class="xmlxsltmaker"></span>
            <xsl:value-of select="@value"/>
          </td>
     </tr>
  </xsl:for-each>
     
 </table>
 </body>
 </html>
 </xsl:for-each>

  
</xsl:template>
</xsl:stylesheet>