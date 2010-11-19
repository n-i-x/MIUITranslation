.class public Lentagged/audioformats/mp3/Id3v2Tag;
.super Lentagged/audioformats/generic/AbstractTag;


# static fields
.field public static DEFAULT_ENCODING:Ljava/lang/String;

.field public static ID3V22:B

.field public static ID3V23:B

.field public static ID3V24:B


# instance fields
.field private hasV1:Z

.field private representedVersion:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-16"

    sput-object v0, Lentagged/audioformats/mp3/Id3v2Tag;->DEFAULT_ENCODING:Ljava/lang/String;

    const/4 v0, 0x0

    sput-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    const/4 v0, 0x1

    sput-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    const/4 v0, 0x2

    sput-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/Id3v2Tag;->hasV1:Z

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    iput-byte v0, p0, Lentagged/audioformats/mp3/Id3v2Tag;->representedVersion:B

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/Id3v2Tag;->hasV1:Z

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    iput-byte v0, p0, Lentagged/audioformats/mp3/Id3v2Tag;->representedVersion:B

    iput-byte p1, p0, Lentagged/audioformats/mp3/Id3v2Tag;->representedVersion:B

    return-void
.end method


# virtual methods
.method protected createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TALB"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TPE1"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 1

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    invoke-direct {v0, p1}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TCON"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TIT2"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TRCK"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TDRC"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getAlbumId()Ljava/lang/String;
    .locals 1

    const-string v0, "TALB"

    return-object v0
.end method

.method protected getArtistId()Ljava/lang/String;
    .locals 1

    const-string v0, "TPE1"

    return-object v0
.end method

.method public getComment()Ljava/util/List;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lentagged/audioformats/generic/AbstractTag;->getComment()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move-object v3, v6

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    if-eqz v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getLangage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-object v0

    :cond_3
    move-object v1, v3

    goto :goto_1
.end method

.method protected getCommentId()Ljava/lang/String;
    .locals 1

    const-string v0, "COMM"

    return-object v0
.end method

.method protected getGenreId()Ljava/lang/String;
    .locals 1

    const-string v0, "TCON"

    return-object v0
.end method

.method public getRepresentedVersion()B
    .locals 1

    iget-byte v0, p0, Lentagged/audioformats/mp3/Id3v2Tag;->representedVersion:B

    return v0
.end method

.method protected getTitleId()Ljava/lang/String;
    .locals 1

    const-string v0, "TIT2"

    return-object v0
.end method

.method protected getTrackId()Ljava/lang/String;
    .locals 1

    const-string v0, "TRCK"

    return-object v0
.end method

.method protected getYearId()Ljava/lang/String;
    .locals 1

    const-string v0, "TDRC"

    return-object v0
.end method

.method protected hasId3v1(Z)V
    .locals 0

    iput-boolean p1, p0, Lentagged/audioformats/mp3/Id3v2Tag;->hasV1:Z

    return-void
.end method

.method public hasId3v1()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/mp3/Id3v2Tag;->hasV1:Z

    return v0
.end method

.method protected isAllowedEncoding(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTF-16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    iget-byte v1, p0, Lentagged/audioformats/mp3/Id3v2Tag;->representedVersion:B

    sget-byte v2, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ne v1, v2, :cond_2

    const-string v0, "UTF-16BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v4

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method protected setRepresentedVersion(B)V
    .locals 0

    iput-byte p1, p0, Lentagged/audioformats/mp3/Id3v2Tag;->representedVersion:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Id3v2 "

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
