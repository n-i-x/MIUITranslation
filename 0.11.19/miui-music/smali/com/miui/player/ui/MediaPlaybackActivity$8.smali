.class Lcom/miui/player/ui/MediaPlaybackActivity$8;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 1209
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1212
    .local v0, now:J
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2000(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1213
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2002(Lcom/miui/player/ui/MediaPlaybackActivity;J)J

    .line 1214
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2300(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    move-result-wide v3

    int-to-long v5, p2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2202(Lcom/miui/player/ui/MediaPlaybackActivity;J)J

    .line 1216
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2200(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/miui/player/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :goto_1
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2100(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1222
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    .line 1223
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2202(Lcom/miui/player/ui/MediaPlaybackActivity;J)J

    goto :goto_0

    .line 1217
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2002(Lcom/miui/player/ui/MediaPlaybackActivity;J)J

    .line 1205
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2102(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z

    .line 1206
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 1231
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2200(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/miui/player/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2202(Lcom/miui/player/ui/MediaPlaybackActivity;J)J

    .line 1236
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$8;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2102(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z

    .line 1237
    return-void

    .line 1232
    :catch_0
    move-exception v0

    goto :goto_0
.end method
