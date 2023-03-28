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

<xsl:template match="bib/book">
    <ul>
        <li>
            <xsl:value-of select="title"/> -"<xsl:value-of select="publisher"/>" (<xsl:value-of select="year"/>) 
        </li>
    </ul>
    
</xsl:template>

<xsl:template match="title">
    <xsl:value-of select="."></xsl:value-of>
</xsl:template>

<xsl:template match="publisher">
    <xsl:value-of select="."></xsl:value-of>
</xsl:template>

<xsl:template match="year">
    <xsl:value-of select="."></xsl:value-of>
</xsl:template>
</xsl:stylesheet>