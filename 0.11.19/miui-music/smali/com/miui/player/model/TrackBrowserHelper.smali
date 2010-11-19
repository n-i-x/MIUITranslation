.class public Lcom/miui/player/model/TrackBrowserHelper;
.super Ljava/lang/Object;
.source "TrackBrowserHelper.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;
    }
.end annotation


# static fields
.field private static final REMOVE:I = 0x13


# instance fields
.field private mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

.field private mCurrentTrackName:Ljava/lang/String;

.field private mDeleteOneRow:Z

.field private mFavoritePlaylistListener:Landroid/view/View$OnClickListener;

.field private mSelectedId:J

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Lcom/miui/player/model/TrackBrowserHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/player/model/TrackBrowserHelper$1;-><init>(Lcom/miui/player/model/TrackBrowserHelper;)V

    iput-object v0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mFavoritePlaylistListener:Landroid/view/View$OnClickListener;

    .line 52
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/model/TrackBrowserHelper;)Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    return-object v0
.end method

.method private moveItem(Ljava/lang/String;Z)V
    .locals 19
    .parameter "playlist"
    .parameter "up"

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getCurrentTrackCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 417
    .local v10, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getTrackListView()Landroid/widget/ListView;

    move-result-object v11

    .line 419
    .local v11, listView:Landroid/widget/ListView;
    if-nez v11, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 424
    .local v7, curcount:I
    invoke-virtual {v11}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v8

    .line 425
    .local v8, curpos:I
    if-eqz p2, :cond_2

    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-lt v0, v1, :cond_0

    :cond_2
    if-nez p2, :cond_3

    const/16 v16, 0x1

    sub-int v16, v7, v16

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 429
    :cond_3
    move-object v0, v10

    instance-of v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 430
    move-object v0, v10

    check-cast v0, Lcom/miui/player/model/TrackNowPlayingCursor;

    move-object v5, v0

    .line 431
    .local v5, c:Lcom/miui/player/model/TrackNowPlayingCursor;
    if-eqz p2, :cond_5

    const/16 v16, 0x1

    sub-int v16, v8, v16

    :goto_1
    move-object v0, v5

    move v1, v8

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/model/TrackNowPlayingCursor;->moveItem(II)V

    .line 432
    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 433
    .local v3, adapter:Landroid/widget/Adapter;
    move-object v0, v3

    instance-of v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 434
    check-cast v3, Lcom/miui/player/model/TrackBrowserAdapter;

    .end local v3           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v3}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 436
    :cond_4
    invoke-virtual {v11}, Landroid/widget/ListView;->invalidateViews()V

    .line 437
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    .line 438
    if-eqz p2, :cond_6

    .line 439
    const/16 v16, 0x1

    sub-int v16, v8, v16

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 431
    :cond_5
    add-int/lit8 v16, v8, 0x1

    goto :goto_1

    .line 441
    :cond_6
    add-int/lit8 v16, v8, 0x1

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 444
    .end local v5           #c:Lcom/miui/player/model/TrackNowPlayingCursor;
    :cond_7
    const-string v16, "play_order"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 446
    .local v6, colidx:I
    invoke-interface {v10, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 447
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 448
    .local v9, currentplayidx:I
    const-string v16, "external"

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v16 .. v18}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 450
    .local v4, baseUri:Landroid/net/Uri;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "_id=?"

    .line 452
    .local v14, where:Ljava/lang/String;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    .line 453
    .local v15, wherearg:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 454
    .local v12, res:Landroid/content/ContentResolver;
    if-eqz p2, :cond_8

    .line 455
    const-string v16, "play_order"

    const/16 v17, 0x1

    sub-int v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 457
    invoke-virtual {v12, v4, v13, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 458
    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 465
    :goto_2
    const-string v16, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 467
    invoke-virtual {v12, v4, v13, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 460
    :cond_8
    const-string v16, "play_order"

    add-int/lit8 v17, v9, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 462
    invoke-virtual {v12, v4, v13, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 463
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private removeItem(Ljava/lang/String;)V
    .locals 13
    .parameter "playlist"

    .prologue
    const/4 v12, 0x0

    .line 366
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getCurrentTrackCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 367
    .local v3, cursor:Landroid/database/Cursor;
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getTrackListView()Landroid/widget/ListView;

    move-result-object v6

    .line 369
    .local v6, listView:Landroid/widget/ListView;
    if-nez v6, :cond_1

    .line 413
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 373
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local p0
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 374
    .local v1, curcount:I
    invoke-virtual {v6}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 375
    .local v2, curpos:I
    if-eqz v1, :cond_0

    if-ltz v2, :cond_0

    .line 379
    const-string v9, "nowplaying"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 385
    :try_start_0
    sget-object v9, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v9

    if-eq v2, v9, :cond_2

    .line 386
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v8

    .line 391
    .local v8, v:Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 392
    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 393
    check-cast v3, Lcom/miui/player/model/TrackNowPlayingCursor;

    .end local v3           #cursor:Landroid/database/Cursor;
    invoke-virtual {v3, v2}, Lcom/miui/player/model/TrackNowPlayingCursor;->removeItem(I)Z

    .line 394
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 395
    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 398
    .end local v8           #v:Landroid/view/View;
    .restart local v3       #cursor:Landroid/database/Cursor;
    :cond_3
    const-string v9, "_id"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 399
    .local v0, colidx:I
    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 400
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 401
    .local v4, id:J
    const-string v9, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    .line 403
    .local v7, uri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 405
    add-int/lit8 v1, v1, -0x1

    .line 406
    if-nez v1, :cond_4

    .line 407
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_0

    .line 408
    iget-object p0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 410
    .restart local p0
    :cond_4
    if-ge v2, v1, :cond_5

    move v9, v2

    :goto_2
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v9, v1

    goto :goto_2

    .line 388
    .end local v0           #colidx:I
    .end local v4           #id:J
    .end local v7           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v9

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;Ljava/lang/String;)Z
    .locals 3
    .parameter "event"
    .parameter "playlist"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 348
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    move v0, v2

    .line 362
    :goto_0
    return v0

    .line 351
    :sswitch_0
    invoke-direct {p0, p2, v1}, Lcom/miui/player/model/TrackBrowserHelper;->moveItem(Ljava/lang/String;Z)V

    move v0, v1

    .line 352
    goto :goto_0

    .line 354
    :sswitch_1
    invoke-direct {p0, p2, v2}, Lcom/miui/player/model/TrackBrowserHelper;->moveItem(Ljava/lang/String;Z)V

    move v0, v1

    .line 355
    goto :goto_0

    .line 357
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/miui/player/model/TrackBrowserHelper;->removeItem(Ljava/lang/String;)V

    move v0, v1

    .line 358
    goto :goto_0

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method public dropTrack(II)V
    .locals 17
    .parameter "from"
    .parameter "to"

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v14, v0

    invoke-interface {v14}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getCurrentTrackCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 58
    .local v7, mTrackCursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    instance-of v14, v7, Lcom/miui/player/model/TrackNowPlayingCursor;

    if-eqz v14, :cond_2

    .line 64
    move-object v0, v7

    check-cast v0, Lcom/miui/player/model/TrackNowPlayingCursor;

    move-object v4, v0

    .line 65
    .local v4, c:Lcom/miui/player/model/TrackNowPlayingCursor;
    move-object v0, v4

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/model/TrackNowPlayingCursor;->moveItem(II)V

    .line 67
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v14, v0

    invoke-interface {v14}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->updateViews()V

    goto :goto_0

    .line 71
    .end local v4           #c:Lcom/miui/player/model/TrackNowPlayingCursor;
    :cond_2
    const-string v14, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v15, v0

    invoke-interface {v15}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getPlayList()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 73
    .local v3, baseUri:Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, "_id=?"

    .line 75
    .local v12, where:Ljava/lang/String;
    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    .line 76
    .local v13, wherearg:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v14, v0

    invoke-interface {v14}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 78
    .local v8, res:Landroid/content/ContentResolver;
    const-string v14, "play_order"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 80
    .local v5, colidx:I
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 82
    move-object v0, v7

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 83
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 84
    .local v9, toidx:J
    move-object v0, v7

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 85
    const-string v14, "play_order"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 87
    invoke-virtual {v8, v3, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    add-int/lit8 v6, p1, 0x1

    .local v6, i:I
    :goto_1
    move v0, v6

    move/from16 v1, p2

    if-gt v0, v1, :cond_0

    .line 89
    invoke-interface {v7, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 90
    const-string v14, "play_order"

    const/4 v15, 0x1

    sub-int v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 92
    invoke-virtual {v8, v3, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 94
    .end local v6           #i:I
    .end local v9           #toidx:J
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    .line 96
    move-object v0, v7

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 97
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 98
    .restart local v9       #toidx:J
    move-object v0, v7

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 99
    const-string v14, "play_order"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 101
    invoke-virtual {v8, v3, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    const/4 v14, 0x1

    sub-int v6, p1, v14

    .restart local v6       #i:I
    :goto_2
    move v0, v6

    move/from16 v1, p2

    if-lt v0, v1, :cond_0

    .line 103
    invoke-interface {v7, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 104
    const-string v14, "play_order"

    add-int/lit8 v15, v6, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 106
    invoke-virtual {v8, v3, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    add-int/lit8 v6, v6, -0x1

    goto :goto_2
.end method

.method public onContextItemSelected(Lcom/miui/player/IMediaPlaybackService;Landroid/view/MenuItem;)Z
    .locals 19
    .parameter "service"
    .parameter "item"

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v15, v0

    invoke-interface {v15}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getCurrentTrackCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 209
    .local v7, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v15, v0

    invoke-interface {v15}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 211
    .local v6, context:Landroid/content/Context;
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    .line 275
    const/4 v15, 0x0

    .end local p0
    :goto_0
    return v15

    .line 214
    .restart local p0
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    move v14, v0

    .line 215
    .local v14, position:I
    invoke-static {v6, v7, v14}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-static/range {p0 .. p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 217
    const/4 v15, 0x1

    goto :goto_0

    .line 221
    .end local v14           #position:I
    .restart local p0
    :sswitch_1
    const/4 v15, 0x1

    new-array v11, v15, [J

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v16, v0

    aput-wide v16, v11, v15

    .line 224
    .local v11, list:[J
    invoke-static {v6, v11}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 225
    const/4 v15, 0x1

    goto :goto_0

    .line 229
    .end local v11           #list:[J
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v15, v0

    instance-of v15, v15, Landroid/app/Activity;

    if-eqz v15, :cond_0

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v4, v0

    check-cast v4, Landroid/app/Activity;

    .line 231
    .local v4, a:Landroid/app/Activity;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v10, intent:Landroid/content/Intent;
    const-class v15, Lcom/miui/player/ui/CreatePlaylist;

    invoke-virtual {v10, v6, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    const/4 v15, 0x4

    invoke-virtual {v4, v10, v15}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    .end local v4           #a:Landroid/app/Activity;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v15, 0x1

    goto :goto_0

    .line 239
    :sswitch_3
    const/4 v15, 0x1

    new-array v11, v15, [J

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v16, v0

    aput-wide v16, v11, v15

    .line 242
    .restart local v11       #list:[J
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "playlist"

    const-wide/16 v17, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 243
    .local v12, playlist:J
    invoke-static {v6, v11, v12, v13}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    .line 244
    const/4 v15, 0x1

    goto :goto_0

    .line 249
    .end local v11           #list:[J
    .end local v12           #playlist:J
    :sswitch_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide v15, v0

    move-object v0, v6

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/miui/player/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 250
    const/4 v15, 0x1

    goto :goto_0

    .line 253
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v15, v0

    instance-of v15, v15, Landroid/app/Activity;

    if-eqz v15, :cond_1

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object v4, v0

    check-cast v4, Landroid/app/Activity;

    .line 255
    .restart local v4       #a:Landroid/app/Activity;
    const/4 v15, 0x1

    new-array v11, v15, [J

    .line 256
    .restart local v11       #list:[J
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    aput-wide v16, v11, v15

    .line 257
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v5, b:Landroid/os/Bundle;
    const v15, 0x7f07000d

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, f:Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mCurrentTrackName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, desc:Ljava/lang/String;
    const-string v15, "description"

    invoke-virtual {v5, v15, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v15, "items"

    invoke-virtual {v5, v15, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 262
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 263
    .restart local v10       #intent:Landroid/content/Intent;
    const-class v15, Lcom/miui/player/ui/DeleteItems;

    invoke-virtual {v10, v6, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 264
    invoke-virtual {v10, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    const/4 v15, -0x1

    invoke-virtual {v4, v10, v15}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    .end local v4           #a:Landroid/app/Activity;
    .end local v5           #b:Landroid/os/Bundle;
    .end local v8           #desc:Ljava/lang/String;
    .end local v9           #f:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #list:[J
    :cond_1
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 271
    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getPlayList()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/player/model/TrackBrowserHelper;->removeTrack(Lcom/miui/player/IMediaPlaybackService;ILjava/lang/String;)Z

    .line 272
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0xa -> :sswitch_5
        0xc -> :sswitch_1
        0x13 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v8, 0x0

    .line 180
    const/4 v6, 0x5

    const v7, 0x7f070031

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 181
    const/4 v6, 0x1

    const v7, 0x7f070032

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v5

    .line 182
    .local v5, sub:Landroid/view/SubMenu;
    iget-object v6, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v6}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 184
    iget-object v6, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v6}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    const/16 v6, 0x13

    const v7, 0x7f070046

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 188
    :cond_0
    const/4 v6, 0x2

    const v7, 0x7f07002e

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 189
    const/16 v6, 0xa

    const v7, 0x7f070008

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 190
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0

    .line 191
    .local v4, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v6, p0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    .line 193
    iget-object v6, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v6}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getCurrentTrackCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 194
    .local v1, cursor:Landroid/database/Cursor;
    iget v6, p0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 196
    :try_start_0
    const-string v6, "audio_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 197
    .local v3, id_idx:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v3           #id_idx:I
    :goto_0
    const-string v6, "title"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/player/model/TrackBrowserHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 204
    iget-object v6, p0, Lcom/miui/player/model/TrackBrowserHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 205
    return-void

    .line 198
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 199
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    iget-wide v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v6, p0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    goto :goto_0
.end method

.method public onReceiveNowPlaying(Lcom/miui/player/IMediaPlaybackService;Landroid/widget/SimpleCursorAdapter;Landroid/content/Intent;)V
    .locals 4
    .parameter "service"
    .parameter "adapter"
    .parameter "intent"

    .prologue
    .line 151
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.player.metachanged"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v2}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getTrackListView()Landroid/widget/ListView;

    move-result-object v1

    .line 153
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 177
    .end local v1           #lv:Landroid/widget/ListView;
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local p0
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.player.queuechanged"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-boolean v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    if-eqz v2, :cond_2

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    goto :goto_0

    .line 164
    :cond_2
    new-instance v0, Lcom/miui/player/model/TrackNowPlayingCursor;

    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v2}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-direct {v0, v2, p1, v3}, Lcom/miui/player/model/TrackNowPlayingCursor;-><init>(Landroid/content/Context;Lcom/miui/player/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 166
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 168
    iget-object p0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 173
    .restart local p0
    :cond_3
    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p2, v0}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public playTrackInPosition(Lcom/miui/player/IMediaPlaybackService;I)V
    .locals 13
    .parameter "service"
    .parameter "position"

    .prologue
    .line 279
    iget-object v11, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v11}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 280
    .local v1, context:Landroid/content/Context;
    iget-object v11, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v11}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getTrackListView()Landroid/widget/ListView;

    move-result-object v8

    .line 281
    .local v8, listView:Landroid/widget/ListView;
    if-nez v8, :cond_1

    .line 345
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 285
    .restart local p0
    :cond_1
    iget-object v11, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v11}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getCurrentTrackCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 287
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-eqz v11, :cond_0

    .line 291
    const/4 v7, 0x0

    .line 294
    .local v7, isPause:Z
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 295
    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    const/4 v5, 0x0

    .line 298
    .local v5, idIdx:I
    :try_start_1
    const-string v11, "audio_id"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 305
    :goto_1
    :try_start_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 307
    .local v9, songId:J
    invoke-interface {p1}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-nez v11, :cond_2

    .line 308
    invoke-interface {p1}, Lcom/miui/player/IMediaPlaybackService;->pause()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 309
    const/4 v7, 0x1

    .line 316
    .end local v5           #idIdx:I
    .end local v9           #songId:J
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 317
    invoke-virtual {v8}, Landroid/widget/ListView;->invalidateViews()V

    .line 336
    :goto_3
    iget-object v11, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v11}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->isEditMode()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    instance-of v11, v11, Landroid/app/Activity;

    if-eqz v11, :cond_5

    .line 337
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.miui.music.NOW_PLAYING"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v6, intent:Landroid/content/Intent;
    const-string v11, "withtabs_2"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    check-cast v0, Landroid/app/Activity;

    .line 340
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 341
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 300
    .end local v0           #a:Landroid/app/Activity;
    .end local v6           #intent:Landroid/content/Intent;
    .restart local v5       #idIdx:I
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 301
    .local v4, ex:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v11, "_id"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    goto :goto_1

    .line 312
    .end local v4           #ex:Ljava/lang/IllegalArgumentException;
    .end local v5           #idIdx:I
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 313
    .local v3, e:Landroid/os/RemoteException;
    const/4 v7, 0x1

    goto :goto_2

    .line 323
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_3
    instance-of v11, v2, Lcom/miui/player/model/TrackNowPlayingCursor;

    if-eqz v11, :cond_4

    .line 324
    if-eqz p1, :cond_4

    .line 326
    :try_start_4
    invoke-interface {p1, p2}, Lcom/miui/player/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 328
    :catch_2
    move-exception v11

    .line 333
    :cond_4
    invoke-static {v1, v2, p2}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_3

    .line 343
    :cond_5
    iget-object p0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public removeTrack(Lcom/miui/player/IMediaPlaybackService;ILjava/lang/String;)Z
    .locals 11
    .parameter "service"
    .parameter "which"
    .parameter "playlist"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 114
    iget-object v8, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v8}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getTrackListView()Landroid/widget/ListView;

    move-result-object v6

    .line 115
    .local v6, listView:Landroid/widget/ListView;
    if-nez v6, :cond_0

    move v8, v10

    .line 145
    :goto_0
    return v8

    .line 118
    :cond_0
    iget-object v8, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v8}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getCurrentTrackCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 119
    .local v2, cursor:Landroid/database/Cursor;
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 121
    .local v7, v:Landroid/view/View;
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v8

    if-eq p2, v8, :cond_1

    .line 122
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_1
    :goto_1
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 131
    instance-of v8, v2, Lcom/miui/player/model/TrackNowPlayingCursor;

    if-eqz v8, :cond_2

    .line 132
    check-cast v2, Lcom/miui/player/model/TrackNowPlayingCursor;

    .end local v2           #cursor:Landroid/database/Cursor;
    invoke-virtual {v2, p2}, Lcom/miui/player/model/TrackNowPlayingCursor;->removeItem(I)Z

    .line 141
    :goto_2
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v8, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v8}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->updateViews()V

    move v8, v9

    .line 145
    goto :goto_0

    .line 124
    .restart local v2       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 126
    .local v3, e:Landroid/os/RemoteException;
    iput-boolean v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    goto :goto_1

    .line 135
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v8, "_id"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, colidx:I
    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 137
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 138
    .local v4, id:J
    iget-object v8, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v8}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 139
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, p3, v4, v5}, Lcom/miui/player/MusicUtils;->removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_2
.end method

.method public setFavoritePlaylistListener(Landroid/view/View;JI)V
    .locals 1
    .parameter "v"
    .parameter "id"
    .parameter "pos"

    .prologue
    .line 483
    new-instance v0, Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;

    invoke-direct {v0, p2, p3, p4}, Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;-><init>(JI)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mFavoritePlaylistListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    return-void
.end method
