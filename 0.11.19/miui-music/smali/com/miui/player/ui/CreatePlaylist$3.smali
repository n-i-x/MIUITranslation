.class Lcom/miui/player/ui/CreatePlaylist$3;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/CreatePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/CreatePlaylist;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/CreatePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/player/ui/CreatePlaylist$3;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 159
    iget-object v2, p0, Lcom/miui/player/ui/CreatePlaylist$3;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-static {v2}, Lcom/miui/player/ui/CreatePlaylist;->access$000(Lcom/miui/player/ui/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/ui/CreatePlaylist$3;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-virtual {v2}, Lcom/miui/player/ui/CreatePlaylist;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/miui/player/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/miui/player/ui/CreatePlaylist$3;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/player/ui/CreatePlaylist;->setResult(ILandroid/content/Intent;)V

    .line 163
    iget-object v2, p0, Lcom/miui/player/ui/CreatePlaylist$3;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-virtual {v2}, Lcom/miui/player/ui/CreatePlaylist;->finish()V

    .line 166
    :cond_0
    return-void
.end method
