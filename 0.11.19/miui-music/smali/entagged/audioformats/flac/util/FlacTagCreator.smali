.class public Lentagged/audioformats/flac/util/FlacTagCreator;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_PADDING:I = 0xfa0

.field private static final creator:Lentagged/audioformats/ogg/util/OggTagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/OggTagCreator;-><init>()V

    sput-object v0, Lentagged/audioformats/flac/util/FlacTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    sget-object v0, Lentagged/audioformats/flac/util/FlacTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/util/OggTagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int v2, v1, p2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-lez p2, :cond_0

    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v6

    new-array v3, v9, [B

    const/high16 v4, 0xff

    and-int/2addr v4, v1

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    const v4, 0xff00

    and-int/2addr v4, v1

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, v8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    if-lt p2, v6, :cond_1

    sub-int v0, p2, v6

    const/16 v1, -0x7f

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-array v1, v9, [B

    const/high16 v3, 0xff

    and-int/2addr v3, v0

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    const v3, 0xff00

    and-int/2addr v3, v0

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v3, -0x7c

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v2
.end method

.method public getTagLength(Lentagged/audioformats/Tag;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Lentagged/audioformats/flac/util/FlacTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/util/OggTagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
