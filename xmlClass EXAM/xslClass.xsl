<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="classroom">
  <html>
      <head>
      <title>IS31 English Class</title>
      </head>
      <body bgcolor="E0E0E0">
        <center>
          <img src="{/classroom/classimg}" width="500px" heigh="500px"/>
          <h1><xsl:value-of select="/classroom/classname"/></h1>
          <br/>
          <br/>
          <br/>
          <br/>
          
          <h2 align="center">Students</h2>
          <br/>
          <xsl:for-each select="/classroom/student">
              <table>
              <tr>
                  <td rowspan="3"><img  src="{image}" width="200px" height="200px"/></td>
                  <td bgcolor="white" align="center"><h2><xsl:value-of select="name"/></h2></td>
                  <td bgcolor="white" align="center"><h2><xsl:value-of select="surname"/></h2></td>
                </tr>
                
                <tr>
                      <th bgcolor="cbcbcb" align="center"><p>Age</p></th>
                      <th bgcolor="cbcbcb" align="center"><p>E-mail</p></th>
                </tr>
                <tr>
                      <td align="center"><xsl:value-of select="age"/></td>
                      <td align="center"><xsl:value-of select="email"/></td>
                </tr>
                
                <tr>
                      <th bgcolor="404040" colspan="3" align="center"><h3>PROJECT</h3></th>
                </tr>
                
                <tr>
                      <td colspan="3" align="center"><font size="5px">Project name: <xsl:value-of select="project/projectname"/></font></td>
                </tr>
                
                <tr>
                      <td colspan="3" align="center"><font size="4px"><xsl:value-of select="project/githublink"/></font></td>
                </tr>
                <br/>
                <br/>
              </table>
          </xsl:for-each>
        </center>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
