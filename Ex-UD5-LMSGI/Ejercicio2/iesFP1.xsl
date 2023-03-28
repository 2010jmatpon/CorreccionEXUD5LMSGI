<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <p>Nombre y apellidos: Juan María Mateos Ponce</p>
        <xsl:apply-templates/>
    </body>
</html>
</xsl:template>

<xsl:template match="ies/ciclos/ciclo">
   <ul>"<xsl:value-of select="nombre"/>"</ul> 
</xsl:template>

<xsl:template match="nombre">
    <xsl:value-of select="."></xsl:value-of>
</xsl:template>
</xsl:stylesheet>