.class public Lentagged/audioformats/mp3/util/VBRIMPEGFrame;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/mp3/util/VbrInfoFrame;


# instance fields
.field private fileSize:I

.field private frameCount:I

.field private isValidVBRIMPEGFrame:Z


# direct methods
.method public constructor <init>([B)V
    .locals 6

    const/high16 v5, 0xff

    const v4, 0xff00

    const/high16 v3, -0x100

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->fileSize:I

    iput v2, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->frameCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->isValidVBRIMPEGFrame:Z

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "VBRI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    aget-byte v1, p1, v0

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v3

    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->fileSize:I

    add-int/lit8 v0, v0, 0x4

    aget-byte v1, p1, v0

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v3

    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->frameCount:I

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->isValidVBRIMPEGFrame:Z

    goto :goto_0
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->fileSize:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->frameCount:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->isValidVBRIMPEGFrame:Z

    return v0
.end method

.method public isVbr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->isValidVBRIMPEGFrame:Z

    if-eqz v0, :cond_0

    const-string v0, "\n----VBRIMPEGFrame--------------------\n"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Frame count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->frameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tFile Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->fileSize:I

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

    const-string v1, "--------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\n!!!No Valid VBRI MPEG Frame!!!\n"

    goto :goto_0
.end method
