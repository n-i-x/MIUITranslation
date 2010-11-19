.class Lcom/miui/player/MediaPlaybackService$4;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$4;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 737
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$4;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$4;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$100(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$4;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$1300(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$4;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$500(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$4;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0, v1}, Lcom/miui/player/MediaPlaybackService;->access$1400(Lcom/miui/player/MediaPlaybackService;Z)V

    .line 745
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$4;->this$0:Lcom/miui/player/MediaPlaybackService;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$4;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$1500(Lcom/miui/player/MediaPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method
