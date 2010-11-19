.class public Lcom/miui/player/ui/TrackBrowserActivity;
.super Landroid/app/ListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;
.implements Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;,
        Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;
    }
.end annotation


# static fields
.field private static final CLEAR_PLAYLIST:I = 0x12

.field private static final MSG_REFRESH:I = 0x1

.field private static final PLAY_ALL:I = 0x11

.field private static final REFRESH_INTERVAL:I = 0x1f4

.field private static final SAVE_AS_PLAYLIST:I = 0x10

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mActiveTabId:I

.field private mActiveTabId2:I

.field private mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mArtistNameForAlbum:Ljava/lang/String;

.field private mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

.field private mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

.field private mEditMode:Z

.field private mGenre:Ljava/lang/String;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mPlaylist:Ljava/lang/String;

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private final mRefreshHandler:Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;

.field private mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSortOrder:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Landroid/widget/ListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUseLastListPos:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 103
    sput v0, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    .line 105
    sput v0, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mEditMode:Z

    .line 85
    iput-boolean v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapterSent:Z

    .line 107
    iput-boolean v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mUseLastListPos:Z

    .line 378
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$2;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 390
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$3;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 580
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$4;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

    .line 587
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$5;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

    .line 593
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$6;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 600
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$7;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 896
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mRefreshHandler:Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->setAlbumArtBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    return-object v0
.end method

.method private enableUpdate(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 899
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mRefreshHandler:Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;->removeMessages(I)V

    .line 900
    if-eqz p1, :cond_0

    .line 901
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mRefreshHandler:Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;->sendEmptyMessage(I)Z

    .line 903
    :cond_0
    return-void
.end method

.method private getHeaderName()Ljava/lang/CharSequence;
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    const-string v5, "name"

    .line 511
    const/4 v7, 0x0

    .line 512
    .local v7, fancyName:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v9, v0

    .line 514
    .local v9, numresults:I
    :goto_0
    if-lez v9, :cond_0

    .line 515
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 516
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 517
    .local v8, idx:I
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 518
    invoke-static {p0, v7}, Lcom/miui/player/helper/MediaFile;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 572
    .end local v8           #idx:I
    .end local v9           #numresults:I
    :cond_0
    :goto_1
    if-nez v7, :cond_1

    .line 573
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 576
    :cond_1
    return-object v7

    :cond_2
    move v9, v12

    .line 513
    goto :goto_0

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 521
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v9, v0

    .line 522
    .restart local v9       #numresults:I
    :goto_2
    if-lez v9, :cond_0

    .line 523
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 524
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "artist"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 525
    .restart local v8       #idx:I
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 526
    invoke-static {p0, v7}, Lcom/miui/player/helper/MediaFile;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .end local v8           #idx:I
    .end local v9           #numresults:I
    :cond_4
    move v9, v12

    .line 521
    goto :goto_2

    .line 528
    :cond_5
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 529
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 530
    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 531
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .line 533
    :cond_6
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .line 535
    :cond_7
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "recentlyadded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 536
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .line 539
    :cond_8
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 540
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .line 542
    :cond_9
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v5, v2, v12

    .line 545
    .local v2, cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v4}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 548
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 549
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 550
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 551
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 553
    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_1

    .line 556
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_b
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 557
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v5, v2, v12

    .line 560
    .restart local v2       #cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v4}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 563
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 564
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_c

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 568
    :cond_c
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_1
.end method

