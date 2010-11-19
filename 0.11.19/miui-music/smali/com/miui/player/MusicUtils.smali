.class public Lcom/miui/player/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/MusicUtils$OnPauseResumeClickListener;,
        Lcom/miui/player/MusicUtils$OnNextClickListener;,
        Lcom/miui/player/MusicUtils$OnPrevClickListener;,
        Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;,
        Lcom/miui/player/MusicUtils$OnButtonBarClickListener;,
        Lcom/miui/player/MusicUtils$ServiceBinder;,
        Lcom/miui/player/MusicUtils$Defs;
    }
.end annotation


# static fields
.field private static final PREFERENCE_PREFIX:Ljava/lang/String; = "com.miui.player"

.field private static final TAG:Ljava/lang/String; = "MusicUtils"

.field private static mLastSdStatus:Ljava/lang/String;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/miui/player/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEmptyList:[J

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static sNowPlayingTabIconSelectable:Landroid/graphics/drawable/Drawable;

.field private static sNowPlayingTabIconUnseleable:Landroid/graphics/drawable/Drawable;

.field public static sService:Lcom/miui/player/IMediaPlaybackService;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    sput-object v3, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 310
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/miui/player/MusicUtils;->sEmptyList:[J

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 793
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/miui/player/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 795
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/miui/player/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1128
    sput-object v3, Lcom/miui/player/MusicUtils;->sNowPlayingTabIconUnseleable:Landroid/graphics/drawable/Drawable;

    .line 1130
    sput-object v3, Lcom/miui/player/MusicUtils;->sNowPlayingTabIconSelectable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/miui/player/MusicUtils;->setCurrentTab(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public static activateTab(Landroid/app/Activity;II)V
    .locals 1
    .parameter "a"
    .parameter "id"
    .parameter "current"

    .prologue
    .line 1221
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/MusicUtils;->activateTab(Landroid/app/Activity;IIZ)V

    .line 1222
    return-void
.end method

.method public static activateTab(Landroid/app/Activity;IIZ)V
    .locals 7
    .parameter "a"
    .parameter "id"
    .parameter "current"
    .parameter "hasAnimation"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v6, "vnd.android.cursor.dir/track"

    const-string v4, "withtabs"

    const-string v2, "com.miui.music.PICK"

    .line 1225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1227
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1272
    :goto_0
    :pswitch_0
    return-void

    .line 1230
    :pswitch_1
    const-string v1, "com.miui.music.NOW_PLAYING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    const-string v1, "withtabs_2"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1262
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1264
    invoke-static {p1}, Lcom/miui/player/MusicUtils;->getLevelById(I)I

    move-result v1

    invoke-static {p2}, Lcom/miui/player/MusicUtils;->getLevelById(I)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 1265
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1267
    if-nez p3, :cond_0

    .line 1271
    :cond_0
    invoke-static {p0, v5, v5}, Lcom/miui/player/helper/Global;->overridePendingTransition(Landroid/app/Activity;II)Z

    goto :goto_0

    .line 1234
    :pswitch_2
    const-string v1, "com.miui.music.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/artistalbum"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    const-string v1, "withtabs"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1239
    :pswitch_3
    const-string v1, "com.miui.music.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1241
    const-string v1, "withtabs"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1244
    :pswitch_4
    const-string v1, "com.miui.music.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    const-string v1, "withtabs"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1250
    :pswitch_5
    const-string v1, "com.miui.music.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    const-string v1, "playlist"

    invoke-static {}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    const-string v1, "withtabs"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1254
    const-string v1, "withtabs_2"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1255
    const-string v1, "active_tab_2"

    const v2, 0x7f0b0031

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1227
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0027
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[J)V
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 601
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 611
    :goto_0
    return-void

    .line 605
    :cond_0
    :try_start_0
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/miui/player/IMediaPlaybackService;->enqueue([JI)V

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    array-length v3, p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    .end local v0           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;JJ)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "playlistid"

    .prologue
    .line 614
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {p0, v0, p3, p4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    .line 617
    return-void
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJ)V
    .locals 10
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"

    .prologue
    .line 620
    if-nez p1, :cond_0

    .line 623
    const-string p0, "MusicBase"

    .end local p0
    const-string p1, "ListSelection null"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local p2
    :goto_0
    return-void

    .line 625
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    array-length v6, p1

    .line 626
    .local v6, size:I
    new-array v7, v6, [Landroid/content/ContentValues;

    .line 627
    .local v7, values:[Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 630
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v1

    .line 633
    .local v2, cols:[Ljava/lang/String;
    const-string v1, "external"

    invoke-static {v1, p2, p3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 634
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 635
    .local v3, cur:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 636
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    .end local v2           #cols:[Ljava/lang/String;
    move-result v2

    .line 637
    .local v2, base:I
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 639
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 640
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v7, v3

    .line 641
    aget-object v4, v7, v3

    const-string v5, "play_order"

    add-int v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    aget-object v4, v7, v3

    const-string v5, "audio_id"

    aget-wide v8, p1, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 645
    :cond_1
    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 647
    invoke-static {p2, p3}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(J)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_2

    const p1, 0x7f080005

    .line 649
    .local p1, msgId:I
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .end local p2
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #resolver:Landroid/content/ContentResolver;
    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    aput-object v1, p3, v0

    invoke-virtual {p2, p1, v6, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 652
    .local p1, message:Ljava/lang/String;
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 647
    .end local p1           #message:Ljava/lang/String;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local p0
    .restart local p2
    :cond_2
    const p1, 0x7f080004

    goto :goto_2
.end method

.method public static bindToService(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    const-class v3, Lcom/miui/player/MediaPlaybackService;

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/MediaPlaybackService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 184
    new-instance v0, Lcom/miui/player/MusicUtils$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/miui/player/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 185
    .local v0, sb:Lcom/miui/player/MusicUtils$ServiceBinder;
    sget-object v1, Lcom/miui/player/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v4, 0x0

    .line 469
    const-string v1, "external"

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 470
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method public static clearQueue()V
    .locals 3

    .prologue
    .line 880
    :try_start_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/miui/player/IMediaPlaybackService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter "clear"

    .prologue
    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 479
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 480
    .local v0, id:I
    if-ltz v0, :cond_1

    .line 481
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 483
    if-eqz p2, :cond_0

    .line 484
    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    .line 493
    .end local v0           #id:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v2

    .line 487
    .restart local v0       #id:I
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 488
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static deleteTracks(Landroid/content/Context;[J)V
    .locals 9
    .parameter "context"
    .parameter "list"

    .prologue
    .line 516
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "album"

    aput-object v1, v2, v0

    .line 521
    .local v2, cols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 524
    aget-wide v3, p1, v0

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 525
    array-length v1, p1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 526
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_1
    const-string v0, ")"

    .end local v0           #i:I
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 533
    .local v4, c:Landroid/database/Cursor;
    const-string v0, "artist"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 534
    .local v3, artistCol:I
    const-string v0, "title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 535
    .local v7, titleCol:I
    const-string v0, "album"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 537
    .local v1, albumCol:I
    if-eqz v4, :cond_6

    .line 542
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 543
    .end local v2           #cols:[Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 545
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 546
    .local v5, title:Ljava/lang/String;
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, artist:Ljava/lang/String;
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, album:Ljava/lang/String;
    invoke-static {v5, v0, v2}, Lcom/miui/player/helper/MusicMetaManager;->deleteRelateFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #album:Ljava/lang/String;
    move-result-wide v5

    .line 553
    .local v5, id:J
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_4

    .line 554
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0, v5, v6}, Lcom/miui/player/IMediaPlaybackService;->removeTrack(J)I

    .line 559
    :goto_2
    invoke-static {p0, v5, v6}, Lcom/miui/player/helper/FavoritePlaylist;->remove(Landroid/content/Context;J)V

    .line 561
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 563
    .end local v2           #artist:Ljava/lang/String;
    .end local v5           #id:J
    :catch_0
    move-exception v0

    .line 567
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 568
    .local v0, res:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .end local v1           #albumCol:I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 571
    .end local v3           #artistCol:I
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 572
    .end local v0           #res:Landroid/content/ContentResolver;
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 573
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, name:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, f:Ljava/io/File;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .end local v0           #f:Ljava/io/File;
    if-nez v0, :cond_3

    .line 579
    const-string v0, "MusicUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 583
    :catch_1
    move-exception v0

    .line 584
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 556
    .end local v0           #ex:Ljava/lang/SecurityException;
    .local v1, albumCol:I
    .restart local v2       #artist:Ljava/lang/String;
    .restart local v3       #artistCol:I
    .restart local v5       #id:J
    :cond_4
    long-to-int v0, v5

    :try_start_2
    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->notifyTrackRemoved(Landroid/content/Context;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 587
    .end local v1           #albumCol:I
    .end local v2           #artist:Ljava/lang/String;
    .end local v3           #artistCol:I
    .end local v5           #id:J
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    array-length v2, p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length p1, p1

    .end local v4           #c:Landroid/database/Cursor;
    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 593
    .local p1, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .end local p1           #message:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    const-string p1, "content://media"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 598
    return-void
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 12
    .parameter "a"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 720
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, status:Ljava/lang/String;
    const v4, 0x7f07002a

    .line 722
    .local v4, title:I
    const v2, 0x7f07002b

    .line 724
    .local v2, message:I
    const-string v7, "shared"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "unmounted"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 725
    :cond_0
    const v4, 0x7f070028

    .line 726
    const v2, 0x7f070029

    .line 744
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 745
    const v7, 0x7f0b0042

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 746
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 747
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 748
    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 749
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 751
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_2
    const v7, 0x7f0b0041

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 752
    if-eqz v6, :cond_3

    .line 753
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 755
    :cond_3
    const v7, 0x102000a

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 756
    if-eqz v6, :cond_4

    .line 757
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 759
    :cond_4
    const v7, 0x7f0b0026

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 760
    if-eqz v6, :cond_5

    .line 761
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 764
    :cond_5
    return-void

    .line 727
    .end local v6           #v:Landroid/view/View;
    :cond_6
    const-string v7, "removed"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 728
    const v4, 0x7f070026

    .line 729
    const v2, 0x7f070027

    goto :goto_0

    .line 730
    :cond_7
    const-string v7, "mounted"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 735
    const-string v7, ""

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 736
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 737
    .local v1, intent:Landroid/content/Intent;
    const-class v7, Lcom/miui/player/ui/ScanningProgress;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 738
    const/16 v7, 0xb

    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 739
    .end local v1           #intent:Landroid/content/Intent;
    :cond_8
    sget-object v7, Lcom/miui/player/MusicUtils;->mLastSdStatus:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 740
    sput-object v3, Lcom/miui/player/MusicUtils;->mLastSdStatus:Ljava/lang/String;

    .line 741
    const-string v7, "MusicUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sd card: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static doPauseResume(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1105
    :try_start_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1106
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->pause()V

    .line 1112
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 1116
    :cond_0
    :goto_1
    return-void

    .line 1109
    .restart local p0
    :cond_1
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1114
    .end local p0
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getAllSongs(Landroid/content/Context;)[J
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 399
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "is_music=1"

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 403
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 415
    :cond_0
    if-eqz v6, :cond_1

    .line 416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v4

    :goto_0
    return-object v0

    .line 406
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 407
    .local v8, len:I
    new-array v9, v8, [J

    .line 408
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 410
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 415
    :cond_3
    if-eqz v6, :cond_4

    .line 416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    goto :goto_0

    .line 415
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 902
    const-string v1, "com.miui.player_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 904
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static getContentURIForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 782
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAlbumId()J
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getAlbumId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 234
    :goto_0
    return-wide v0

    .line 231
    :catch_0
    move-exception v0

    .line 234
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()J
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getArtistId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 244
    :goto_0
    return-wide v0

    .line 241
    :catch_0
    move-exception v0

    .line 244
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()J
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 254
    :goto_0
    return-wide v0

    .line 251
    :catch_0
    move-exception v0

    .line 254
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentShuffleMode()I
    .locals 2

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, mode:I
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 261
    :try_start_0
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 262
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 888
    const-string v1, "com.miui.player"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 890
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getLevelById(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 1212
    const v0, 0x7f0b0027

    if-eq p0, v0, :cond_0

    const v0, 0x7f0b002d

    if-eq p0, v0, :cond_0

    const v0, 0x7f0b002b

    if-eq p0, v0, :cond_0

    const v0, 0x7f0b0031

    if-ne p0, v0, :cond_1

    .line 1214
    :cond_0
    const/4 v0, 0x1

    .line 1217
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;J)[J
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    .line 351
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 354
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 356
    .local v8, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 362
    :try_start_0
    invoke-static {v6}, Lcom/miui/player/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 366
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 369
    .end local v7           #list:[J
    :goto_0
    return-object v0

    .line 366
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 369
    :cond_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForArtist(Landroid/content/Context;J)[J
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    .line 333
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 336
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_key,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 342
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 343
    invoke-static {v6}, Lcom/miui/player/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 344
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 347
    .end local v7           #list:[J
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[J
    .locals 7
    .parameter "cursor"

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 314
    sget-object v5, Lcom/miui/player/MusicUtils;->sEmptyList:[J

    .line 329
    :goto_0
    return-object v5

    .line 316
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 317
    .local v3, len:I
    new-array v4, v3, [J

    .line 318
    .local v4, list:[J
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 319
    const/4 v0, -0x1

    .line 321
    .local v0, colidx:I
    :try_start_0
    const-string v5, "audio_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 325
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_1

    .line 326
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 327
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 322
    .end local v2           #i:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 323
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v2       #i:I
    :cond_1
    move-object v5, v4

    .line 329
    goto :goto_0
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 373
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v0

    .line 377
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 379
    .local v1, uri:Landroid/net/Uri;
    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 383
    invoke-static {v6}, Lcom/miui/player/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 384
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 388
    .end local v7           #list:[J
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    const/16 v2, 0x8

    .line 767
    const v1, 0x7f0b0042

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 768
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 771
    :cond_0
    const v1, 0x7f0b0041

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_1

    .line 773
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 775
    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_2

    .line 777
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 779
    :cond_2
    return-void
.end method

.method public static idForplaylist(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 497
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 503
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 504
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 505
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 506
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 509
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_1
    return v7
.end method

.method private static initializeNowPlayingTabIcon(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1133
    sget-object v3, Lcom/miui/player/MusicUtils;->sNowPlayingTabIconUnseleable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 1134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1135
    .local v2, rs:Landroid/content/res/Resources;
    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1136
    .local v1, dim:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1138
    .local v0, bounds:Landroid/graphics/Rect;
    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sput-object v3, Lcom/miui/player/MusicUtils;->sNowPlayingTabIconUnseleable:Landroid/graphics/drawable/Drawable;

    .line 1140
    sget-object v3, Lcom/miui/player/MusicUtils;->sNowPlayingTabIconUnseleable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1142
    const v3, 0x7f020032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sput-object v3, Lcom/miui/player/MusicUtils;->sNowPlayingTabIconSelectable:Landroid/graphics/drawable/Drawable;

    .line 1143
    sget-object v3, Lcom/miui/player/MusicUtils;->sNowPlayingTabIconSelectable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1145
    .end local v0           #bounds:Landroid/graphics/Rect;
    .end local v1           #dim:I
    .end local v2           #rs:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 687
    const/4 v7, 0x0

    .line 688
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 691
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 692
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 694
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 696
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 699
    :cond_1
    return v7
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 303
    :try_start_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 303
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 307
    goto :goto_0
.end method

.method public static makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p3, :cond_1

    .line 123
    if-ne p2, v4, :cond_0

    .line 124
    const/high16 v3, 0x7f07

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 126
    :cond_0
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 129
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 132
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const v3, 0x7f080002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 134
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 135
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    if-ne p2, v7, :cond_0

    .line 156
    const/high16 v3, 0x7f07

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 159
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_1

    .line 160
    const v3, 0x7f080002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 163
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 164
    const v3, 0x7f07005f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 168
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 169
    sget-object v3, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V
    .locals 11
    .parameter "context"
    .parameter "sub"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "name"

    .line 432
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v9

    const-string v1, "name"

    aput-object v5, v2, v10

    .line 435
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 436
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 437
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resolver = null"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    const-string v3, "name != \'\'"

    .line 440
    .local v3, whereclause:Ljava/lang/String;
    invoke-static {v3, v9}, Lcom/miui/player/helper/FavoritePlaylist;->filter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 441
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v8, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 443
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 444
    const/16 v1, 0xc

    const v4, 0x7f070033

    invoke-interface {p1, v10, v1, v9, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 445
    const/4 v1, 0x4

    const v4, 0x7f070034

    invoke-interface {p1, v10, v1, v9, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 446
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 448
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 449
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 450
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 451
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "playlist"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v7, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 456
    const/4 v1, 0x3

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v10, v1, v9, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 461
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    if-eqz v6, :cond_0

    .line 462
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "secs"

    .prologue
    .line 798
    const v0, 0x7f070001

    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"
    .parameter "resid"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 802
    cmp-long v2, p1, v7

    if-gez v2, :cond_0

    move v2, p3

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/miui/player/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 811
    sget-object v1, Lcom/miui/player/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 812
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 813
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 814
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 815
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 816
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 818
    sget-object v2, Lcom/miui/player/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 802
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const v2, 0x7f070003

    goto :goto_0
.end method

.method public static notifyTrackRemoved(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand.remove"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "remove"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1363
    return-void
.end method

.method public static pauseMediaPlay(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand.pause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1356
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 826
    invoke-static {p0, p1, v0, v0}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 827
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 830
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 831
    return-void
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    .line 839
    invoke-static {p1}, Lcom/miui/player/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 840
    .local v0, list:[J
    invoke-static {p0, v0, p2, p3}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 841
    return-void
.end method

.method public static playAll(Landroid/content/Context;[JI)V
    .locals 1
    .parameter "context"
    .parameter "list"
    .parameter "position"

    .prologue
    .line 834
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 835
    return-void
.end method

.method private static playAll(Landroid/content/Context;[JIZ)V
    .locals 10
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 844
    array-length v5, p1

    if-eqz v5, :cond_0

    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v5, :cond_1

    .line 845
    :cond_0
    const-string v5, "MusicUtils"

    const-string v6, "attempt to play empty song list"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const v5, 0x7f070036

    new-array v6, v9, [Ljava/lang/Object;

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, message:Ljava/lang/String;
    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 876
    .end local v3           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 852
    :cond_1
    if-eqz p3, :cond_2

    .line 853
    :try_start_0
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/miui/player/IMediaPlaybackService;->setShuffleMode(I)V

    .line 855
    :cond_2
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 856
    .local v0, curid:J
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    .line 857
    .local v2, curpos:I
    if-eq p2, v7, :cond_3

    if-ne v2, p2, :cond_3

    aget-wide v5, p1, p2

    cmp-long v5, v0, v5

    if-nez v5, :cond_3

    .line 861
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J

    move-result-object v4

    .line 862
    .local v4, playlist:[J
    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 865
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->play()V

    goto :goto_0

    .line 874
    .end local v0           #curid:J
    .end local v2           #curpos:I
    .end local v4           #playlist:[J
    :catch_0
    move-exception v5

    goto :goto_0

    .line 869
    .restart local v0       #curid:J
    .restart local v2       #curpos:I
    :cond_3
    if-gez p2, :cond_4

    .line 870
    const/4 p2, 0x0

    .line 872
    :cond_4
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz p3, :cond_5

    move v6, v7

    :goto_1
    invoke-interface {v5, p1, v6}, Lcom/miui/player/IMediaPlaybackService;->open([JI)V

    .line 873
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    move v6, p2

    .line 872
    goto :goto_1
.end method

.method public static playPlaylist(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 392
    invoke-static {p0, p1, p2}, Lcom/miui/player/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 393
    .local v0, list:[J
    if-eqz v0, :cond_0

    .line 394
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 396
    :cond_0
    return-void
.end method

.method public static processTabClick(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5
    .parameter "parent"
    .parameter "v"

    .prologue
    .line 1194
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1195
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1196
    .local v3, tag:Ljava/lang/Object;
    if-nez v3, :cond_0

    const/4 v4, -0x1

    move v1, v4

    .line 1198
    .end local v3           #tag:Ljava/lang/Object;
    .local v1, current:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1199
    .local v2, id:I
    if-ne v2, v1, :cond_1

    const v4, 0x7f0b0031

    if-eq v2, v4, :cond_1

    .line 1209
    :goto_1
    return-void

    .line 1196
    .end local v1           #current:I
    .end local v2           #id:I
    .restart local v3       #tag:Ljava/lang/Object;
    :cond_0
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v1, v4

    goto :goto_0

    .line 1203
    .restart local v1       #current:I
    .restart local v2       #id:I
    :cond_1
    invoke-static {v2}, Lcom/miui/player/MusicUtils;->getLevelById(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 1204
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcom/miui/player/MusicUtils;->setCurrentTab(Landroid/view/ViewGroup;I)V

    .line 1205
    const-string v4, "activetab"

    invoke-static {v0, v4, v2}, Lcom/miui/player/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1208
    :cond_2
    invoke-static {v0, v2, v1}, Lcom/miui/player/MusicUtils;->activateTab(Landroid/app/Activity;II)V

    goto :goto_1
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 683
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    const/4 v7, 0x0

    .line 667
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 668
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 676
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 671
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    if-lez p6, :cond_1

    .line 672
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 674
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 675
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 676
    goto :goto_0
.end method

.method public static refreshCommonBar(Landroid/app/Activity;)V
    .locals 6
    .parameter "a"

    .prologue
    .line 1162
    const v5, 0x7f0b002f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1163
    .local v4, pause:Landroid/widget/ImageView;
    const v5, 0x7f0b002d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1164
    .local v2, nowPlaying2:Landroid/widget/TextView;
    const v5, 0x7f0b0027

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1167
    .local v1, nowPlaying:Landroid/widget/TextView;
    :try_start_0
    invoke-static {v4}, Lcom/miui/player/MusicUtils;->setPauseImage(Landroid/widget/ImageView;)V

    .line 1169
    instance-of v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;

    if-nez v5, :cond_0

    .line 1170
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 1171
    .local v3, path:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    move v0, v5

    .line 1173
    .local v0, isPlaying:Z
    :goto_1
    invoke-static {v2, v0}, Lcom/miui/player/MusicUtils;->setNowplayingImage(Landroid/widget/TextView;Z)V

    .line 1174
    invoke-static {v1, v0}, Lcom/miui/player/MusicUtils;->setNowplayingImage(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    .end local v0           #isPlaying:Z
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 1170
    :cond_1
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 1171
    .restart local v3       #path:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 1176
    .end local v3           #path:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .parameter "context"
    .parameter "playlist"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 658
    const-string v1, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 660
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 662
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 14
    .parameter "v"
    .parameter "bm"

    .prologue
    .line 1276
    if-nez p1, :cond_0

    .line 1277
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1311
    .end local p1
    :goto_0
    return-void

    .line 1281
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 1282
    .local v9, vwidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1283
    .local v8, vheight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1284
    .local v2, bwidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1285
    .local v1, bheight:I
    int-to-float v0, v9

    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 1286
    .local v0, scalex:F
    int-to-float v3, v8

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1287
    .local v3, scaley:F
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .end local v0           #scalex:F
    const v3, 0x3fa66666

    mul-float v7, v0, v3

    .line 1289
    .local v7, scale:F
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1290
    .end local v3           #scaley:F
    .local v0, config:Landroid/graphics/Bitmap$Config;
    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1291
    .local v0, bg:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1292
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1293
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1294
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1295
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1296
    .local v5, greymatrix:Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1297
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1298
    .local v4, darkmatrix:Landroid/graphics/ColorMatrix;
    const v10, 0x3e99999a

    const v11, 0x3e99999a

    const v12, 0x3e99999a

    const/high16 v13, 0x3f80

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 1299
    invoke-virtual {v5, v4}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1300
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    .end local v4           #darkmatrix:Landroid/graphics/ColorMatrix;
    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1301
    .local v4, filter:Landroid/graphics/ColorFilter;
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1302
    new-instance v4, Landroid/graphics/Matrix;

    .end local v4           #filter:Landroid/graphics/ColorFilter;
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1303
    .local v4, matrix:Landroid/graphics/Matrix;
    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .end local v2           #bwidth:I
    int-to-float v2, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .end local v1           #bheight:I
    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1305
    const/high16 v1, 0x4120

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1306
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1307
    div-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1309
    invoke-virtual {v3, p1, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1310
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private static setCurrentTab(Landroid/view/ViewGroup;I)V
    .locals 2
    .parameter "parent"
    .parameter "selected"

    .prologue
    .line 1181
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1191
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 1185
    .restart local p0
    :cond_1
    instance-of v1, p0, Landroid/widget/TabWidget;

    if-eqz v1, :cond_2

    .line 1186
    check-cast p0, Landroid/widget/TabWidget;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    goto :goto_0

    .line 1188
    .restart local p0
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1189
    .local v0, v:Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method public static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 894
    const-string v2, "com.miui.player"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 896
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 897
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 898
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    return-void
.end method

.method private static setNowplayingImage(Landroid/widget/TextView;Z)V
    .locals 2
    .parameter "view"
    .parameter "isPlaying"

    .prologue
    const/4 v1, 0x0

    .line 1149
    if-eqz p0, :cond_0

    .line 1150
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->initializeNowPlayingTabIcon(Landroid/content/Context;)V

    .line 1151
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1152
    sget-object v0, Lcom/miui/player/MusicUtils;->sNowPlayingTabIconSelectable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    sget-object v0, Lcom/miui/player/MusicUtils;->sNowPlayingTabIconUnseleable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static setPartyShuffleMenuIcon(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const v3, 0x7f020019

    .line 283
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 284
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    .line 286
    .local v1, shuffle:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 287
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 288
    const v2, 0x7f070007

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 294
    .end local v1           #shuffle:I
    :cond_0
    :goto_0
    return-void

    .line 290
    .restart local v1       #shuffle:I
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 291
    const v2, 0x7f070006

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private static setPauseImage(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1119
    if-eqz p0, :cond_0

    .line 1120
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    const v0, 0x7f02004d

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    const v0, 0x7f020050

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 908
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 910
    .local v6, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 912
    .local v7, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 913
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v1, "is_alarm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .end local v0           #values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 927
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 928
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 931
    .local p1, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 933
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 934
    const-string p2, "ringtone"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, p2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 935
    const p2, 0x7f070030

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v2           #cols:[Ljava/lang/String;
    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 936
    .local p2, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    .end local p2           #message:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 940
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 943
    .end local v3           #where:Ljava/lang/String;
    .end local p1           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 916
    .restart local p0
    .local p1, id:J
    :catch_0
    move-exception p0

    .line 918
    .local p0, ex:Ljava/lang/UnsupportedOperationException;
    const-string p0, "MusicUtils"

    .end local p0           #ex:Ljava/lang/UnsupportedOperationException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t set ringtone flag for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #id:J
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 939
    .restart local v3       #where:Ljava/lang/String;
    .local p1, cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 940
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public static setSpinnerState(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x5

    .line 703
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 708
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 715
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_0
.end method

.method public static setTopTabStyle(Landroid/content/Context;Landroid/widget/TextView;IZZ)V
    .locals 10
    .parameter "context"
    .parameter "v"
    .parameter "textId"
    .parameter "isLeft"
    .parameter "on"

    .prologue
    .line 1395
    const/16 v4, 0x64

    .line 1396
    .local v4, WIDTH_SHORT_STR:I
    const/16 v3, 0x8c

    .line 1397
    .local v3, WIDTH_LONG_STR:I
    const/4 v2, 0x3

    .line 1399
    .local v2, THRESHOLD:I
    const/4 v1, -0x1

    .line 1400
    .local v1, ON_COLOR:I
    const v0, -0x777778

    .line 1402
    .local v0, OFF_COLOR:I
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1403
    if-eqz p4, :cond_0

    const/4 v9, -0x1

    move v6, v9

    .line 1404
    .local v6, color:I
    :goto_0
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1406
    const/4 v5, 0x0

    .line 1407
    .local v5, bgId:I
    if-eqz p3, :cond_2

    .line 1408
    if-eqz p4, :cond_1

    .line 1409
    const v5, 0x7f02003a

    .line 1420
    :goto_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1422
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .line 1423
    .local v7, length:I
    const/4 v9, 0x3

    if-le v7, v9, :cond_4

    const/16 v9, 0x8c

    move v8, v9

    .line 1424
    .local v8, width:I
    :goto_2
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setWidth(I)V

    .line 1425
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1426
    return-void

    .line 1403
    .end local v5           #bgId:I
    .end local v6           #color:I
    .end local v7           #length:I
    .end local v8           #width:I
    :cond_0
    const v9, -0x777778

    move v6, v9

    goto :goto_0

    .line 1411
    .restart local v5       #bgId:I
    .restart local v6       #color:I
    :cond_1
    const v5, 0x7f020039

    goto :goto_1

    .line 1414
    :cond_2
    if-eqz p4, :cond_3

    .line 1415
    const v5, 0x7f02003c

    goto :goto_1

    .line 1417
    :cond_3
    const v5, 0x7f02003b

    goto :goto_1

    .line 1423
    .restart local v7       #length:I
    :cond_4
    const/16 v9, 0x64

    move v8, v9

    goto :goto_2
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 822
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 823
    return-void
.end method

.method public static togglePartyShuffle()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 269
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 270
    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    .line 272
    .local v0, shuffle:I
    if-ne v0, v2, :cond_1

    .line 273
    :try_start_0
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->setShuffleMode(I)V

    .line 280
    .end local v0           #shuffle:I
    :cond_0
    :goto_0
    return-void

    .line 275
    .restart local v0       #shuffle:I
    :cond_1
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static transitWithoutAnim(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .locals 1
    .parameter "a"
    .parameter "intent"
    .parameter "finish"

    .prologue
    const/4 v0, 0x0

    .line 1386
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1387
    if-eqz p2, :cond_0

    .line 1388
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1390
    :cond_0
    invoke-static {p0, v0, v0}, Lcom/miui/player/helper/Global;->overridePendingTransition(Landroid/app/Activity;II)Z

    .line 1391
    return-void
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 191
    sget-object v1, Lcom/miui/player/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/MusicUtils$ServiceBinder;

    .line 192
    .local v0, sb:Lcom/miui/player/MusicUtils$ServiceBinder;
    if-nez v0, :cond_1

    .line 193
    const-string v1, "MusicUtils"

    const-string v2, "Trying to unbind for unknown Context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 197
    sget-object v1, Lcom/miui/player/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, 0x0

    sput-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    goto :goto_0
.end method

.method public static updateButtonBar(Landroid/app/Activity;I)Z
    .locals 12
    .parameter "a"
    .parameter "highlight"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 946
    const v6, 0x7f0b0026

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    .line 947
    .local v3, ll:Landroid/widget/TabWidget;
    const/4 v5, 0x0

    .line 948
    .local v5, withtabs:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 949
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 950
    const-string v6, "withtabs"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 952
    :cond_0
    if-eqz p1, :cond_1

    if-nez v5, :cond_3

    .line 953
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 974
    :cond_2
    return v5

    .line 955
    :cond_3
    if-eqz v5, :cond_4

    .line 956
    invoke-virtual {v3, v10}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 958
    :cond_4
    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v6

    sub-int v0, v6, v11

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 960
    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 961
    .local v4, v:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v6

    if-ne v6, p1, :cond_5

    move v2, v11

    .line 962
    .local v2, isActive:Z
    :goto_1
    if-eqz v2, :cond_6

    .line 963
    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 964
    const/high16 v6, 0x4170

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v6, v9, v9, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 965
    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TabWidget;->setTag(Ljava/lang/Object;)V

    .line 970
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 971
    new-instance v6, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;

    invoke-direct {v6, v3}, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 972
    new-instance v6, Lcom/miui/player/MusicUtils$OnButtonBarClickListener;

    invoke-direct {v6, v3}, Lcom/miui/player/MusicUtils$OnButtonBarClickListener;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2           #isActive:Z
    :cond_5
    move v2, v10

    .line 961
    goto :goto_1

    .line 967
    .restart local v2       #isActive:Z
    :cond_6
    invoke-virtual {v4, v9, v9, v9, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_2
.end method

.method public static updateButtonBar2(Landroid/app/Activity;I)Z
    .locals 12
    .parameter "a"
    .parameter "highlight"

    .prologue
    const/4 v11, 0x0

    .line 978
    const v10, 0x7f0b002c

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 979
    .local v3, ll:Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    .line 980
    .local v9, withtabs:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 981
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 982
    const-string v10, "withtabs_2"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 984
    :cond_0
    if-nez v9, :cond_2

    .line 985
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1022
    :cond_1
    :goto_0
    return v9

    .line 988
    :cond_2
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 991
    const v10, 0x7f0b002d

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 992
    .local v5, nowplayingView:Landroid/view/View;
    new-instance v10, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;

    invoke-direct {v10, v3}, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 993
    new-instance v10, Lcom/miui/player/MusicUtils$OnButtonBarClickListener;

    invoke-direct {v10, v3}, Lcom/miui/player/MusicUtils$OnButtonBarClickListener;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 996
    const v10, 0x7f0b0031

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 997
    .local v7, playlistView:Landroid/view/View;
    new-instance v10, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;

    invoke-direct {v10, v3}, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 998
    new-instance v10, Lcom/miui/player/MusicUtils$OnButtonBarClickListener;

    invoke-direct {v10, v3}, Lcom/miui/player/MusicUtils$OnButtonBarClickListener;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 999
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1001
    const v10, 0x7f0b0030

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1002
    .local v4, nextButton:Landroid/view/View;
    new-instance v10, Lcom/miui/player/MusicUtils$OnNextClickListener;

    invoke-direct {v10}, Lcom/miui/player/MusicUtils$OnNextClickListener;-><init>()V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1004
    const v10, 0x7f0b002e

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1005
    .local v8, prevButton:Landroid/view/View;
    new-instance v10, Lcom/miui/player/MusicUtils$OnPrevClickListener;

    invoke-direct {v10}, Lcom/miui/player/MusicUtils$OnPrevClickListener;-><init>()V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    const v10, 0x7f0b002f

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1008
    .local v6, pauseButton:Landroid/view/View;
    new-instance v10, Lcom/miui/player/MusicUtils$OnPauseResumeClickListener;

    invoke-direct {v10}, Lcom/miui/player/MusicUtils$OnPauseResumeClickListener;-><init>()V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    if-ltz p1, :cond_1

    .line 1012
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 1013
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1014
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, p1, :cond_3

    .line 1015
    invoke-static {v3, v1}, Lcom/miui/player/MusicUtils;->setCurrentTab(Landroid/view/ViewGroup;I)V

    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1012
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static updateHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
    .locals 8
    .parameter "activity"
    .parameter "name"
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    .line 1366
    const v4, 0x7f0b000f

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1367
    .local v3, titleView:Landroid/view/View;
    if-nez v3, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1371
    :cond_0
    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1372
    .local v2, titleTextView:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1374
    .local v1, countTextView:Landroid/widget/TextView;
    const v4, 0x7f070065

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1375
    .local v0, countStr:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    if-gez p2, :cond_1

    .line 1378
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1380
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "rawWhereClause"

    .prologue
    .line 1314
    return-object p0
.end method
