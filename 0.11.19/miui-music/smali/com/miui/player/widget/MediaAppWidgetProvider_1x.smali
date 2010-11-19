.class public Lcom/miui/player/widget/MediaAppWidgetProvider_1x;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider_1x.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/widget/MediaAppWidgetProvider_1x$WidgetServiceConnection;,
        Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;
    }
.end annotation


# static fields
.field public static final CMDAPPWIDGETUPDATE:Ljava/lang/String; = "appwidgetupdate"

.field static final TAG:Ljava/lang/String; = "MusicAppWidgetProvider"

.field private static mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

.field private static mAlbumName:Ljava/lang/String;

.field private static mArtistName:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDefaultAlbumName:Ljava/lang/String;

.field private static mDefaultArtistName:Ljava/lang/String;

.field private static mService:Lcom/miui/player/MediaPlaybackService;

.field private static mTrackName:Ljava/lang/String;

.field private static sInstance:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;


# instance fields
.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->isPlayingAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    sput-object p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/MediaPlaybackService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    sput-object p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    return-object p0
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    const v5, 0x7f07002d

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 107
    .local v6, res:Landroid/content/res/Resources;
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030001

    invoke-direct {v7, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 110
    .local v7, views:Landroid/widget/RemoteViews;
    const v0, 0x7f0b0003

    const/16 v1, 0x8

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 111
    const v0, 0x7f0b0002

    const v1, 0x7f070061

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    const v0, 0x7f07002c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mDefaultArtistName:Ljava/lang/String;

    .line 113
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mDefaultAlbumName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mContext:Landroid/content/Context;

    .line 116
    sget-object v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mContext:Landroid/content/Context;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, urlPattern:Ljava/lang/String;
    new-instance v0, Lcom/miui/player/helper/AlbumArtTaskWrap;

    sget-object v1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;

    invoke-direct {v2, p0, v7}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;-><init>(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;Landroid/widget/RemoteViews;)V

    sget-object v4, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mDefaultArtistName:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/helper/AlbumArtTaskWrap;-><init>(Landroid/content/Context;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v7, v0}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 122
    invoke-direct {p0, p1, v7}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 123
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/player/widget/MediaAppWidgetProvider_1x;
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sInstance:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    invoke-direct {v1}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;-><init>()V

    sput-object v1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sInstance:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    .line 85
    :cond_0
    sget-object v1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sInstance:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 193
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 194
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 196
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPlayingAlbum(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    const/4 v3, 0x0

    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 342
    :goto_0
    return v1

    .line 335
    :cond_0
    const/4 v0, 0x0

    .line 337
    .local v0, ret:Z
    const-string v1, "<unknown>"

    sget-object v2, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    sget-object v1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mDefaultArtistName:Ljava/lang/String;

    sput-object v1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mArtistName:Ljava/lang/String;

    .line 340
    :cond_1
    sget-object v1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mArtistName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 342
    goto :goto_0

    :cond_2
    move v0, v3

    .line 340
    goto :goto_1
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 7
    .parameter "context"
    .parameter "views"
    .parameter "playerActive"

    .prologue
    const v6, 0x7f0b0004

    const/4 v5, 0x0

    .line 299
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/miui/player/MediaPlaybackService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v2, serviceName:Landroid/content/ComponentName;
    if-eqz p3, :cond_0

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.music.NOW_PLAYING"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "withtabs_2"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    const-string v3, "active_tab_2"

    const v4, 0x7f0b002d

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 306
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 313
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 315
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 316
    const v3, 0x7f0b0008

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 317
    const v3, 0x7f0b0009

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 319
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.miui.player.musicservicecommand.next"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 321
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 322
    const v3, 0x7f0b000a

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 324
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.miui.player.musicservicecommand.previous"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 326
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 327
    const v3, 0x7f0b0007

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 328
    return-void

    .line 308
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 310
    .restart local v1       #pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 12
    .parameter "context"
    .parameter "views"

    .prologue
    .line 126
    iget-object v6, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->osc:Landroid/content/ServiceConnection;

    if-nez v6, :cond_0

    .line 127
    new-instance v6, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$WidgetServiceConnection;

    invoke-direct {v6, p0}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$WidgetServiceConnection;-><init>(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;)V

    iput-object v6, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->osc:Landroid/content/ServiceConnection;

    .line 129
    :cond_0
    if-nez p1, :cond_2

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    const/4 v1, 0x0

    .line 134
    .local v1, errorState:Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 139
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, status:Ljava/lang/String;
    const-string v6, "shared"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "unmounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 141
    :cond_3
    const v6, 0x7f070028

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 148
    :cond_4
    :goto_1
    if-eqz v1, :cond_9

    .line 150
    const v6, 0x7f0b0003

    const/16 v7, 0x8

    invoke-virtual {p2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 151
    const v6, 0x7f0b0002

    invoke-virtual {p2, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 163
    :cond_5
    :goto_2
    sget-object v6, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    if-eqz v6, :cond_6

    .line 165
    sget-object v6, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    .line 166
    .local v3, playing:Z
    if-eqz v3, :cond_a

    .line 167
    const v6, 0x7f0b0008

    const/16 v7, 0x8

    invoke-virtual {p2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 168
    const v6, 0x7f0b0009

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 173
    :goto_3
    invoke-direct {p0, p1, p2, v3}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 178
    .end local v3           #playing:Z
    :cond_6
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 179
    .local v2, gm:Landroid/appwidget/AppWidgetManager;
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    invoke-direct {v6, p1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 181
    .local v0, appWidgetIds:[I
    if-eqz v0, :cond_b

    .line 182
    invoke-virtual {v2, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 142
    .end local v0           #appWidgetIds:[I
    .end local v2           #gm:Landroid/appwidget/AppWidgetManager;
    :cond_7
    const-string v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 143
    const v6, 0x7f070026

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 144
    :cond_8
    sget-object v6, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumName:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 145
    const v6, 0x7f070036

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 155
    :cond_9
    const v6, 0x7f0b0003

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 156
    const v6, 0x7f0b0002

    sget-object v7, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mTrackName:Ljava/lang/String;

    invoke-virtual {p2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 157
    sget-object v6, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    if-eqz v6, :cond_5

    .line 158
    const v6, 0x7f0b0003

    sget-object v7, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    sget-object v8, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/MediaPlaybackService;->duration()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    add-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const v10, 0x7f070002

    invoke-static {v7, v8, v9, v10}, Lcom/miui/player/MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 170
    .restart local v3       #playing:Z
    :cond_a
    const v6, 0x7f0b0008

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 171
    const v6, 0x7f0b0009

    const/16 v7, 0x8

    invoke-virtual {p2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 184
    .end local v3           #playing:Z
    .restart local v0       #appWidgetIds:[I
    .restart local v2       #gm:Landroid/appwidget/AppWidgetManager;
    :cond_b
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public notifyChange(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "what"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.miui.player.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->performUpdate(Lcom/miui/player/MediaPlaybackService;)V

    .line 211
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 90
    invoke-direct {p0, p1, p3}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "appwidgetupdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public performUpdate(Lcom/miui/player/MediaPlaybackService;)V
    .locals 25
    .parameter "service"

    .prologue
    .line 218
    sput-object p1, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    .line 219
    new-instance v24, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/player/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030001

    move-object/from16 v0, v24

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 222
    .local v24, views:Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mTrackName:Ljava/lang/String;

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumName:Ljava/lang/String;

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mArtistName:Ljava/lang/String;

    .line 226
    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->getAlbumId()J

    move-result-wide v4

    .line 227
    .local v4, albumid:J
    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v22

    .line 228
    .local v22, songid:J
    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 229
    .local v21, path:Ljava/lang/String;
    const-string v3, "<unknown>"

    sget-object v6, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mDefaultAlbumName:Ljava/lang/String;

    sput-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumName:Ljava/lang/String;

    .line 231
    const-wide/16 v4, -0x1

    .line 233
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v22, v6

    if-gez v3, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "http://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    const-wide/16 v22, -0x1

    .line 237
    :cond_1
    const/16 v17, 0x0

    .line 238
    .local v17, bm:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 239
    .local v18, drawable:Landroid/graphics/drawable/Drawable;
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 240
    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    sget-object v6, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumName:Ljava/lang/String;

    sget-object v7, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mArtistName:Ljava/lang/String;

    sget-object v8, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget-object v9, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/miui/player/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/miui/player/helper/AlbumManager;->getCachedArtwork(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 246
    if-eqz v18, :cond_3

    .line 247
    move-object/from16 v0, v18

    check-cast v0, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    .line 248
    const v3, 0x7f0b0004

    move-object/from16 v0, v24

    move v1, v3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 285
    :cond_2
    :goto_0
    return-void

    .line 253
    :cond_3
    if-nez v18, :cond_4

    .line 254
    sget-object v6, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    sget-object v9, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumName:Ljava/lang/String;

    sget-object v10, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mArtistName:Ljava/lang/String;

    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f060006

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f060007

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x1

    move-wide/from16 v7, v22

    invoke-static/range {v6 .. v13}, Lcom/miui/player/helper/AlbumManager;->getCachedArtwork(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 259
    if-eqz v18, :cond_4

    .line 260
    move-object/from16 v0, v18

    check-cast v0, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    .line 261
    const v3, 0x7f0b0004

    move-object/from16 v0, v24

    move v1, v3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 267
    :cond_4
    const v3, 0x7f0b0004

    const v6, 0x7f020011

    move-object/from16 v0, v24

    move v1, v3

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/miui/player/MediaPlaybackService;->duration()J

    move-result-wide v19

    .line 269
    .local v19, duration:J
    const-wide/32 v6, 0x1d4c0

    cmp-long v3, v19, v6

    if-gez v3, :cond_5

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 273
    :cond_5
    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v3}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "download_album_auto"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    :cond_6
    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    if-nez v3, :cond_7

    .line 277
    const v3, 0x7f07007f

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 278
    .local v9, urlPattern:Ljava/lang/String;
    new-instance v6, Lcom/miui/player/helper/AlbumArtTaskWrap;

    new-instance v8, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$AlbumArtTask;-><init>(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;Landroid/widget/RemoteViews;)V

    sget-object v10, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mDefaultAlbumName:Ljava/lang/String;

    sget-object v11, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mDefaultArtistName:Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/miui/player/helper/AlbumArtTaskWrap;-><init>(Landroid/content/Context;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    .line 282
    .end local v9           #urlPattern:Ljava/lang/String;
    :cond_7
    sget-object v3, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    new-instance v10, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    sget-object v15, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mAlbumName:Ljava/lang/String;

    sget-object v16, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->mArtistName:Ljava/lang/String;

    move-wide v11, v4

    move-wide/from16 v13, v22

    invoke-direct/range {v10 .. v16}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lcom/miui/player/helper/AlbumArtTaskWrap;->execute(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V

    goto/16 :goto_0
.end method
