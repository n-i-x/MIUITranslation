.class public Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/flac/util/MetadataBlockData;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;->data:[B

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;->data:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;->data:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;->data:[B

    array-length v0, v0

    return v0
.end method
