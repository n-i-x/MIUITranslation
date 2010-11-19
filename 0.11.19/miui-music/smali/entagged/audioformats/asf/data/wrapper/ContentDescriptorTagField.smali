.class public Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/generic/TagField;


# instance fields
.field private toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;


# direct methods
.method public constructor <init>(Lentagged/audioformats/asf/data/ContentDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->createCopy()Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    return-void
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getRawData()[B

    move-result-object v0

    return-object v0
.end method

.method public isBinary(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No conversion supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    iget-object v1, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getRawData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->setBinaryValue([B)V

    return-void
.end method

.method public isBinary()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommon()Z
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->isCommon()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
