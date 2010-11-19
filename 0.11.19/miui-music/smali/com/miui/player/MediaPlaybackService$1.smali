.class Lcom/miui/player/MediaPlaybackService$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 218
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 9
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 221
    if-ne p1, v5, :cond_3

    .line 222
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 223
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 224
    .local v1, ringvolume:I
    if-lez v1, :cond_1

    .line 225
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v3}, Lcom/miui/player/MediaPlaybackService;->access$100(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_2

    move v3, v5

    :goto_0
    invoke-static {v2, v3}, Lcom/miui/player/MediaPlaybackService;->access$102(Lcom/miui/player/MediaPlaybackService;Z)Z

    .line 226
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 227
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$100(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v2, v5}, Lcom/miui/player/MediaPlaybackService;->access$202(Lcom/miui/player/MediaPlaybackService;Z)Z

    .line 246
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ringvolume:I
    :cond_1
    :goto_1
    return-void

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #ringvolume:I
    :cond_2
    move v3, v6

    .line 225
    goto :goto_0

    .line 230
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ringvolume:I
    :cond_3
    if-ne p1, v4, :cond_6

    .line 232
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v3}, Lcom/miui/player/MediaPlaybackService;->access$100(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_5

    move v3, v5

    :goto_2
    invoke-static {v2, v3}, Lcom/miui/player/MediaPlaybackService;->access$102(Lcom/miui/player/MediaPlaybackService;Z)Z

    .line 233
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 234
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$100(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v2, v5}, Lcom/miui/player/MediaPlaybackService;->access$202(Lcom/miui/player/MediaPlaybackService;Z)Z

    goto :goto_1

    :cond_5
    move v3, v6

    .line 232
    goto :goto_2

    .line 236
    :cond_6
    if-nez p1, :cond_1

    .line 238
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$100(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$300(Lcom/miui/player/MediaPlaybackService;)V

    .line 242
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v2, v6}, Lcom/miui/player/MediaPlaybackService;->access$102(Lcom/miui/player/MediaPlaybackService;Z)Z

    .line 243
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v2, v6}, Lcom/miui/player/MediaPlaybackService;->access$202(Lcom/miui/player/MediaPlaybackService;Z)Z

    goto :goto_1
.end method
