.class Lcom/miui/player/ui/MediaPlaybackActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


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
    .line 863
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 866
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1100(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 871
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 872
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1000(Lcom/miui/player/ui/MediaPlaybackActivity;J)V

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    const-string v1, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 874
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$400(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 875
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V

    goto :goto_0

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    goto :goto_0

    .line 879
    :cond_3
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 880
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    goto :goto_0

    .line 881
    :cond_4
    const-string v1, "com.miui.player.refreshui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    goto :goto_0
.end method
