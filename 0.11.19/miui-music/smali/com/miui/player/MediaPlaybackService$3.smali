.class Lcom/miui/player/MediaPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 308
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 311
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, cmd:Ljava/lang/String;
    const-string v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    :cond_0
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    const-string v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 316
    :cond_3
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 317
    :cond_4
    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 318
    :cond_5
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 319
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 321
    :cond_6
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->play()V

    goto :goto_0

    .line 323
    :cond_7
    const-string v3, "unpause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 324
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->play()V

    goto :goto_0

    .line 327
    :cond_8
    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 328
    :cond_9
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 329
    :cond_a
    const-string v3, "stop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 330
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 331
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 332
    :cond_b
    const-string v3, "remove"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "com.miui.player.musicservicecommand.remove"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    :cond_c
    const-string v3, "id"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 334
    .local v2, id:I
    if-eqz v2, :cond_d

    .line 335
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/MediaPlaybackService;->removeTrack(J)I

    goto/16 :goto_0

    .line 336
    :cond_d
    const-string v3, "appwidgetupdate"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v3}, Lcom/miui/player/MediaPlaybackService;->access$1200(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3, v4}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->performUpdate(Lcom/miui/player/MediaPlaybackService;)V

    goto/16 :goto_0
.end method
