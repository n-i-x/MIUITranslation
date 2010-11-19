.class Lcom/miui/player/MediaPlaybackService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v1, "com.miui.player.refreshui"

    invoke-static {v0, v1}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    .line 1896
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$1100(Lcom/miui/player/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1897
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2000(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1898
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2000(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1899
    return-void
.end method
