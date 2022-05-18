<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/tienda">
<head>
    <title><xsl:value-of select="title"/></title>
    <link rel ="stylesheet" href="3_tienda.css"/>
</head>
<body>
    <header><xsl:value-of select="title"/></header>
    <section id="introducion">
        <h1><xsl:value-of select="encabezado"/></h1>
        <p><xsl:value-of select="descripcion"/></p>
    </section>
    <lista>
        <h2>Lista de products</h2>
        <div class="cajadeproductos">
            <xsl:for-each select="/tienda/productos/producto">
                <div class="producto">
                    <h3><xsl:value-of select="titulo"/></h3>
                    <p><xsl:value-of select="descripcionpro"/></p>
                    <p><xsl:value-of select="precio"/></p>
                </div>
            </xsl:for-each>
        </div>
    </lista>
</body>
</xsl:template>
</xsl:stylesheet>
