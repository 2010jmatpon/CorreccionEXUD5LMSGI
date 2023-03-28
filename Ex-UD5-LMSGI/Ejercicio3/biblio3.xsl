<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <p>Nombre y apellidos: Juan María Mateos Ponce</p>
    
        <table>
            <xsl:for-each select="bib/libro">
                <tr>
                    <td><xsl:value-of select="precio"/></td>
                    <xsl:choose>
                        <xsl:when test="precio &gt; 100">
                            <xsl:apply-templates select="precio"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="titulo">
                        </otherwise>
                    </xsl:choose>
                    <td><xsl:value-of select="@año"/></td>
                </tr>
                
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
<xsl:template match="precio">
        <td bgcolor="FF0000">
            <xsl:value-of select="titulo"/>
        </td>
    </xsl:template>
</xsl:stylesheet>