.class public Lentagged/audioformats/mp3/util/Id3v1TagCreator;
.super Ljava/lang/Object;


# static fields
.field private static translateTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x82

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->translateTable:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->translateTable:Ljava/util/Hashtable;

    sget-object v2, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Byte;

    int-to-byte v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x0

    new-array v0, p3, [B

    invoke-direct {p0, p2, p3}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move v2, v4

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-byte v3, v1, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v1

    :goto_1
    array-length v3, v1

    sub-int v3, p3, v3

    if-ge v2, v3, :cond_1

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0, v4, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private translateGenre(Ljava/lang/String;)B
    .locals 2

    sget-object v0, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->translateTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0
.end method

.method private truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v3, 0x1e

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getTrack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->translateGenre(Ljava/lang/String;)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :catch_0
    move-exception v1

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    goto :goto_1
.end method
