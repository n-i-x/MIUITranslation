.class public Lentagged/audioformats/ogg/util/VorbisTagCreator;
.super Ljava/lang/Object;


# instance fields
.field private creator:Lentagged/audioformats/ogg/util/OggTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/OggTagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    return-void
.end method


# virtual methods
.method public convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/util/OggTagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :array_0
    .array-data 0x1
        0x3t
        0x76t
        0x6ft
        0x72t
        0x62t
        0x69t
        0x73t
    .end array-data
.end method
