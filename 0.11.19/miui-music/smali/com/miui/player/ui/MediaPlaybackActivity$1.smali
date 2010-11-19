.class Lcom/miui/player/ui/MediaPlaybackActivity$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 705
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "classname"
    .parameter "obj"

    .prologue
    const-wide/16 v3, 0x0

    .line 707
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {p2}, Lcom/miui/player/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$102(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/IMediaPlaybackService;)Lcom/miui/player/IMediaPlaybackService;

    .line 708
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$200(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 710
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$300(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$400(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$500(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 720
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$600(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 728
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 743
    :goto_1
    return-void

    .line 723
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$500(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 724
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$600(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 725
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$700(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 726
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$800(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v1

    .line 736
    :cond_3
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    .line 737
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 739
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const-class v2, Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 740
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 742
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$1;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 746
    return-void
.end method
