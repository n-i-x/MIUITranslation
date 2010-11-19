.class Lcom/miui/player/MediaPlaybackService$5;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/MediaPlaybackService;->registerExternalStorageListener()V
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
    .line 769
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 772
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v1, v2}, Lcom/miui/player/MediaPlaybackService;->access$1400(Lcom/miui/player/MediaPlaybackService;Z)V

    .line 775
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v1, v2}, Lcom/miui/player/MediaPlaybackService;->access$902(Lcom/miui/player/MediaPlaybackService;Z)Z

    .line 779
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$1608(Lcom/miui/player/MediaPlaybackService;)I

    .line 782
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/player/helper/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/player/MediaPlaybackService;->access$1702(Lcom/miui/player/MediaPlaybackService;I)I

    .line 783
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$1800(Lcom/miui/player/MediaPlaybackService;)V

    .line 784
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v2, "com.miui.player.queuechanged"

    invoke-static {v1, v2}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    .line 785
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v2, "com.miui.player.metachanged"

    invoke-static {v1, v2}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
