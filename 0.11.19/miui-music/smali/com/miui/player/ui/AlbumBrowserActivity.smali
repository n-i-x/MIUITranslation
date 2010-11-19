.class public Lcom/miui/player/ui/AlbumBrowserActivity;
.super Landroid/app/Activity;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;,
        Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;,
        Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;,
        Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final COLUMNS_PER_ROW:I = 0x3

.field private static final R_ALBUM_GRID_ID:I = 0x7f0b0011

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mActiveTabId:I

.field private mActiveTabId2:I

.field private mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

.field private mAdapterSent:Z

.field private mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mArtistId:Ljava/lang/String;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field mIsUnknownAlbum:Z

.field mIsUnknownArtist:Z

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 107
    sput v0, Lcom/miui/player/ui/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 109
    sput v0, Lcom/miui/player/ui/AlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 253
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$1;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$2;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$3;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/AlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/player/ui/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/AlbumBrowserActivity;)Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/AlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/player/ui/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private batchDownloadAlbumart()V
    .locals 14

    .prologue
    .line 505
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "artist"

    aput-object v1, v2, v0

    .line 510
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "album != \'\'"

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 516
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 536
    :goto_0
    return-void

    .line 519
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v11, albumInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;>;"
    :cond_1
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 522
    .local v10, aid:I
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 524
    .local v13, songid:I
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, albumName:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 526
    .local v9, artistName:Ljava/lang/String;
    const-string v0, "album"

    invoke-static {v8, v9, v0}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 530
    new-instance v3, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    int-to-long v4, v10

    int-to-long v6, v13

    invoke-direct/range {v3 .. v9}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v3, albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 534
    .end local v3           #albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    .end local v8           #albumName:Ljava/lang/String;
    .end local v9           #artistName:Ljava/lang/String;
    .end local v10           #aid:I
    .end local v13           #songid:I
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-virtual {v0, v11}, Lcom/miui/player/helper/AlbumArtTaskWrap;->execute(Ljava/util/ArrayList;)V

    .line 535
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 539
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const/4 v6, 0x0

    .line 544
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 545
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 546
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 547
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 548
    .local v8, col:Ljava/text/Collator;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 549
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v11

    if-ge v9, v0, :cond_0

    .line 550
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

    aput-object v0, v6, v9

    .line 549
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 552
    :cond_0
    const/4 v9, 0x0

    :goto_1
    array-length v0, v11

    if-ge v9, v0, :cond_1

    .line 553
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v0, "artist_key||"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v0, "album_key LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 559
    .end local v8           #col:Ljava/text/Collator;
    .end local v9           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 561
    .local v5, whereclause:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "album"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "album_art"

    aput-object v1, v4, v0

    .line 565
    .local v4, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 566
    .local v10, ret:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 567
    if-eqz p1, :cond_2

    .line 568
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "external"

    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "album_key"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :goto_2
    return-object v10

    .line 572
    :cond_2
    const-string v0, "external"

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "album_key"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_2

    .line 577
    :cond_3
    if-eqz p1, :cond_4

    .line 578
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "album_key"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 581
    :cond_4
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "album_key"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_2
.end method

