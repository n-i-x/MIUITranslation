.class Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 1908
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1910
    packed-switch p2, :pswitch_data_0

    .line 1925
    const-string v0, "MultiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0, v3}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2102(Lcom/miui/player/MediaPlaybackService$MultiPlayer;Z)Z

    .line 1927
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2200(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1928
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2202(Lcom/miui/player/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1929
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->this$0:Lcom/miui/player/MediaPlaybackService;

    const v1, 0x7f070045

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1931
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, v3}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    move v0, v3

    .line 1934
    :goto_0
    return v0

    .line 1912
    :pswitch_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0, v3}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2102(Lcom/miui/player/MediaPlaybackService$MultiPlayer;Z)Z

    .line 1913
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2200(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1919
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2202(Lcom/miui/player/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1920
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2200(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1922
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2000(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->access$2000(Lcom/miui/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    .line 1923
    goto :goto_0

    .line 1910
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
