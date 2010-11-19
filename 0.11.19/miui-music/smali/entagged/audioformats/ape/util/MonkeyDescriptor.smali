.class public Lentagged/audioformats/ape/util/MonkeyDescriptor;
.super Ljava/lang/Object;


# instance fields
.field b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    return-void
.end method


# virtual methods
.method public getApeFrameDataHighLength()J
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/16 v1, 0x14

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getApeFrameDataLength()J
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/16 v1, 0x10

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDescriptorLength()I
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method

.method public getHeaderLength()I
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/4 v1, 0x4

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method

.method public getRiffWavLength()I
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/16 v1, 0xc

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method

.method public getRiffWavOffset()I
    .locals 2

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyDescriptor;->getDescriptorLength()I

    move-result v0

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyDescriptor;->getHeaderLength()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyDescriptor;->getSeekTableLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSeekTableLength()I
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/16 v1, 0x8

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method

.method public getTerminatingDataLength()I
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/16 v1, 0x18

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method
