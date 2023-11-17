<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca</h1>

                <table border="1">
                    <tr bgcolor="#887788">
                        <th>ISBN</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                        <th>Num Páginas</th>
                    </tr>
                    <xsl:for-each select = "libreria/libro">
                        <xsl:if test="numPaginas &lt; 150">
                            <tr>
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                                <td><xsl:value-of select="numPaginas"/></td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="numPaginas &gt; 150">
                            <tr>
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                                <td bgcolor="EA2B60"><xsl:value-of select="numPaginas"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>