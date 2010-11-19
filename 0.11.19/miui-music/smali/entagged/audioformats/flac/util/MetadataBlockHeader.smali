.class public Lentagged/audioformats/flac/util/MetadataBlockHeader;
.super Ljava/lang/Object;


# static fields
.field public static final APPLICATION:I = 0x2

.field public static final CUESHEET:I = 0x5

.field public static final PADDING:I = 0x1

.field public static final SEEKTABLE:I = 0x3

.field public static final STREAMINFO:I = 0x0

.field public static final UNKNOWN:I = 0x6

.field public static final VORBIS_COMMENT:I = 0x4


# instance fields
.field private blockType:I

.field private bytes:[B

.field private dataLength:I

.field private isLastBlock:Z


# direct methods
.method public constructor <init>([B)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0x80

    ushr-int/lit8 v0, v0, 0x7

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock:Z

    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x7f

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x6

    iput v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    :goto_1
    aget-byte v0, p1, v1

    invoke-direct {p0, v0}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->u(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    aget-byte v1, p1, v4

    invoke-direct {p0, v1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aget-byte v1, p1, v5

    invoke-direct {p0, v1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->dataLength:I

    new-array v0, v3, [B

    iput-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    :pswitch_1
    iput v1, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    :pswitch_2
    iput v4, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    :pswitch_3
    iput v5, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    :pswitch_4
    iput v3, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private u(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getBlockType()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    return v0
.end method

.method public getBlockTypeString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN-RESERVED"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STREAMINFO"

    goto :goto_0

    :pswitch_1
    const-string v0, "PADDING"

    goto :goto_0

    :pswitch_2
    const-string v0, "APPLICATION"

    goto :goto_0

    :pswitch_3
    const-string v0, "SEEKTABLE"

    goto :goto_0

    :pswitch_4
    const-string v0, "VORBIS_COMMENT"

    goto :goto_0

    :pswitch_5
    const-string v0, "CUESHEET"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getBytes()[B
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    iget-object v1, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->dataLength:I

    return v0
.end method

.method public isLastBlock()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock:Z

    return v0
.end method
