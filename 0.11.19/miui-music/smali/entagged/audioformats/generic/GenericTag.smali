.class public Lentagged/audioformats/generic/GenericTag;
.super Lentagged/audioformats/generic/AbstractTag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lentagged/audioformats/generic/GenericTag$GenericTagTextField;
    }
.end annotation


# static fields
.field public static final ALBUM:I = 0x1

.field public static final ARTIST:I = 0x0

.field public static final COMMENT:I = 0x6

.field public static final GENRE:I = 0x5

.field public static final TITLE:I = 0x2

.field public static final TRACK:I = 0x3

.field public static final YEAR:I = 0x4

.field private static final keys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ARTIST"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ALBUM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TRACK"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GENRE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "COMMENT"

    aput-object v2, v0, v1

    sput-object v0, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 3

    new-instance v0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;

    sget-object v1, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1, p1}, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;-><init>(Lentagged/audioformats/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 3

    new-instance v0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;

    sget-object v1, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1, p1}, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;-><init>(Lentagged/audioformats/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 3

    new-instance v0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;

    sget-object v1, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1, p1}, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;-><init>(Lentagged/audioformats/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 3

    new-instance v0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;

    sget-object v1, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1, p1}, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;-><init>(Lentagged/audioformats/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 3

    new-instance v0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;

    sget-object v1, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1, p1}, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;-><init>(Lentagged/audioformats/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 3

    new-instance v0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;

    sget-object v1, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1, p1}, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;-><init>(Lentagged/audioformats/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 3

    new-instance v0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;

    sget-object v1, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1, p1}, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;-><init>(Lentagged/audioformats/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getAlbumId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getArtistId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getCommentId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getGenreId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getTitleId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getTrackId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getYearId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lentagged/audioformats/generic/GenericTag;->keys:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected isAllowedEncoding(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
