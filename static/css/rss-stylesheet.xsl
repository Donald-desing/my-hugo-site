<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>RSS Feed</title>
            <style>
                body { font-family: Arial, sans-serif; }
                h2 { color: #333; }
                p { color: #666; }
            </style>
        </head>
        <body>
            <h2><xsl:value-of select="/rss/channel/title"/></h2>
            <xsl:for-each select="/rss/channel/item">
                <h3><xsl:value-of select="title"/></h3>
                <p><a href="{link}"><xsl:value-of select="link"/></a></p>
                <p><xsl:value-of select="pubDate"/></p>
                <p><xsl:value-of select="description"/></p>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
