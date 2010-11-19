.class Lcom/miui/player/model/TrackBrowserHelper$1;
.super Ljava/lang/Object;
.source "TrackBrowserHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackBrowserHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/TrackBrowserHelper;


# direct methods
.method constructor <init>(Lcom/miui/player/model/TrackBrowserHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserHelper$1;->this$0:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper$1;->this$0:Lcom/miui/player/model/TrackBrowserHelper;

    move-object v4, v0

    invoke-static {v4}, Lcom/miui/player/model/TrackBrowserHelper;->access$000(Lcom/miui/player/model/TrackBrowserHelper;)Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 492
    .local v9, context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 493
    .local v16, tag:Ljava/lang/Object;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;

    move v4, v0

    if-eqz v4, :cond_2

    .line 494
    move-object/from16 v0, v16

    check-cast v0, Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;

    move-object v13, v0

    .line 495
    .local v13, listenerTag:Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;
    iget-wide v11, v13, Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;->mId:J

    .line 496
    .local v11, id:J
    iget v15, v13, Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;->mPos:I

    .line 497
    .local v15, pos:I
    invoke-static {}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId()Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, favoritePlaylist:Ljava/lang/String;
    iget-wide v4, v13, Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;->mId:J

    invoke-static {v9, v4, v5}, Lcom/miui/player/helper/FavoritePlaylist;->contains(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 500
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 501
    .local v1, res:Landroid/content/ContentResolver;
    const-string v4, "external"

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 504
    .local v2, uri:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    .line 507
    .local v3, projection:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 510
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 512
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 513
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 514
    .local v14, memberId:I
    int-to-long v4, v14

    invoke-static {v9, v10, v4, v5}, Lcom/miui/player/MusicUtils;->removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;J)V

    .line 515
    invoke-static {v9, v11, v12}, Lcom/miui/player/helper/FavoritePlaylist;->remove(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v14           #memberId:I
    :cond_0
    if-eqz v8, :cond_1

    .line 521
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper$1;->this$0:Lcom/miui/player/model/TrackBrowserHelper;

    move-object v4, v0

    invoke-static {v4}, Lcom/miui/player/model/TrackBrowserHelper;->access$000(Lcom/miui/player/model/TrackBrowserHelper;)Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->updateViews()V

    .line 532
    .end local v1           #res:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper$1;->this$0:Lcom/miui/player/model/TrackBrowserHelper;

    move-object v4, v0

    invoke-static {v4}, Lcom/miui/player/model/TrackBrowserHelper;->access$000(Lcom/miui/player/model/TrackBrowserHelper;)Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getTrackListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/SimpleCursorAdapter;

    .line 534
    .local v7, adpater:Landroid/widget/SimpleCursorAdapter;
    if-eqz v7, :cond_2

    .line 535
    invoke-virtual {v7}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 538
    .end local v7           #adpater:Landroid/widget/SimpleCursorAdapter;
    .end local v10           #favoritePlaylist:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #listenerTag:Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;
    .end local v15           #pos:I
    :cond_2
    return-void

    .line 517
    .restart local v1       #res:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v10       #favoritePlaylist:Ljava/lang/String;
    .restart local v11       #id:J
    .restart local v13       #listenerTag:Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;
    .restart local v15       #pos:I
    :catch_0
    move-exception v4

    .line 520
    if-eqz v8, :cond_1

    .line 521
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v4

    if-eqz v8, :cond_3

    .line 521
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .line 528
    .end local v1           #res:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_4
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v9, v11, v12, v4, v5}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;JJ)V

    .line 529
    invoke-static {v9, v11, v12}, Lcom/miui/player/helper/FavoritePlaylist;->add(Landroid/content/Context;J)V

    goto :goto_1
.end method
