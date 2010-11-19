.class public abstract Lentagged/audioformats/generic/AbstractTagCreator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeTagLength(Lentagged/audioformats/Tag;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTagCreator;->getFixedTagLength(Lentagged/audioformats/Tag;)I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length v2, p0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lentagged/audioformats/generic/AbstractTagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTagCreator;->getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;

    move-result-object v1

    invoke-virtual {p0, v1}, Lentagged/audioformats/generic/AbstractTagCreator;->createFields(Lentagged/audioformats/Tag;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lentagged/audioformats/generic/AbstractTagCreator;->computeTagLength(Lentagged/audioformats/Tag;Ljava/util/List;)I

    move-result v4

    add-int v0, v4, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lentagged/audioformats/generic/AbstractTagCreator;->create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v2
.end method

.method protected abstract create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected createFields(Lentagged/audioformats/Tag;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/TagField;

    invoke-interface {p0}, Lentagged/audioformats/generic/TagField;->getRawContent()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected abstract getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;
.end method

.method protected abstract getFixedTagLength(Lentagged/audioformats/Tag;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public getTagLength(Lentagged/audioformats/Tag;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTagCreator;->getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTagCreator;->createFields(Lentagged/audioformats/Tag;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lentagged/audioformats/generic/AbstractTagCreator;->computeTagLength(Lentagged/audioformats/Tag;Ljava/util/List;)I

    move-result v0

    return v0
.end method
