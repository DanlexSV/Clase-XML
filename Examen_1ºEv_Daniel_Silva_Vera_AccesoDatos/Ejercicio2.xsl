<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>

                <table border="1">
                    <tr bgcolor="#887788">
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Potencia</th>
                        <th>Plazas</th>
                    </tr>
                    <xsl:for-each select = "coches/cod_coche[marca = 'Audi']">
                        <xsl:if test="potencia &gt; 140">
                                <tr>
                                    <td bgcolor="ff0000"><xsl:value-of select="marca"/></td>
                                    <td bgcolor="ff0000"><xsl:value-of select="modelo"/></td>
                                    <td bgcolor="ff0000"><xsl:value-of select="potencia"/></td>
                                    <td bgcolor="ff0000"><xsl:value-of select="plazas"/></td>
                                </tr>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:for-each select = "coches/cod_coche">
                                <tr>
                                    <td bgcolor="00ff00"><xsl:value-of select="marca"/></td>
                                    <td bgcolor="00ff00"><xsl:value-of select="modelo"/></td>
                                    <td bgcolor="00ff00"><xsl:value-of select="potencia"/></td>
                                    <td bgcolor="00ff00"><xsl:value-of select="plazas"/></td>
                                </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>