.class public Lcom/miui/player/ui/MusicBrowserActivity;
.super Landroid/app/Activity;
.source "MusicBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;


# static fields
.field private static final DEFAULT_TAB_ID:I = 0x7f0b0028


# instance fields
.field private autoshuffle:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicBrowserActivity$1;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->autoshuffle:Landroid/content/ServiceConnection;

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const v4, 0x7f0b0028

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 47
    const-string v2, "activetab"

    invoke-static {p0, v2, v4}, Lcom/miui/player/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, activeTab:I
    const v2, 0x7f0b0029

    if-eq v0, v2, :cond_0

    const v2, 0x7f0b002a

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const v2, 0x7f0b002b

    if-eq v0, v2, :cond_0

    .line 50
    const v0, 0x7f0b0028

    .line 53
    :cond_0
    const/4 v2, -0x1

    invoke-static {p0, v0, v2}, Lcom/miui/player/MusicUtils;->activateTab(Landroid/app/Activity;II)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "autoshuffle"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, shuf:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/ui/MusicBrowserActivity;->autoshuffle:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/player/ui/MusicBrowserActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 60
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 64
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    return-void
.end method
