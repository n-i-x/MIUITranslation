.class public Lentagged/audioformats/ogg/util/OggPageHeader;
.super Ljava/lang/Object;


# instance fields
.field private absoluteGranulePosition:D

.field private checksum:[B

.field private headerTypeFlag:B

.field private isValid:Z

.field private pageLength:I

.field private pageSequenceNumber:I

.field private segmentTable:[B

.field private streamSerialNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->isValid:Z

    iput v9, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    aget-byte v0, p1, v11

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->headerTypeFlag:B

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    move v0, v9

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-wide v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000

    mul-int/lit8 v7, v0, 0x8

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v0

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x10

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x11

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->streamSerialNumber:I

    const/16 v0, 0x12

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v0

    const/16 v1, 0x13

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x14

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x15

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageSequenceNumber:I

    new-array v0, v11, [B

    const/16 v1, 0x16

    aget-byte v1, p1, v1

    aput-byte v1, v0, v9

    const/16 v1, 0x17

    aget-byte v1, p1, v1

    aput-byte v1, v0, v10

    const/4 v1, 0x2

    const/16 v2, 0x18

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x19

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->checksum:[B

    array-length v0, p1

    const/16 v1, 0x1b

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->segmentTable:[B

    move v0, v9

    :goto_1
    iget-object v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->segmentTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->segmentTable:[B

    add-int/lit8 v2, v0, 0x1b

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    iget v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    add-int/lit8 v2, v0, 0x1b

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v10, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->isValid:Z

    :cond_2
    return-void
.end method

.method private u(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getAbsoluteGranulePosition()D
    .locals 2

    iget-wide v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    return-wide v0
.end method

.method public getCheckSum()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->checksum:[B

    return-object v0
.end method

.method public getHeaderType()B
    .locals 1

    iget-byte v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->headerTypeFlag:B

    return v0
.end method

.method public getPageLength()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    return v0
.end method

.method public getPageSequence()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageSequenceNumber:I

    return v0
.end method

.method public getSegmentTable()[B
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->segmentTable:[B

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->streamSerialNumber:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Ogg Page Header:\n"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Is valid?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " | page length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Header type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->headerTypeFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
