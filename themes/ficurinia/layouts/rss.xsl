<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" media-type="text/html" encoding="UTF-8"/>

  <!-- Template to match the root element of the XML (rss) -->
  <xsl:template match="/rss">
    <html>
      <head>
        <title><xsl:value-of select="channel/title"/></title>
        <!-- You can include CSS here or link an external file -->
        <style>
          body { font-family: sans-serif; line-height: 1.6; max-width: 800px; margin: 0 auto; padding: 20px; }
          h1 { color: #333; }
          .item { border-bottom: 1px solid #ccc; padding: 10px 0; }
          .item h2 { margin: 0 0 5px 0; font-size: 1.2em; }
          .item a { text-decoration: none; color: #0066cc; }
          .item p { margin: 0; color: #666; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="channel/title"/></h1>
        <p><xsl:value-of select="channel/description"/></p>

        <!-- Loop through each item in the channel -->
        <xsl:for-each select="channel/item">
          <div class="item">
            <h2>
              <!-- Output the title as a link to the item's URL -->
              <a href="{link}">
                <xsl:value-of select="title"/>
              </a>
            </h2>
            <p>
              <xsl:value-of select="description"/>
            </p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
