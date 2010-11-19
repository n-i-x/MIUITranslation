.class Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToOtherOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const-string v5, "com.miui.music.PICK"

    const-string v7, "active_tab_2"

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v4}, Lcom/miui/player/ui/TrackBrowserActivity;->access$200(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 223
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "com.miui.music.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/album"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v4, "artist"

    iget-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v5}, Lcom/miui/player/ui/TrackBrowserActivity;->access$200(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v4, "active_tab_2"

    const/4 v4, -0x1

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 229
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    if-eqz v4, :cond_0

    .line 230
    move-object v0, v3

    check-cast v0, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    move-object v1, v0

    .line 231
    .local v1, holder:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    const-string v4, "albumname"

    iget-object v5, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->albumTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v4, "artistname"

    iget-object v5, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->artistTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    .end local v1           #holder:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 243
    const-string v4, "withtabs"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    const-string v4, "withtabs_2"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v4, v2, v6}, Lcom/miui/player/MusicUtils;->transitWithoutAnim(Landroid/app/Activity;Landroid/content/Intent;Z)V

    .line 248
    :cond_1
    return-void

    .line 235
    :cond_2
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v4}, Lcom/miui/player/ui/TrackBrowserActivity;->access$300(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "com.miui.music.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v4, "playlist"

    iget-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v5}, Lcom/miui/player/ui/TrackBrowserActivity;->access$300(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v4, "active_tab_2"

    const v4, 0x7f0b002b

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
