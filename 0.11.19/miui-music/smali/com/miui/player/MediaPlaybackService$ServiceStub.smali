.class Lcom/miui/player/MediaPlaybackService$ServiceStub;
.super Lcom/miui/player/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 1965
    invoke-direct {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;-><init>()V

    .line 1966
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 1967
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 1
    .parameter "list"
    .parameter "action"

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->enqueue([JI)V

    .line 2035
    return-void
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->moveQueueItem(II)V

    .line 2043
    return-void
.end method

.method public next()V
    .locals 1

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    .line 2011
    return-void
.end method

.method public open([JI)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->open([JI)V

    .line 1979
    return-void
.end method

.method public openFile(Ljava/lang/String;Z)V
    .locals 1
    .parameter "path"
    .parameter "oneShot"

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 1975
    return-void
.end method

.method public openFileAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/miui/player/MediaPlaybackService;->openAsync(Ljava/lang/String;)V

    .line 1971
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 1999
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 2003
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->prev()V

    .line 2007
    return-void
.end method

.method public removeTrack(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->removeTrack(J)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .locals 1
    .parameter "first"
    .parameter "last"

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/miui/player/MediaPlaybackService;->setQueuePosition(I)V

    .line 1987
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/miui/player/MediaPlaybackService;->setRepeatMode(I)V

    .line 2083
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/miui/player/MediaPlaybackService;->setShuffleMode(I)V

    .line 2067
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->stop()V

    .line 1995
    return-void
.end method
