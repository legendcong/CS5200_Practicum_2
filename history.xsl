<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <History>
                    <pubStatus>
                        <xsl:value-of select="PubmedData/PublicationStatus" />
                    </pubStatus>
                    <year>
                        <xsl:value-of select="PubmedData/History/PubMedPubDate/Year" />
                    </year>
                    <month>
                        <xsl:value-of select="PubmedData/History/PubMedPubDate/Month" />
                    </month>
                    <day>
                        <xsl:value-of select="PubmedData/History/PubMedPubDate/Day" />
                    </day>
                    <title>
                        <xsl:value-of select="MedlineCitation/Article/ArticleTitle" />
                    </title>
                </History>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>
