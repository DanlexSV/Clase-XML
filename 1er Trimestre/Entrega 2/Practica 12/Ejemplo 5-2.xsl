<?xml version="1.0" encoding="UTF-8"?>
<xsi:stylesheet version="1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsi:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca</h1>
                <table>
                    <tr bgcolor = "#887788">
                        <th>Título</th>
                        <th>Autor</th>
                    </tr>
                    <xsi:for-each select = "libreria/libro">
                    <tr>
                        <td><xsi:value-of select = "titulo"/></td>
                        <td><xsi:value-of select = "autor"/></td>
                    </tr>
                    </xsi:for-each>
                </table>
            </body>
        </html>
    </xsi:template>
</xsi:stylesheet>