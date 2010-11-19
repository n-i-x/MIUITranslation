.class public interface abstract Lentagged/audioformats/generic/AudioFileModificationListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/ModifyVetoException;
        }
    .end annotation
.end method

.method public abstract fileOperationFinished(Ljava/io/File;)V
.end method

.method public abstract fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/ModifyVetoException;
        }
    .end annotation
.end method

.method public abstract vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V
.end method
