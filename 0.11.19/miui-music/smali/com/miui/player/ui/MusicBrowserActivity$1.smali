.class Lcom/miui/player/ui/MusicBrowserActivity$1;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$1;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity$1;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-virtual {v1, p0}, Lcom/miui/player/ui/MusicBrowserActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :goto_0
    invoke-static {p2}, Lcom/miui/player/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    .line 76
    .local v0, serv:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x2

    :try_start_1
    invoke-interface {v0, v1}, Lcom/miui/player/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 79
    :catch_0
    move-exception v1

    goto :goto_1

    .line 73
    .end local v0           #serv:Lcom/miui/player/IMediaPlaybackService;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 85
    return-void
.end method
