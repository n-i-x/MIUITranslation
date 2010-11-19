.class public Lentagged/audioformats/generic/ModificationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/generic/AudioFileModificationListener;


# instance fields
.field private listeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/ModifyVetoException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/AudioFileModificationListener;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    :try_end_0
    .catch Lentagged/audioformats/exceptions/ModifyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0, p1, v1}, Lentagged/audioformats/generic/ModificationHandler;->vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V

    throw v1

    :cond_0
    return-void
.end method

.method public fileOperationFinished(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {p0, p1}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/ModifyVetoException;
        }
    .end annotation

    iget-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/AudioFileModificationListener;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V
    :try_end_0
    .catch Lentagged/audioformats/exceptions/ModifyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0, p1, v1}, Lentagged/audioformats/generic/ModificationHandler;->vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V

    throw v1

    :cond_0
    return-void
.end method

.method public removeAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {p0, p1, p2, p3}, Lentagged/audioformats/generic/AudioFileModificationListener;->vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V

    goto :goto_0

    :cond_0
    return-void
.end method
