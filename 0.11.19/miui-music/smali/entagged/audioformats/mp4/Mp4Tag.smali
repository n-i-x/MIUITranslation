.class public Lentagged/audioformats/mp4/Mp4Tag;
.super Lentagged/audioformats/generic/AbstractTag;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    const-string v1, "alb"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    const-string v1, "ART"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    const-string v1, "cmt"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    const-string v1, "gen"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    const-string v1, "nam"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;

    const-string v1, "trkn"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2

    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    const-string v1, "day"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getAlbumId()Ljava/lang/String;
    .locals 1

    const-string v0, "alb"

    return-object v0
.end method

.method protected getArtistId()Ljava/lang/String;
    .locals 1

    const-string v0, "ART"

    return-object v0
.end method

.method protected getCommentId()Ljava/lang/String;
    .locals 1

    const-string v0, "cmt"

    return-object v0
.end method

.method protected getGenreId()Ljava/lang/String;
    .locals 1

    const-string v0, "gen"

    return-object v0
.end method

.method protected getTitleId()Ljava/lang/String;
    .locals 1

    const-string v0, "nam"

    return-object v0
.end method

.method protected getTrackId()Ljava/lang/String;
    .locals 1

    const-string v0, "trkn"

    return-object v0
.end method

.method protected getYearId()Ljava/lang/String;
    .locals 1

    const-string v0, "day"

    return-object v0
.end method

.method protected isAllowedEncoding(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Mpeg4 "

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
