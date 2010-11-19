.class public Lentagged/audioformats/asf/util/TagConverter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assignCommonTagValues(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;)V
    .locals 7

    const/4 v3, 0x0

    const-string v6, "WM/TrackNumber"

    const-string v5, "WM/Genre"

    const-string v2, "WM/AlbumTitle"

    const-string v4, "WM/GenreID"

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    const-string v1, "WM/AlbumTitle"

    invoke-direct {v0, v2, v3}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    :goto_0
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    const-string v1, "WM/TrackNumber"

    invoke-direct {v0, v6, v3}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    :goto_1
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    const-string v1, "WM/Year"

    invoke-direct {v0, v1, v3}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    :goto_2
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    const-string v1, "WM/Genre"

    invoke-direct {v0, v5, v3}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    sget-object v0, Lentagged/audioformats/Tag;->DEFAULT_GENRES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    new-instance v1, Lentagged/audioformats/asf/data/ContentDescriptor;

    const-string v2, "WM/GenreID"

    invoke-direct {v1, v4, v3}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    :goto_3
    return-void

    :cond_0
    const-string v0, "WM/AlbumTitle"

    invoke-virtual {p1, v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto/16 :goto_0

    :cond_1
    const-string v0, "WM/TrackNumber"

    invoke-virtual {p1, v6}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto/16 :goto_1

    :cond_2
    const-string v0, "WM/Year"

    invoke-virtual {p1, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto :goto_2

    :cond_3
    const-string v0, "WM/GenreID"

    invoke-virtual {p1, v4}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto :goto_3

    :cond_4
    const-string v0, "WM/Genre"

    invoke-virtual {p1, v5}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    const-string v0, "WM/GenreID"

    invoke-virtual {p1, v4}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto :goto_3
.end method

.method public static assignOptionalTagValues(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;)V
    .locals 4

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagField;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagField;->isCommon()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0}, Lentagged/audioformats/generic/TagField;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lentagged/audioformats/generic/TagField;->getRawContent()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setBinaryValue([B)V

    :goto_1
    invoke-virtual {p1, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static createContentDescription(Lentagged/audioformats/Tag;)Lentagged/audioformats/asf/data/ContentDescription;
    .locals 2

    new-instance v0, Lentagged/audioformats/asf/data/ContentDescription;

    invoke-direct {v0}, Lentagged/audioformats/asf/data/ContentDescription;-><init>()V

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/ContentDescription;->setAuthor(Ljava/lang/String;)V

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/ContentDescription;->setTitle(Ljava/lang/String;)V

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/ContentDescription;->setComment(Ljava/lang/String;)V

    invoke-static {p0}, Lentagged/audioformats/asf/util/AsfCopyrightField;->getCopyright(Lentagged/audioformats/Tag;)Lentagged/audioformats/generic/TagTextField;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/ContentDescription;->setCopyRight(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static createExtendedContentDescription(Lentagged/audioformats/Tag;)Lentagged/audioformats/asf/data/ExtendedContentDescription;
    .locals 1

    new-instance v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;

    invoke-direct {v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;-><init>()V

    invoke-static {p0, v0}, Lentagged/audioformats/asf/util/TagConverter;->assignCommonTagValues(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;)V

    return-object v0
.end method

.method public static createTagOf(Lentagged/audioformats/asf/data/AsfHeader;)Lentagged/audioformats/Tag;
    .locals 3

    new-instance v0, Lentagged/audioformats/generic/GenericTag;

    invoke-direct {v0}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v1

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/generic/GenericTag;->setArtist(Ljava/lang/String;)V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v1

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/generic/GenericTag;->setComment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v1

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/generic/GenericTag;->setTitle(Ljava/lang/String;)V

    new-instance v1, Lentagged/audioformats/asf/util/AsfCopyrightField;

    invoke-direct {v1}, Lentagged/audioformats/asf/util/AsfCopyrightField;-><init>()V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v2

    invoke-virtual {v2}, Lentagged/audioformats/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/util/AsfCopyrightField;->setContent(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lentagged/audioformats/generic/GenericTag;->set(Lentagged/audioformats/generic/TagField;)V

    :cond_0
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v1

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getTrack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/generic/GenericTag;->setTrack(Ljava/lang/String;)V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v1

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/generic/GenericTag;->setYear(Ljava/lang/String;)V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v1

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/generic/GenericTag;->setGenre(Ljava/lang/String;)V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v1

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/generic/GenericTag;->setAlbum(Ljava/lang/String;)V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v1

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptors()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->isCommon()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;

    invoke-direct {v2, p0}, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;-><init>(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    invoke-virtual {v0, v2}, Lentagged/audioformats/generic/GenericTag;->add(Lentagged/audioformats/generic/TagField;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method
