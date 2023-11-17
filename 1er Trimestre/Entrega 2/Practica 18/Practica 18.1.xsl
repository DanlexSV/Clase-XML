<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <body>
            <h1>VideoClub</h1>
            <br/>
            <h2>Cartelera de Peliculas</h2>

            <table border = "1">
                <tr bgcolor = "#B7FFED">
                    <th>Titulo</th>
                    <th>Nacionalidad</th>
                    <th>Productor</th>
                    <th>Director</th>
                    <th>Anio</th>
                    <th>Duracion</th>
                    <th>Genero</th>
                    <th>Sinopsis</th>
                    <th>URL</th>
                </tr>
                <xsl:for-each select = "VideoClub/Pelicula">
                    <tr>
                        <td><xsl:value-of select="Titulo"/></td>
                        <td><xsl:value-of select="Nacionalidad"/></td>
                        <td><xsl:value-of select="Productor"/></td>
                        <td><xsl:value-of select="Director"/></td>
                        <td><xsl:value-of select="Anio"/></td>
                        <td><xsl:value-of select="Duracion"/></td>
                        <td><xsl:value-of select="Genero"/></td>
                        <td><xsl:value-of select="Sinopsis"/></td>
                        <td><xsl:value-of select="URL"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>