<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <xsl:for-each select="PubmedData/History/PubMedPubDate">
                    <History>
                        <pubStatus>
                            <xsl:value-of select="@PubStatus" />
                        </pubStatus>
                        <year>
                            <xsl:value-of select="Year" />
                        </year>
                        <month>
                            <xsl:value-of select="Month" />
                        </month>
                        <day>
                            <xsl:value-of select="Day" />
                        </day>
                        <title>
                            <xsl:value-of select="../../../MedlineCitation/Article/ArticleTitle" />
                        </title>
                    </History>
                </xsl:for-each>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>