.method private getHeaderName()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 318
    const-string v0, ""

    .line 319
    .local v0, fancyName:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 321
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {p0, v0}, Lcom/miui/player/helper/MediaFile;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 328
    :cond_1
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_2
    return-object v0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 286
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 291
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 292
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 293
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->closeContextMenu()V

    .line 294
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 299
    :cond_1
    sget v1, Lcom/miui/player/ui/AlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v1, :cond_3

    .line 300
    const v1, 0x7f0b0011

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 301
    .local v0, gv:Landroid/widget/GridView;
    sget v1, Lcom/miui/player/ui/AlbumBrowserActivity;->mLastListPosCourse:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 303
    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    .line 304
    sget v1, Lcom/miui/player/ui/AlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/GridView;->scrollTo(II)V

    .line 307
    :cond_2
    sput v3, Lcom/miui/player/ui/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 310
    .end local v0           #gv:Landroid/widget/GridView;
    :cond_3
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 311
    iget v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mActiveTabId:I

    invoke-static {p0, v1}, Lcom/miui/player/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 312
    invoke-static {p0, v3}, Lcom/miui/player/MusicUtils;->updateButtonBar2(Landroid/app/Activity;I)Z

    .line 314
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getHeaderName()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v2}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getCount()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 409
    sparse-switch p1, :sswitch_data_0

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 411
    :sswitch_0
    if-nez p2, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v2}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/miui/player/ui/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 419
    :sswitch_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 420
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 421
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 422
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 424
    .local v0, list:[J
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 409
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 362
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 404
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :goto_0
    return v7

    .line 365
    :pswitch_1
    iget-object v7, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v4

    .line 366
    .local v4, list:[J
    invoke-static {p0, v4, v9}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 367
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    move v7, v11

    .line 368
    goto :goto_0

    .line 372
    .end local v4           #list:[J
    :pswitch_2
    iget-object v7, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v4

    .line 373
    .restart local v4       #list:[J
    invoke-static {p0, v4}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    move v7, v11

    .line 374
    goto :goto_0

    .line 378
    .end local v4           #list:[J
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 379
    .local v3, intent:Landroid/content/Intent;
    const-class v7, Lcom/miui/player/ui/CreatePlaylist;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 380
    const/4 v7, 0x4

    invoke-virtual {p0, v3, v7}, Lcom/miui/player/ui/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v7, v11

    .line 381
    goto :goto_0

    .line 385
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_4
    iget-object v7, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v4

    .line 386
    .restart local v4       #list:[J
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "playlist"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 387
    .local v5, playlist:J
    invoke-static {p0, v4, v5, v6}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    move v7, v11

    .line 388
    goto :goto_0

    .line 391
    .end local v4           #list:[J
    .end local v5           #playlist:J
    :pswitch_5
    iget-object v7, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v4

    .line 392
    .restart local v4       #list:[J
    const v7, 0x7f07000c

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, f:Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, desc:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    .local v0, b:Landroid/os/Bundle;
    const-string v7, "description"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v7, "items"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 397
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 398
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v7, Lcom/miui/player/ui/DeleteItems;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 399
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 400
    const/4 v7, -0x1

    invoke-virtual {p0, v3, v7}, Lcom/miui/player/ui/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v7, v11

    .line 401
    goto/16 :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v6, 0x7f0b002a

    const/4 v13, 0x0

    const/4 v2, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 117
    if-eqz p1, :cond_3

    .line 118
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 119
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 120
    const-string v0, "active_tab"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mActiveTabId:I

    .line 121
    const-string v0, "active_tab_2"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mActiveTabId2:I

    .line 128
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/Window;->setFormat(I)V

    .line 130
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 131
    invoke-virtual {p0, v12}, Lcom/miui/player/ui/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 132
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 133
    invoke-static {p0, p0}, Lcom/miui/player/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 135
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/miui/player/ui/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->setContentView(I)V

    .line 144
    iget v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mActiveTabId:I

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 145
    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->updateButtonBar2(Landroid/app/Activity;I)Z

    .line 146
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/GridView;

    .line 147
    .local v9, gv:Landroid/widget/GridView;
    invoke-virtual {v9, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 148
    invoke-virtual {v9, v12}, Landroid/widget/GridView;->setTextFilterEnabled(Z)V

    .line 149
    invoke-virtual {v9, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    .line 152
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_4

    .line 154
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030003

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v5, v11, [Ljava/lang/String;

    new-array v6, v11, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    .line 157
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v13}, Lcom/miui/player/ui/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v9, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 172
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 173
    .local v10, trackTab:Landroid/widget/TextView;
    const v0, 0x7f070071

    invoke-static {p0, v10, v0, v12, v11}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/widget/TextView;IZZ)V

    .line 174
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;

    invoke-direct {v0, p0, v13}, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;Lcom/miui/player/ui/AlbumBrowserActivity$1;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 177
    .local v7, albumTab:Landroid/widget/TextView;
    const v0, 0x7f07006f

    invoke-static {p0, v7, v0, v11, v12}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/widget/TextView;IZZ)V

    .line 180
    .end local v7           #albumTab:Landroid/widget/TextView;
    .end local v10           #trackTab:Landroid/widget/TextView;
    :cond_0
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, urlPattern:Ljava/lang/String;
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, unkownArtistName:Ljava/lang/String;
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, unknownAlbumName:Ljava/lang/String;
    new-instance v0, Lcom/miui/player/helper/AlbumArtTaskWrap;

    new-instance v2, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/helper/AlbumArtTaskWrap;-><init>(Landroid/content/Context;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    .line 186
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "download_album_auto"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->batchDownloadAlbumart()V

    .line 191
    :cond_2
    return-void

    .line 123
    .end local v3           #urlPattern:Ljava/lang/String;
    .end local v4           #unknownAlbumName:Ljava/lang/String;
    .end local v5           #unkownArtistName:Ljava/lang/String;
    .end local v8           #f:Landroid/content/IntentFilter;
    .end local v9           #gv:Landroid/widget/GridView;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "active_tab"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mActiveTabId:I

    .line 125
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "active_tab_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mActiveTabId2:I

    goto/16 :goto_0

    .line 159
    .restart local v8       #f:Landroid/content/IntentFilter;
    .restart local v9       #gv:Landroid/widget/GridView;
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->setActivity(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    .line 160
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 161
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v13}, Lcom/miui/player/ui/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "<unknown>"

    .line 336
    const/4 v3, 0x5

    const v4, 0x7f070031

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 337
    const v3, 0x7f070032

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 338
    .local v2, sub:Landroid/view/SubMenu;
    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 339
    const/16 v3, 0xa

    const v4, 0x7f070008

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 341
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 342
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 343
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 345
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "album"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 347
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 349
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v7

    :goto_0
    iput-boolean v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 351
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v3, v7

    :goto_1
    iput-boolean v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 353
    iget-boolean v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v3, :cond_4

    .line 354
    const v3, 0x7f07002d

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 358
    :goto_2
    return-void

    :cond_2
    move v3, v6

    .line 349
    goto :goto_0

    :cond_3
    move v3, v6

    .line 351
    goto :goto_1

    .line 356
    :cond_4
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 455
    const/16 v0, 0x8

    const v1, 0x7f070006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 459
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 460
    const/16 v0, 0xf

    const v1, 0x7f070073

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 461
    const/16 v0, 0xd

    const v1, 0x7f070054

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 214
    .local v2, gv:Landroid/widget/GridView;
    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/miui/player/ui/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 216
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 217
    .local v1, cv:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/miui/player/ui/AlbumBrowserActivity;->mLastListPosFine:I

    .line 221
    .end local v1           #cv:Landroid/view/View;
    :cond_0
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 222
    iget-boolean v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapterSent:Z

    if-nez v3, :cond_1

    .line 223
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v3}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 224
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 229
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v3}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->quit()V

    .line 233
    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    iput-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    .line 235
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-virtual {v3}, Lcom/miui/player/helper/AlbumArtTaskWrap;->batchCancel()V

    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, gv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.miui.music.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v4, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v4, "artist"

    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 440
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    if-eqz v4, :cond_0

    .line 441
    move-object v0, v3

    check-cast v0, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    move-object v1, v0

    .line 442
    .local v1, holder:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    const-string v4, "albumname"

    iget-object v5, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->albumTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v4, "artistname"

    iget-object v5, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->artistTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    .end local v1           #holder:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    :cond_0
    const-string v4, "withtabs_2"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    const-string v4, "active_tab_2"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 450
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 474
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 501
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 476
    :pswitch_1
    invoke-static {}, Lcom/miui/player/MusicUtils;->togglePartyShuffle()V

    move v0, v8

    .line 477
    goto :goto_0

    .line 479
    :pswitch_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

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

    .line 484
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 485
    invoke-static {p0, v6}, Lcom/miui/player/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 486
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 488
    goto :goto_0

    .line 491
    .end local v6           #cursor:Landroid/database/Cursor;
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->batchDownloadAlbumart()V

    move v0, v8

    .line 492
    goto :goto_0

    .line 495
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 496
    .local v7, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/miui/player/ui/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 497
    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 282
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 467
    invoke-static {p1}, Lcom/miui/player/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 468
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 249
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 250
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 251
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapterSent:Z

    .line 196
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 204
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "artist"

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "active_tab"

    iget v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mActiveTabId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v0, "active_tab_2"

    iget v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mActiveTabId2:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 845
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->finish()V

    .line 850
    return-void
.end method
