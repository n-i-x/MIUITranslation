.class Lcom/miui/player/ui/AlbumBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$1;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$1;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/GridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->invalidateViews()V

    .line 257
    return-void
.end method
