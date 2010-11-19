.class Lcom/miui/player/ui/PlaylistBrowserActivity$ToFavoriteClickListener;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToFavoriteClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$ToFavoriteClickListener;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/PlaylistBrowserActivity;Lcom/miui/player/ui/PlaylistBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity$ToFavoriteClickListener;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.music.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "playlist"

    invoke-static {}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "withtabs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    const-string v1, "withtabs_2"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    const-string v1, "active_tab_2"

    const v2, 0x7f0b0031

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$ToFavoriteClickListener;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v1, v0, v3}, Lcom/miui/player/MusicUtils;->transitWithoutAnim(Landroid/app/Activity;Landroid/content/Intent;Z)V

    .line 201
    return-void
.end method
