<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <Journal>
                    <ISSN>
                        <xsl:value-of select="MedlineCitation/Article/Journal/ISSN" />
                    </ISSN>
                    <title>
                        <xsl:value-of select="MedlineCitation/Article/Journal/Title" />
                    </title>
                    <isoabbreviation>
                        <xsl:value-of select="MedlineCitation/Article/Journal/ISOAbbreviation" />
                    </isoabbreviation>
                </Journal>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>