.class public Lcom/miui/player/ui/ArtistAlbumBrowserActivity;
.super Landroid/app/ListActivity;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    }
.end annotation


# static fields
.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

.field private mAdapterSent:Z

.field private mArtistCursor:Landroid/database/Cursor;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

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

    .line 82
    sput v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 84
    sput v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 196
    new-instance v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$1;-><init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;-><init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$3;-><init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 476
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filter"

    .prologue
    const/16 v3, 0x25

    const/4 v1, 0x0

    const-string v7, "artist_key"

    .line 440
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "artist != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/4 v6, 0x0

    .line 445
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 446
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 447
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 448
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 449
    .local v8, col:Ljava/text/Collator;
    invoke-virtual {v8, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 450
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v11

    if-ge v9, v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v11, v9

    invoke-static {v2}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 450
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 453
    :cond_0
    const/4 v9, 0x0

    :goto_1
    array-length v0, v11

    if-ge v9, v0, :cond_1

    .line 454
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v0, "artist_key LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 459
    .end local v8           #col:Ljava/text/Collator;
    .end local v9           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, whereclause:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v2, "artist"

    aput-object v2, v4, v0

    const/4 v0, 0x2

    const-string v2, "number_of_albums"

    aput-object v2, v4, v0

    const/4 v0, 0x3

    const-string v2, "number_of_tracks"

    aput-object v2, v4, v0

    .line 465
    .local v4, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 466
    .local v10, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 467
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "artist_key"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :goto_2
    return-object v10

    .line 470
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "artist_key"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_2
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 229
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v2, :cond_0

    .line 254
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 234
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 235
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 236
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->closeContextMenu()V

    .line 237
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 242
    :cond_1
    sget v2, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v2, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 244
    .local v1, lv:Landroid/widget/ListView;
    sget v2, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    sget v3, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 245
    const/4 v2, -0x1

    sput v2, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 248
    .end local v1           #lv:Landroid/widget/ListView;
    :cond_2
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 249
    const v2, 0x7f0b0029

    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 251
    const v2, 0x7f070063

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, header:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

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

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 411
    :sswitch_0
    if-nez p2, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v2}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

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
    const/4 v0, 0x0

    .line 423
    .local v0, list:[J
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 424
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 430
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 426
    :cond_3
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_1

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

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 404
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :goto_0
    return v7

    .line 348
    :pswitch_1
    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v7

    move-object v4, v7

    .line 352
    .local v4, list:[J
    :goto_1
    invoke-static {p0, v4, v9}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 353
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    move v7, v11

    .line 354
    goto :goto_0

    .line 348
    .end local v4           #list:[J
    :cond_0
    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v7

    move-object v4, v7

    goto :goto_1

    .line 358
    :pswitch_2
    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v7

    move-object v4, v7

    .line 361
    .restart local v4       #list:[J
    :goto_2
    invoke-static {p0, v4}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    move v7, v11

    .line 362
    goto :goto_0

    .line 358
    .end local v4           #list:[J
    :cond_1
    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v7

    move-object v4, v7

    goto :goto_2

    .line 366
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v3, intent:Landroid/content/Intent;
    const-class v7, Lcom/miui/player/ui/CreatePlaylist;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 368
    const/4 v7, 0x4

    invoke-virtual {p0, v3, v7}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v7, v11

    .line 369
    goto :goto_0

    .line 373
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_4
    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v7

    move-object v4, v7

    .line 376
    .restart local v4       #list:[J
    :goto_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "playlist"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 377
    .local v5, playlist:J
    invoke-static {p0, v4, v5, v6}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    move v7, v11

    .line 378
    goto :goto_0

    .line 373
    .end local v4           #list:[J
    .end local v5           #playlist:J
    :cond_2
    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v7

    move-object v4, v7

    goto :goto_3

    .line 384
    :pswitch_5
    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 385
    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v4

    .line 386
    .restart local v4       #list:[J
    const v7, 0x7f07000b

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, f:Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, desc:Ljava/lang/String;
    :goto_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, b:Landroid/os/Bundle;
    const-string v7, "description"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v7, "items"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 396
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 397
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v7, Lcom/miui/player/ui/DeleteItems;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 398
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 399
    const/4 v7, -0x1

    invoke-virtual {p0, v3, v7}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v7, v11

    .line 400
    goto/16 :goto_0

    .line 389
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #list:[J
    :cond_3
    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v4

    .line 390
    .restart local v4       #list:[J
    const v7, 0x7f07000c

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    .restart local v2       #f:Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_4

    .line 345
    nop

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
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 91
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 92
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 93
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 96
    const-string v0, "selectedalbumname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 97
    const-string v0, "selectedartist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 98
    const-string v0, "selectedartistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-static {p0, p0}, Lcom/miui/player/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 102
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setContentView(I)V

    .line 110
    const v0, 0x7f0b0029

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 111
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 112
    .local v9, lv:Landroid/widget/ListView;
    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 113
    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f030005

    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v3, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;-><init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;Landroid/content/Context;Lcom/miui/player/ui/ArtistAlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 122
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 135
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->setActivity(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V

    .line 126
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 128
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v5, 0x0

    .line 327
    const/4 v3, 0x5

    const v4, 0x7f070031

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 328
    const/4 v3, 0x1

    const v4, 0x7f070032

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 329
    .local v2, sub:Landroid/view/SubMenu;
    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 330
    const/16 v3, 0xa

    const v4, 0x7f070008

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 332
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 333
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 335
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 337
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 340
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/miui/player/helper/MediaFile;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 341
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 283
    const/16 v0, 0x8

    const v1, 0x7f070006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 286
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 287
    const/16 v0, 0xd

    const v1, 0x7f070054

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 158
    .local v2, lv:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, cv:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 166
    .end local v1           #cv:Landroid/view/View;
    :cond_0
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 167
    iget-boolean v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    if-nez v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v3}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 169
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iput-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 178
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    invoke-virtual {p0, v4}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 181
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 258
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.miui.music.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 262
    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 264
    const-string v4, "artist"

    iget-object v5, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 267
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    if-eqz v4, :cond_0

    .line 268
    move-object v0, v3

    check-cast v0, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    move-object v1, v0

    .line 269
    .local v1, holder:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    const-string v4, "albumname"

    iget-object v5, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->albumTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v4, "artistname"

    iget-object v5, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->artistTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    .end local v1           #holder:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    :cond_0
    const-string v4, "withtabs"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const-string v4, "withtabs_2"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const-string v4, "active_tab_2"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    invoke-static {p0, v2, v7}, Lcom/miui/player/MusicUtils;->transitWithoutAnim(Landroid/app/Activity;Landroid/content/Intent;Z)V

    .line 278
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 322
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 302
    :pswitch_1
    invoke-static {}, Lcom/miui/player/MusicUtils;->togglePartyShuffle()V

    goto :goto_0

    .line 306
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

    .line 311
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 312
    invoke-static {p0, v6}, Lcom/miui/player/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 315
    goto :goto_1

    .line 317
    .end local v6           #cursor:Landroid/database/Cursor;
    :pswitch_3
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v7, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 319
    goto :goto_1

    .line 300
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 225
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 293
    invoke-static {p1}, Lcom/miui/player/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 294
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 192
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 193
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 194
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    .line 140
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 148
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "selectedalbumname"

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "selectedartist"

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "selectedartistname"

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 627
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->finish()V

    .line 632
    return-void
.end method
