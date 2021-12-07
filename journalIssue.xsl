<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <Journal>
                    <ISSN>
                        <xsl:value-of select="MedlineCitation/Article/Journal/ISSN" />
                    </ISSN>                    
                    <volume>
                        <xsl:value-of select="MedlineCitation/Article/Journal/JournalIssue/Volume" />
                    </volume>
                    <issue>
                        <xsl:value-of select="MedlineCitation/Article/Journal/JournalIssue/Issue" />
                    </issue>
                    <pubYear>
                        <xsl:value-of select="MedlineCitation/Article/Journal/JournalIssue/PubDate/Year" />
                    </pubYear>
                    <pubMonth>
                        <xsl:value-of select="MedlineCitation/Article/Journal/JournalIssue/PubDate/Month" />
                    </pubMonth>
                    <medlineDate>
                        <xsl:value-of select="MedlineCitation/Article/Journal/JournalIssue/PubDate/MedlineDate" />
                    </medlineDate>                        
                </Journal>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>