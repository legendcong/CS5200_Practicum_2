<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <Article>
                    <pubMode>
                        <xsl:value-of select="MedlineCitation/Article/@PubModel" />
                    </pubMode>
                    <title>
                        <xsl:value-of select="MedlineCitation/Article/ArticleTitle" />
                    </title>
                    <abstract>
                        <xsl:value-of select="MedlineCitation/Article/Abstract" />
                    </abstract>
                    <ISSN>
                        <xsl:value-of select="MedlineCitation/Article/Journal/ISSN" />
                    </ISSN>
                    <volume>
                        <xsl:value-of select="MedlineCitation/Article/Journal/JournalIssue/Volume" />
                    </volume>
                    <issue>
                        <xsl:value-of select="MedlineCitation/Article/Journal/JournalIssue/Issue" />
                    </issue>
                </Article>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>