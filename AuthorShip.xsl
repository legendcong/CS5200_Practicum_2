<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <xsl:for-each select="MedlineCitation/Article/AuthorList/Author">
                    <AuthorShip>
                        <LastName>
                            <xsl:value-of select="LastName" />
                        </LastName>
                        <ForeName>
                            <xsl:value-of select="ForeName" />
                        </ForeName>
                        <title>
                            <xsl:value-of select="../../ArticleTitle" />
                        </title>
                    </AuthorShip>
                </xsl:for-each>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>