.class public Lentagged/audioformats/mp3/util/XingMPEGFrame;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/mp3/util/VbrInfoFrame;


# instance fields
.field private fileSize:I

.field private frameCount:I

.field private isValidXingMPEGFrame:Z

.field private quality:I

.field private vbr:Z

.field private vbrFlags:[Z


# direct methods
.method public constructor <init>([B[B)V
    .locals 9

    const/4 v8, 0x3

    const v7, 0xffffff

    const v6, 0xffff

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->fileSize:I

    iput v4, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->frameCount:I

    iput-boolean v5, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->isValidXingMPEGFrame:Z

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    iput-boolean v4, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbr:Z

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v4, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "Xing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const-string v1, "Xing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbr:Z

    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/XingMPEGFrame;->u([B)[I

    move-result-object v0

    invoke-direct {p0, p2}, Lentagged/audioformats/mp3/util/XingMPEGFrame;->u([B)[I

    move-result-object v1

    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/mp3/util/XingMPEGFrame;->updateVBRFlags(I)V

    iget-object v2, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    aget v2, v0, v2

    mul-int/2addr v2, v7

    const/16 v3, 0x9

    aget v3, v0, v3

    mul-int/2addr v3, v6

    add-int/2addr v2, v3

    const/16 v3, 0xa

    aget v3, v0, v3

    mul-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    const/16 v3, 0xb

    aget v3, v0, v3

    add-int/2addr v2, v3

    iput v2, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->frameCount:I

    :cond_1
    iget-object v2, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_2

    const/16 v2, 0xc

    aget v2, v0, v2

    mul-int/2addr v2, v7

    const/16 v3, 0xd

    aget v3, v0, v3

    mul-int/2addr v3, v6

    add-int/2addr v2, v3

    const/16 v3, 0xe

    aget v3, v0, v3

    mul-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    const/16 v3, 0xf

    aget v0, v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->fileSize:I

    :cond_2
    iget-object v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_3

    aget v0, v1, v4

    mul-int/2addr v0, v7

    aget v2, v1, v5

    mul-int/2addr v2, v6

    add-int/2addr v0, v2

    const/4 v2, 0x2

    aget v2, v1, v2

    mul-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    aget v1, v1, v8

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->quality:I

    :cond_3
    :goto_0
    return-void

    :cond_4
    iput-boolean v4, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->isValidXingMPEGFrame:Z

    goto :goto_0
.end method

.method private u([B)[I
    .locals 3

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateVBRFlags(I)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    and-int/lit8 v1, p1, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    aput-boolean v1, v0, v5

    iget-object v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    and-int/lit8 v1, p1, 0x2

    if-ne v1, v3, :cond_1

    move v1, v4

    :goto_1
    aput-boolean v1, v0, v4

    iget-object v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    move v1, v4

    :goto_2
    aput-boolean v1, v0, v3

    iget-object v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v1, 0x3

    and-int/lit8 v2, p1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    move v2, v4

    :goto_3
    aput-boolean v2, v0, v1

    return-void

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    move v2, v5

    goto :goto_3
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->fileSize:I

    return v0
.end method

.method public getFrameCount()I
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->frameCount:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->isValidXingMPEGFrame:Z

    return v0
.end method

.method public isVbr()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbr:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v6, "Frame count:"

    const-string v5, "\n"

    const-string v4, "\tQuality:"

    const-string v3, "\tFile Size:"

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->isValidXingMPEGFrame:Z

    if-eqz v0, :cond_0

    const-string v0, "\n----XingMPEGFrame--------------------\n"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Frame count:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tFile Size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tQuality:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Frame count:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->frameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tFile Size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->fileSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tQuality:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "--------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\n!!!No Valid Xing MPEG Frame!!!\n"

    goto :goto_0
.end method
