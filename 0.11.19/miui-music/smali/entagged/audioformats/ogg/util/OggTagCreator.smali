.class public Lentagged/audioformats/ogg/util/OggTagCreator;
.super Lentagged/audioformats/generic/AbstractTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTagCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x100

    check-cast p1, Lentagged/audioformats/ogg/OggTag;

    invoke-virtual {p1}, Lentagged/audioformats/ogg/OggTag;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lentagged/audioformats/generic/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x4

    new-array v2, v2, [B

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    const v3, 0xff00

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    const/high16 v3, 0xff

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    and-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v2, v8

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lentagged/audioformats/generic/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    and-int v2, v0, v4

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    const/high16 v2, 0xff

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;
    .locals 1

    instance-of v0, p1, Lentagged/audioformats/ogg/OggTag;

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v0}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/OggTag;->merge(Lentagged/audioformats/Tag;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected getFixedTagLength(Lentagged/audioformats/Tag;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    check-cast p1, Lentagged/audioformats/ogg/OggTag;

    invoke-virtual {p1}, Lentagged/audioformats/ogg/OggTag;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lentagged/audioformats/generic/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
