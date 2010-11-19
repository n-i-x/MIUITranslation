.class Lcom/miui/player/MediaPlaybackService$2;
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
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 254
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/miui/player/MediaPlaybackService$2;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0xa

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/MediaPlaybackService$2;->mCurrentVolume:F

    .line 262
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$400(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/miui/player/MediaPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 263
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 264
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$500(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 266
    :cond_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService$2;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/player/MediaPlaybackService$2;->mCurrentVolume:F

    .line 267
    iget v0, p0, Lcom/miui/player/MediaPlaybackService$2;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$500(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    :goto_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$400(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/miui/player/MediaPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 270
    :cond_1
    iput v2, p0, Lcom/miui/player/MediaPlaybackService$2;->mCurrentVolume:F

    goto :goto_1

    .line 276
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$600(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$700(Lcom/miui/player/MediaPlaybackService;)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$800(Lcom/miui/player/MediaPlaybackService;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 288
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 289
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->play()V

    goto :goto_0

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$900(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, v3}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v1, "com.miui.player.playbackcomplete"

    invoke-static {v0, v1}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0, v3}, Lcom/miui/player/MediaPlaybackService;->access$602(Lcom/miui/player/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 298
    :pswitch_3
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$1100(Lcom/miui/player/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
