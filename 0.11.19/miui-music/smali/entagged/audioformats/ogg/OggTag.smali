.class public Lentagged/audioformats/ogg/OggTag;
.super Lentagged/audioformats/generic/AbstractTag;


# static fields
.field public static final DEFAULT_VENDOR:Ljava/lang/String; = "Entagged - The Musical Box"


# instance fields
.field private vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lentagged/audioformats/ogg/OggTag;->vendor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagField;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ogg/util/OggTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagField;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ogg/util/OggTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagField;

    const-string v1, "DESCRIPTION"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ogg/util/OggTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagField;

    const-string v1, "GENRE"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ogg/util/OggTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagField;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ogg/util/OggTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagField;

    const-string v1, "TRACKNUMBER"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ogg/util/OggTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagField;

    const-string v1, "DATE"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ogg/util/OggTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getAlbumId()Ljava/lang/String;
    .locals 1

    const-string v0, "ALBUM"

    return-object v0
.end method

.method protected getArtistId()Ljava/lang/String;
    .locals 1

    const-string v0, "ARTIST"

    return-object v0
.end method

.method protected getCommentId()Ljava/lang/String;
    .locals 1

    const-string v0, "DESCRIPTION"

    return-object v0
.end method

.method protected getGenreId()Ljava/lang/String;
    .locals 1

    const-string v0, "GENRE"

    return-object v0
.end method

.method protected getTitleId()Ljava/lang/String;
    .locals 1

    const-string v0, "TITLE"

    return-object v0
.end method

.method protected getTrackId()Ljava/lang/String;
    .locals 1

    const-string v0, "TRACKNUMBER"

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/ogg/OggTag;->vendor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/OggTag;->vendor:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Entagged - The Musical Box"

    goto :goto_0
.end method

.method protected getYearId()Ljava/lang/String;
    .locals 1

    const-string v0, "DATE"

    return-object v0
.end method

.method protected isAllowedEncoding(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lentagged/audioformats/ogg/OggTag;->vendor:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lentagged/audioformats/ogg/OggTag;->vendor:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "OGG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Lentagged/audioformats/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
