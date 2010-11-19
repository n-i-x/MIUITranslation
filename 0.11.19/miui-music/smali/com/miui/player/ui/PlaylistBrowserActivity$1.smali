.class Lcom/miui/player/ui/PlaylistBrowserActivity$1;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    iput-object p2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 110
    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "playlist"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 112
    .local v0, id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$000(Lcom/miui/player/ui/PlaylistBrowserActivity;)V

    .line 127
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-virtual {v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->finish()V

    .line 131
    .end local v0           #id:J
    :cond_1
    return-void

    .line 114
    .restart local v0       #id:J
    :cond_2
    const-wide/16 v3, -0x2

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v2

    .line 116
    .local v2, list:[J
    if-eqz v2, :cond_0

    .line 117
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 118
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    goto :goto_0

    .line 125
    .end local v2           #list:[J
    :cond_3
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v3, v0, v1}, Lcom/miui/player/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 134
    return-void
.end method
