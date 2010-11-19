.class public interface abstract Lentagged/audioformats/generic/TagField;
.super Ljava/lang/Object;


# virtual methods
.method public abstract copyContent(Lentagged/audioformats/generic/TagField;)V
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRawContent()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract isBinary(Z)V
.end method

.method public abstract isBinary()Z
.end method

.method public abstract isCommon()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
