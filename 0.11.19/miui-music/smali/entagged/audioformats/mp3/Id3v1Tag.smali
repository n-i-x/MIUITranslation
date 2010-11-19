.class public Lentagged/audioformats/mp3/Id3v1Tag;
.super Lentagged/audioformats/generic/GenericTag;


# static fields
.field public static final GENRES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lentagged/audioformats/Tag;->DEFAULT_GENRES:[Ljava/lang/String;

    sput-object v0, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    return-void
.end method


# virtual methods
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

    const-string v1, "Id3v1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Lentagged/audioformats/generic/GenericTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translateGenre(B)Ljava/lang/String;
    .locals 3

    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    sget-object v1, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method
