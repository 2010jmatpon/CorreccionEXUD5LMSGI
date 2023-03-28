<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <p>Nombre y apellidos: Juan María Mateos Ponce</p>
        <h1>IES Nuestra Sra. de los Remedios</h1>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Año</th>
            </tr>
            <xsl:for-each select="ies/ciclos/ciclo">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                    <xsl:choose>
                        <xsl:when test="decretoTitulo/@ano &gt; 2009">
                            <td style="color: green;"><xsl:value-of select="decretoTitulo/@ano"/></td>
                        </xsl:when>
                        <xsl:when test="decretoTitulo/@ano&lt;2009">
                            <td style="color: red"><xsl:value-of select="decretoTitulo/@ano"/></td>
                        </xsl:when>
                        <xsl:otherwise>
                            <td style="color: blue"><xsl:value-of select="decretoTitulo/@ano"/></td>
                        </xsl:otherwise>
                    </xsl:choose>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>