.method private setAlbumArtBackground()V
    .locals 6

    .prologue
    .line 494
    :try_start_0
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 495
    .local v0, albumid:J
    const-wide/16 v4, -0x1

    invoke-static {p0, v4, v5, v0, v1}, Lcom/miui/player/helper/AlbumManager;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 496
    .local v2, bm:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 497
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/player/helper/AlbumManager;->getXShareArtwork(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 499
    :cond_0
    if-eqz v2, :cond_1

    .line 500
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-static {v4, v2}, Lcom/miui/player/MusicUtils;->setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v0           #albumid:J
    .end local v2           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 504
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 350
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/miui/player/model/TrackBrowserHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x1

    .line 632
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPlayList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 13
    .parameter "queryhandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    .line 758
    if-nez p1, :cond_0

    .line 759
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 762
    :cond_0
    const/4 v10, 0x0

    .line 763
    .local v10, ret:Landroid/database/Cursor;
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 764
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const/4 v4, 0x0

    .line 769
    .local v4, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 770
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 771
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v4, v0, [Ljava/lang/String;

    .line 772
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 773
    .local v8, col:Ljava/text/Collator;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 774
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v11

    if-ge v9, v0, :cond_1

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v9

    invoke-static {v1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 774
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 777
    :cond_1
    const/4 v9, 0x0

    :goto_1
    array-length v0, v11

    if-ge v9, v0, :cond_2

    .line 778
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v0, "artist_key||"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string v0, "title_key LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 784
    .end local v8           #col:Ljava/text/Collator;
    .end local v9           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 785
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 786
    const-string v0, "external"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v10

    .line 843
    :cond_3
    :goto_2
    if-eqz v10, :cond_4

    if-eqz p3, :cond_4

    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    .line 846
    :cond_4
    return-object v10

    .line 789
    :cond_5
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 790
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 791
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_3

    .line 792
    new-instance v10, Lcom/miui/player/model/TrackNowPlayingCursor;

    .end local v10           #ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    sget-object v2, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-direct {v10, v0, v1, v2}, Lcom/miui/player/model/TrackNowPlayingCursor;-><init>(Landroid/content/Context;Lcom/miui/player/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 794
    .restart local v10       #ret:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 795
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->finish()V

    goto :goto_2

    .line 800
    :cond_6
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "recentlyadded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 802
    const-string v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/miui/player/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x93a80

    mul-int v7, v0, v1

    .line 803
    .local v7, X:I
    const-string v0, " AND date_added>"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    int-to-long v2, v7

    sub-long/2addr v0, v2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 805
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v10

    .line 820
    goto :goto_2

    .line 821
    .end local v7           #X:I
    :cond_7
    const-string v0, "play_order"

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 822
    const-string v0, "external"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_2

    .line 827
    :cond_8
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 831
    :cond_9
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_a
    const-string v0, " AND is_music=1"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_2
.end method

.method public getTrackListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/database/Cursor;Z)V
    .locals 10
    .parameter "newCursor"
    .parameter "isLimited"

    .prologue
    const-string v9, "com.miui.player.metachanged"

    .line 430
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-nez v6, :cond_0

    .line 490
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v6, p1}, Lcom/miui/player/model/TrackBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 435
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v6, :cond_1

    .line 436
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 437
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->closeContextMenu()V

    .line 438
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 442
    :cond_1
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 443
    iget v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mActiveTabId:I

    invoke-static {p0, v6}, Lcom/miui/player/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mUseLastListPos:Z

    .line 444
    invoke-direct {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getHeaderName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 447
    sget v6, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    if-ltz v6, :cond_2

    iget-boolean v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mUseLastListPos:Z

    if-eqz v6, :cond_2

    .line 448
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 451
    .local v5, lv:Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 452
    sget v6, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    sget v7, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 453
    if-nez p2, :cond_2

    .line 454
    const/4 v6, -0x1

    sput v6, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    .line 462
    .end local v5           #lv:Landroid/widget/ListView;
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .local v2, f:Landroid/content/IntentFilter;
    const-string v6, "com.miui.player.metachanged"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v6, "com.miui.player.queuechanged"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v6, "nowplaying"

    iget-object v7, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 467
    :try_start_0
    sget-object v6, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 468
    .local v1, cur:I
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->setSelection(I)V

    .line 469
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v6, v7}, Lcom/miui/player/ui/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 470
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.miui.player.metachanged"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 471
    .end local v1           #cur:I
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 474
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "artist"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 476
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "artist_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 477
    .local v4, keyidx:I
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 478
    :goto_1
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_4

    .line 479
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, artist:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 481
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/TrackBrowserActivity;->setSelection(I)V

    .line 487
    .end local v0           #artist:Ljava/lang/String;
    .end local v4           #keyidx:I
    :cond_4
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v6, v7}, Lcom/miui/player/ui/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 488
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.miui.player.metachanged"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 484
    .restart local v0       #artist:Ljava/lang/String;
    .restart local v4       #keyidx:I
    :cond_5
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method public isTrackCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 861
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 720
    sparse-switch p1, :sswitch_data_0

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 722
    :sswitch_0
    if-nez p2, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 725
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v3}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/player/ui/TrackBrowserActivity;->getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 730
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 731
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 732
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 733
    new-array v0, v5, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSelectedId:J

    aput-wide v4, v0, v3

    .line 736
    .local v0, list:[J
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p0, v0, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 743
    .end local v0           #list:[J
    .end local v2           #uri:Landroid/net/Uri;
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 744
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 745
    .restart local v2       #uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 746
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 747
    .restart local v0       #list:[J
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 748
    .local v1, plid:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 720
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-virtual {v0, v1, p1}, Lcom/miui/player/model/TrackBrowserHelper;->onContextItemSelected(Lcom/miui/player/IMediaPlaybackService;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, "artist"

    const-string v8, "album"

    .line 121
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setFormat(I)V

    .line 123
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 124
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 126
    const-string v3, "withtabs"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {p0, v6}, Lcom/miui/player/ui/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 130
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 131
    if-eqz p1, :cond_5

    .line 132
    const-string v3, "selectedtrack"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSelectedId:J

    .line 133
    const-string v3, "album"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 134
    const-string v3, "artist"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 135
    const-string v3, "playlist"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 136
    const-string v3, "genre"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 137
    const-string v3, "editmode"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mEditMode:Z

    .line 138
    const-string v3, "albumname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    .line 139
    const-string v3, "artistname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    .line 140
    const-string v3, "active_tab"

    const v4, 0x7f0b0028

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mActiveTabId:I

    .line 141
    const-string v3, "active_tab_2"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mActiveTabId2:I

    .line 156
    :goto_0
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    iput-boolean v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mEditMode:Z

    .line 160
    :cond_1
    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v7

    const-string v4, "title"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "title_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "album"

    aput-object v8, v3, v4

    const/4 v4, 0x5

    const-string v5, "artist"

    aput-object v9, v3, v4

    const/4 v4, 0x6

    const-string v5, "artist_id"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "play_order"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "audio_id"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "is_music"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 169
    const v3, 0x7f030010

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->setContentView(I)V

    .line 170
    iget v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mActiveTabId:I

    invoke-static {p0, v3}, Lcom/miui/player/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mUseLastListPos:Z

    .line 171
    iget v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mActiveTabId2:I

    invoke-static {p0, v3}, Lcom/miui/player/MusicUtils;->updateButtonBar2(Landroid/app/Activity;I)Z

    .line 173
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 174
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 175
    iget-boolean v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_6

    .line 176
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v3, Lcom/miui/player/ui/TouchInterceptor;

    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/TouchInterceptor;->setDropListener(Lcom/miui/player/ui/TouchInterceptor$DropListener;)V

    .line 177
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v3, Lcom/miui/player/ui/TouchInterceptor;

    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/TouchInterceptor;->setRemoveListener(Lcom/miui/player/ui/TouchInterceptor$RemoveListener;)V

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/model/TrackBrowserAdapter;

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 183
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v3, p0}, Lcom/miui/player/model/TrackBrowserAdapter;->setBrowserSource(Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;)V

    .line 185
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    :cond_2
    invoke-static {p0, p0}, Lcom/miui/player/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 189
    new-instance v3, Lcom/miui/player/model/TrackBrowserHelper;

    invoke-direct {v3, p0}, Lcom/miui/player/model/TrackBrowserHelper;-><init>(Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;)V

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    .line 192
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    new-instance v4, Lcom/miui/player/ui/TrackBrowserActivity$1;

    invoke-direct {v4, p0}, Lcom/miui/player/ui/TrackBrowserActivity$1;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 199
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 200
    :cond_3
    const v3, 0x7f0b003b

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    .local v2, trackTab:Landroid/widget/TextView;
    const v3, 0x7f0b003a

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    .local v1, otherTab:Landroid/widget/TextView;
    new-instance v3, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 205
    const v3, 0x7f07006e

    invoke-static {p0, v2, v3, v6, v6}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/widget/TextView;IZZ)V

    .line 207
    const v3, 0x7f070070

    invoke-static {p0, v1, v3, v7, v7}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/widget/TextView;IZZ)V

    .line 215
    .end local v1           #otherTab:Landroid/widget/TextView;
    .end local v2           #trackTab:Landroid/widget/TextView;
    :cond_4
    :goto_2
    return-void

    .line 143
    :cond_5
    const-string v3, "album"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 146
    const-string v3, "artist"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 147
    const-string v3, "playlist"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 148
    const-string v3, "genre"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 149
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.music.EDIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mEditMode:Z

    .line 150
    const-string v3, "albumname"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    .line 151
    const-string v3, "artistname"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    .line 152
    const-string v3, "active_tab"

    const v4, 0x7f0b0028

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mActiveTabId:I

    .line 153
    const-string v3, "active_tab_2"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mActiveTabId2:I

    goto/16 :goto_0

    .line 179
    :cond_6
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto/16 :goto_1

    .line 209
    .restart local v1       #otherTab:Landroid/widget/TextView;
    .restart local v2       #trackTab:Landroid/widget/TextView;
    :cond_7
    const v3, 0x7f070071

    invoke-static {p0, v2, v3, v6, v6}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/widget/TextView;IZZ)V

    .line 210
    const v3, 0x7f07006f

    invoke-static {p0, v1, v3, v7, v7}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/widget/TextView;IZZ)V

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/player/model/TrackBrowserHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 610
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 611
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 644
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 645
    const/16 v0, 0x11

    const v1, 0x7f07000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 647
    :cond_0
    const/16 v0, 0x8

    const v1, 0x7f070006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 650
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 651
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 652
    const/16 v0, 0x10

    const v1, 0x7f07003e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 654
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    const/16 v0, 0x12

    const v1, 0x7f07003f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 660
    :cond_1
    const/16 v0, 0xd

    const v1, 0x7f070054

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 307
    .local v2, lv:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mUseLastListPos:Z

    if-eqz v3, :cond_0

    .line 308
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    .line 309
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, cv:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosFine:I

    .line 314
    .end local v1           #cv:Landroid/view/View;
    :cond_0
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 316
    :try_start_0
    const-string v3, "nowplaying"

    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    iget-boolean v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v3}, Lcom/miui/player/model/TrackBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 329
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 330
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 336
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/miui/player/ui/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    iput-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 338
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 339
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 340
    return-void

    .line 319
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 924
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 926
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.music.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v1, "active_tab_2"

    const v2, 0x7f0b002b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 930
    const-string v1, "withtabs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 931
    const-string v1, "withtabs_2"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 932
    invoke-static {p0, v0, v3}, Lcom/miui/player/MusicUtils;->transitWithoutAnim(Landroid/app/Activity;Landroid/content/Intent;Z)V

    .line 937
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-virtual {v0, v1, p3}, Lcom/miui/player/model/TrackBrowserHelper;->playTrackInPosition(Lcom/miui/player/IMediaPlaybackService;I)V

    .line 624
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    .line 675
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 715
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 677
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 678
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    move v0, v9

    .line 679
    goto :goto_1

    .line 683
    :pswitch_2
    invoke-static {}, Lcom/miui/player/MusicUtils;->togglePartyShuffle()V

    goto :goto_0

    .line 688
    :pswitch_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "is_music=1"

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 693
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 694
    invoke-static {p0, v6}, Lcom/miui/player/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 695
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v9

    .line 697
    goto :goto_1

    .line 700
    .end local v6           #cursor:Landroid/database/Cursor;
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 701
    .local v7, intent:Landroid/content/Intent;
    const-class v0, Lcom/miui/player/ui/CreatePlaylist;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 702
    const/16 v0, 0x10

    invoke-virtual {p0, v7, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v9

    .line 703
    goto :goto_1

    .line 707
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_5
    invoke-static {}, Lcom/miui/player/MusicUtils;->clearQueue()V

    move v0, v9

    .line 708
    goto :goto_1

    .line 710
    :pswitch_6
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 711
    .local v8, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/miui/player/ui/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v9

    .line 712
    goto :goto_1

    .line 675
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->enableUpdate(Z)V

    .line 371
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 372
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 667
    invoke-static {p1}, Lcom/miui/player/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 668
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 359
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 362
    :cond_0
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 363
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 364
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->enableUpdate(Z)V

    .line 365
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 300
    .local v0, a:Lcom/miui/player/model/TrackBrowserAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapterSent:Z

    .line 301
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 407
    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 408
    const-string v0, "artist"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v0, "album"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "genre"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    const-string v0, "active_tab"

    iget v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mActiveTabId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    const-string v0, "active_tab_2"

    iget v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mActiveTabId2:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const-string v0, "albumname"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    const-string v0, "artistname"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 253
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v11, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v0, "file"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v11}, Lcom/miui/player/ui/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-nez v0, :cond_2

    .line 261
    iget-boolean v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f03000e

    move v3, v0

    .line 263
    .local v3, itemLayoutId:I
    :goto_0
    const-string v0, "nowplaying"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 264
    .local v7, isNowPlaying:Z
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "recentlyadded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "xshare_song_playlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v12

    .line 269
    .local v8, disableNowPlayingIndicator:Z
    :goto_1
    new-instance v0, Lcom/miui/player/model/TrackBrowserAdapter;

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    iget-object v9, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/miui/player/model/TrackBrowserAdapter;-><init>(Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;Lcom/miui/player/model/TrackBrowserHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 273
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v12}, Lcom/miui/player/ui/TrackBrowserActivity;->getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 290
    .end local v3           #itemLayoutId:I
    .end local v7           #isNowPlaying:Z
    .end local v8           #disableNowPlayingIndicator:Z
    :goto_2
    return-void

    .line 261
    :cond_0
    const v0, 0x7f030015

    move v3, v0

    goto :goto_0

    .restart local v3       #itemLayoutId:I
    .restart local v7       #isNowPlaying:Z
    :cond_1
    move v8, v6

    .line 264
    goto :goto_1

    .line 276
    .end local v3           #itemLayoutId:I
    .end local v7           #isNowPlaying:Z
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 283
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v6}, Lcom/miui/player/ui/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    goto :goto_2

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v12}, Lcom/miui/player/ui/TrackBrowserActivity;->getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->finish()V

    .line 295
    return-void
.end method

.method public setTrackCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 856
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 857
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 885
    return-void
.end method
