.class public Lcom/miui/player/ui/MediaPlaybackActivityStarter;
.super Landroid/app/Activity;
.source "MediaPlaybackActivityStarter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivityStarter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 34
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivityStarter;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivityStarter;->finish()V

    .line 37
    return-void
.end method
