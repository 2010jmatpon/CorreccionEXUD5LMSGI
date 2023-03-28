<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <p>Nombre y apellidos: Juan María Mateos Ponce</p>
        <ol>
            <xsl:for-each select="ies/ciclos/ciclo">
                <xsl:sort select="nombre" order="descending"></xsl:sort>
                <li>"<xsl:value-of select="nombre"/>" (<xsl:value-of select="grado"/>)</li>
            </xsl:for-each>
        </ol>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>