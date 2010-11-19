.class public Lentagged/audioformats/ape/util/ApeTagCreator;
.super Lentagged/audioformats/generic/AbstractTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTagCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, -0x100

    const/4 v5, 0x4

    const-string v0, "APETAGEX"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    sub-int v0, p4, v0

    new-array v1, v5, [B

    const/4 v2, 0x3

    and-int v3, v0, v6

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/high16 v2, 0xff

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    const v2, 0xff00

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v5, [B

    const/4 v3, 0x3

    and-int v4, v1, v6

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/high16 v3, 0xff

    and-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    const v3, 0xff00

    and-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const-string v2, "APETAGEX"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v2, v5, [B

    fill-array-data v2, :array_3

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v2, v5, [B

    const/4 v3, 0x3

    and-int v4, v0, v6

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/high16 v3, 0xff

    and-int/2addr v3, v0

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    const v3, 0xff00

    and-int/2addr v3, v0

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v7

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v0, v5, [B

    const/4 v2, 0x3

    and-int v3, v1, v6

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/high16 v2, 0xff

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v9

    const v2, 0xff00

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v0, v5, [B

    fill-array-data v0, :array_4

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void

    nop

    :array_0
    .array-data 0x1
        0xd0t
        0x7t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0xa0t
    .end array-data

    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 0x1
        0xd0t
        0x7t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x80t
    .end array-data

    :array_5
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;
    .locals 1

    instance-of v0, p1, Lentagged/audioformats/ape/ApeTag;

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/ape/ApeTag;

    invoke-direct {v0}, Lentagged/audioformats/ape/ApeTag;-><init>()V

    invoke-virtual {v0, p1}, Lentagged/audioformats/ape/ApeTag;->merge(Lentagged/audioformats/Tag;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected getFixedTagLength(Lentagged/audioformats/Tag;)I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method
