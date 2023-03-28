<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <b>
            <p>Nombre y apellidos: Juan María Mateos Ponce</p>
            <ol>
                <xsl:for-each select="bib/libro">
                <xsl:if test="precio&lt;100">
                    <li>
                        
                        <xsl:value-of select="titulo"/>
                    </li>
                </xsl:if>
                </xsl:for-each>
            </ol>
        </b>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>