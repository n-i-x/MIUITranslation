.class public Lcom/miui/player/ui/PlaylistBrowserActivity;
.super Landroid/app/ListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/miui/player/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;,
        Lcom/miui/player/ui/PlaylistBrowserActivity$ToFavoriteClickListener;
    }
.end annotation


# static fields
.field private static final ALL_SONGS_PLAYLIST:J = -0x2L

.field private static final DELETE_PLAYLIST:I = 0xf

.field private static final EDIT_PLAYLIST:I = 0x10

.field private static final RECENTLY_ADDED_PLAYLIST:J = -0x1L

.field private static final RENAME_PLAYLIST:I = 0x11

.field private static final TAG:Ljava/lang/String; = "PlaylistBrowserActivity"

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

.field mAdapterSent:Z

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 85
    sput v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 87
    sput v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 252
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/PlaylistBrowserActivity$2;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/PlaylistBrowserActivity$3;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 532
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->playRecentlyAdded()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/player/ui/PlaylistBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/PlaylistBrowserActivity;)Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/ui/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/player/ui/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/player/ui/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x25

    const/4 v1, 0x0

    const-string v7, "name"

    .line 538
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const/4 v6, 0x0

    .line 543
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 544
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 545
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 546
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 547
    .local v9, col:Ljava/text/Collator;
    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 548
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v11, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 548
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 551
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 552
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 558
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/player/helper/FavoritePlaylist;->filter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, whereclause:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 561
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    const-string v0, "name"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 569
    :goto_2
    return-object v0

    .line 565
    :cond_2
    const/4 v8, 0x0

    .line 566
    .local v8, c:Landroid/database/Cursor;
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    const-string v0, "name"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 569
    invoke-direct {p0, v8}, Lcom/miui/player/ui/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x2

    .line 573
    if-nez p1, :cond_0

    .line 574
    const/4 v5, 0x0

    .line 604
    :goto_0
    return-object v5

    .line 576
    :cond_0
    instance-of v5, p1, Landroid/database/MergeCursor;

    if-eqz v5, :cond_1

    .line 578
    const-string v5, "PlaylistBrowserActivity"

    const-string v6, "Already wrapped"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    .line 579
    goto :goto_0

    .line 581
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v1, autoplaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    iget-boolean v5, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v5, :cond_2

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 584
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v5, -0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 589
    .local v4, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    const v5, 0x7f070024

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v2, Lcom/miui/player/helper/ArrayListCursor;

    iget-object v5, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v2, v5, v1}, Lcom/miui/player/helper/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 600
    .local v2, autoplaylistscursor:Lcom/miui/player/helper/ArrayListCursor;
    new-instance v3, Landroid/database/MergeCursor;

    new-array v5, v7, [Landroid/database/Cursor;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v3, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v3, cc:Landroid/database/Cursor;
    move-object v5, v3

    .line 604
    goto :goto_0
.end method

.method private playRecentlyAdded()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 471
    const-string v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/miui/player/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x93a80

    mul-int v6, v0, v1

    .line 472
    .local v6, X:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    .line 475
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date_added>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v12, 0x3e8

    div-long/2addr v3, v12

    int-to-long v12, v6

    sub-long/2addr v3, v12

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 477
    .local v11, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 481
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 498
    :goto_0
    return-void

    .line 486
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 487
    .local v9, len:I
    new-array v10, v9, [J

    .line 488
    .local v10, list:[J
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 490
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v10, v8

    .line 488
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 492
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v10, v0}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 493
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 494
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[J
    :catch_0
    move-exception v0

    .line 496
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 299
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle(I)V

    .line 300
    return-void
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 276
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 277
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 278
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->closeContextMenu()V

    .line 279
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 284
    :cond_1
    sget v1, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    if-ltz v1, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sget v2, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    sget v3, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 286
    const/4 v1, -0x1

    sput v1, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 288
    :cond_2
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 289
    const v1, 0x7f0b002b

    invoke-static {p0, v1}, Lcom/miui/player/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 292
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, header:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 295
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 410
    :pswitch_0
    if-nez p2, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 355
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 356
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v8

    .line 403
    :goto_1
    return v4

    .line 358
    :sswitch_0
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->playRecentlyAdded()V

    goto :goto_0

    .line 365
    :cond_1
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v4, v5}, Lcom/miui/player/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_0

    .line 369
    :sswitch_1
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 371
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 372
    const v4, 0x7f070022

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 373
    iget-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 374
    const v4, 0x7f07001e

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle(I)V

    goto :goto_0

    .line 378
    .end local v3           #uri:Landroid/net/Uri;
    :sswitch_2
    const-string v4, "PlaylistBrowserActivity"

    const-string v5, "non-support edit playlist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v0, intent:Landroid/content/Intent;
    const-class v4, Lcom/miui/player/ui/RenamePlaylist;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 393
    const-string v4, "rename"

    iget-wide v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 394
    const/16 v4, 0x11

    invoke-virtual {p0, v0, v4}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 398
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v2, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 400
    goto :goto_1

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xd -> :sswitch_4
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 100
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 105
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 107
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setVolumeControlStream(I)V

    .line 108
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0, v7, v10}, Lcom/miui/player/ui/PlaylistBrowserActivity$1;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 137
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/miui/player/ui/PlaylistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setContentView(I)V

    .line 145
    const v0, 0x7f0b002b

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 146
    const v0, 0x7f0b0031

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->updateButtonBar2(Landroid/app/Activity;I)Z

    .line 147
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 148
    .local v11, lv:Landroid/widget/ListView;
    invoke-virtual {v11, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 152
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030015

    iget-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "name"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    const v7, 0x1020014

    aput v7, v6, v2

    .end local v7           #action:Ljava/lang/String;
    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 160
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle(I)V

    .line 162
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 181
    :goto_0
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 182
    .local v9, favoriteTab:Landroid/widget/TextView;
    const v0, 0x7f07006e

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v9, v0, v1, v2}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/widget/TextView;IZZ)V

    .line 183
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$ToFavoriteClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity$ToFavoriteClickListener;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;Lcom/miui/player/ui/PlaylistBrowserActivity$1;)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 186
    .local v12, playlistTab:Landroid/widget/TextView;
    const v0, 0x7f070070

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v12, v0, v1, v2}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/widget/TextView;IZZ)V

    .line 187
    return-void

    .line 164
    .end local v9           #favoriteTab:Landroid/widget/TextView;
    .end local v12           #playlistTab:Landroid/widget/TextView;
    .restart local v7       #action:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->setActivity(Lcom/miui/player/ui/PlaylistBrowserActivity;)V

    .line 165
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 173
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 176
    :cond_2
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle(I)V

    .line 177
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 330
    iget-boolean v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_0

    .line 351
    :goto_0
    return-void

    .line 334
    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 336
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v2, 0x5

    const v3, 0x7f070031

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 338
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v2, v2, v5

    if-ltz v2, :cond_1

    .line 339
    const/16 v2, 0xf

    const v3, 0x7f07001f

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 342
    :cond_1
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v2, v2, v5

    if-ltz v2, :cond_2

    .line 343
    const/16 v2, 0x11

    const v3, 0x7f070021

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 346
    :cond_2
    const/16 v2, 0xd

    const v3, 0x7f070054

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 348
    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 349
    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-boolean v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v0, :cond_0

    .line 305
    const/16 v0, 0x8

    const v1, 0x7f070006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 215
    .local v2, lv:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 217
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 218
    .local v1, cv:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 222
    .end local v1           #cv:Landroid/view/View;
    :cond_0
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 223
    iget-boolean v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterSent:Z

    if-nez v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v3}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 225
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 232
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    iput-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 234
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 236
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const v7, 0x7f0b0031

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "active_tab_2"

    const-string v4, "playlist"

    .line 421
    iget-boolean v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_1

    .line 422
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 423
    .local v1, shortcut:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 429
    const-string v3, "android.intent.extra.shortcut.NAME"

    const v2, 0x7f0b003d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 431
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f020015

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 434
    const-string v2, "withtabs"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 435
    const-string v2, "withtabs_2"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    const-string v2, "active_tab_2"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 439
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->finish()V

    .line 467
    .end local v1           #shortcut:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 443
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .line 445
    .restart local v0       #intent:Landroid/content/Intent;
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 446
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.miui.music.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v2, "playlist"

    const-string v2, "recentlyadded"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    :goto_1
    if-eqz v0, :cond_0

    .line 460
    const-string v2, "withtabs"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    const-string v2, "withtabs_2"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 462
    const-string v2, "active_tab_2"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 465
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    .line 454
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.miui.music.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 320
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 322
    :pswitch_0
    invoke-static {}, Lcom/miui/player/MusicUtils;->togglePartyShuffle()V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 250
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 314
    invoke-static {p1}, Lcom/miui/player/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 315
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 242
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 243
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 244
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 208
    .local v0, a:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterSent:Z

    .line 209
    return-object v0
.end method
