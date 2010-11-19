.class public Lcom/miui/player/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/MediaPlaybackService$ServiceStub;,
        Lcom/miui/player/MediaPlaybackService$MultiPlayer;,
        Lcom/miui/player/MediaPlaybackService$Shuffler;
    }
.end annotation


# static fields
.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.miui.player.asyncopencomplete"

.field public static final BROADCAST_PREVFIX:Ljava/lang/String; = "com.miui.player"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDREMOVE:Ljava/lang/String; = "remove"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMDUNPAUSE:Ljava/lang/String; = "unpause"

.field public static final DATA_ID:Ljava/lang/String; = "id"

.field private static final FADEIN:I = 0x4

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "MediaPlaybackService"

.field private static final MAX_HISTORY_SIZE:I = 0x64

.field public static final META_CHANGED:Ljava/lang/String; = "com.miui.player.metachanged"

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.next"

.field public static final NOW:I = 0x1

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.miui.player.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.miui.player.playstatechanged"

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.miui.player.queuechanged"

.field public static final REFRESH_PROGRESSBAR:Ljava/lang/String; = "com.miui.player.refreshui"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REMOVE_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.remove"

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.miui.player.musicservicecommand"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.togglepause"

.field private static final TRACK_ENDED:I = 0x1

.field private static mPrepareFailedCounter:I


# instance fields
.field private final hexdigits:[C

.field private mAppWidgetProvider:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

.field private mAutoShuffleList:[J

.field private final mBinder:Landroid/os/IBinder;

.field private mCardId:I

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mFileToPlay:Ljava/lang/String;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupposedToBePlaying:Z

.field private mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOneShot:Z

.field private mOpenFailedCounter:I

.field private mPausedInCall:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayList:[J

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQuietMode:Z

.field private final mRand:Lcom/miui/player/MediaPlaybackService$Shuffler;

.field private mRepeatMode:I

.field private mResumeAfterCall:Z

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    sput v0, Lcom/miui/player/MediaPlaybackService;->mPrepareFailedCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 346
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 149
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    .line 151
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    .line 153
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mMediaMountedCount:I

    .line 155
    iput-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mAutoShuffleList:[J

    .line 159
    iput-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    .line 161
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 163
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 167
    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 171
    new-instance v0, Lcom/miui/player/MediaPlaybackService$Shuffler;

    invoke-direct {v0, v4}, Lcom/miui/player/MediaPlaybackService$Shuffler;-><init>(Lcom/miui/player/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mRand:Lcom/miui/player/MediaPlaybackService$Shuffler;

    .line 173
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    .line 177
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 187
    iput-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mServiceStartId:I

    .line 193
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    .line 195
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterCall:Z

    .line 197
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService;->mPausedInCall:Z

    .line 199
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 201
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService;->mQuietMode:Z

    .line 211
    invoke-static {}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->getInstance()Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mAppWidgetProvider:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    .line 218
    new-instance v0, Lcom/miui/player/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$1;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 253
    new-instance v0, Lcom/miui/player/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$2;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 306
    new-instance v0, Lcom/miui/player/MediaButtonIntentReceiver;

    invoke-direct {v0}, Lcom/miui/player/MediaButtonIntentReceiver;-><init>()V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Lcom/miui/player/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$3;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 429
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->hexdigits:[C

    .line 733
    new-instance v0, Lcom/miui/player/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$4;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 2095
    new-instance v0, Lcom/miui/player/MediaPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$ServiceStub;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 347
    return-void

    .line 429
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/miui/player/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterCall:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/player/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterCall:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/player/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/widget/MediaAppWidgetProvider_1x;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mAppWidgetProvider:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/player/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/player/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/player/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1608(Lcom/miui/player/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/player/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/player/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->reloadQueue()V

    return-void
.end method

.method static synthetic access$1908()I
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/miui/player/MediaPlaybackService;->mPrepareFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/miui/player/MediaPlaybackService;->mPrepareFailedCounter:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/player/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/miui/player/MediaPlaybackService;->mPausedInCall:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/MediaPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$602(Lcom/miui/player/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/player/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/player/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/player/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    return p1
.end method

.method private addToPlayList([JI)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 846
    array-length v0, p1

    .line 847
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 848
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 849
    const/4 p2, 0x0

    .line 851
    :cond_0
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 852
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 853
    iget p2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 857
    :cond_1
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 858
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 859
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 858
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 863
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 864
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    .line 863
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 866
    :cond_3
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 867
    return-void
.end method

.method private doAutoShuffleUpdate()V
    .locals 9

    .prologue
    .line 1473
    const/4 v2, 0x0

    .line 1475
    .local v2, notify:Z
    iget v6, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 1476
    const/4 v6, 0x0

    iget v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    const/16 v8, 0x9

    sub-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/miui/player/MediaPlaybackService;->removeTracks(II)I

    .line 1477
    const/4 v2, 0x1

    .line 1480
    :cond_0
    const/4 v6, 0x7

    iget v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gez v8, :cond_1

    const/4 v8, -0x1

    :goto_0
    sub-int/2addr v7, v8

    sub-int v3, v6, v7

    .line 1481
    .local v3, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1483
    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mRand:Lcom/miui/player/MediaPlaybackService$Shuffler;

    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mAutoShuffleList:[J

    array-length v7, v7

    invoke-virtual {v6, v7}, Lcom/miui/player/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 1484
    .local v1, idx:I
    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mAutoShuffleList:[J

    aget-wide v4, v6, v1

    .line 1485
    .local v4, which:J
    iget v6, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1486
    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    aput-wide v4, v6, v7

    .line 1487
    const/4 v2, 0x1

    .line 1481
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1480
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v3           #to_add:I
    .end local v4           #which:J
    :cond_1
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 1489
    .restart local v0       #i:I
    .restart local v3       #to_add:I
    :cond_2
    if-eqz v2, :cond_3

    .line 1490
    const-string v6, "com.miui.player.queuechanged"

    invoke-direct {p0, v6}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1492
    :cond_3
    return-void
.end method

.method private ensurePlayListCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 829
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_3

    .line 833
    :cond_0
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 834
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    move v1, v3

    .line 835
    .local v1, len:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 836
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 834
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v1, v3

    goto :goto_0

    .line 838
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_2
    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    .line 842
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_3
    return-void
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1434
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1435
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1436
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1437
    invoke-direct {p0, v4, v4}, Lcom/miui/player/MediaPlaybackService;->stopForegroundCompat(IZ)V

    .line 1438
    return-void
.end method

.method private makeAutoShuffleList()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1513
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1514
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1516
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1519
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 1532
    :cond_0
    if-eqz v6, :cond_1

    .line 1533
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v10

    .line 1536
    :goto_0
    return v1

    .line 1522
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1523
    .local v8, len:I
    new-array v9, v8, [J

    .line 1524
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 1525
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1526
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v7

    .line 1524
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1528
    :cond_3
    iput-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mAutoShuffleList:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1532
    if-eqz v6, :cond_4

    .line 1533
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v11

    goto :goto_0

    .line 1530
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catch_0
    move-exception v1

    .line 1532
    if-eqz v6, :cond_5

    .line 1533
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, v10

    .line 1536
    goto :goto_0

    .line 1532
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 1533
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 812
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, i:Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 814
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v1, "track"

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v0}, Lcom/miui/player/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 819
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    .line 825
    :goto_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mAppWidgetProvider:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    invoke-virtual {v1, p0, p1}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->notifyChange(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    .line 826
    return-void

    .line 822
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0
.end method

.method private openCurrent()V
    .locals 7

    .prologue
    .line 1008
    monitor-enter p0

    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1013
    :cond_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 1014
    monitor-exit p0

    .line 1039
    :goto_0
    return-void

    .line 1016
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->stop(Z)V

    .line 1018
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 1019
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1022
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 1024
    .local v6, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1026
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1027
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 1038
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private reloadQueue()V
    .locals 23

    .prologue
    .line 499
    const/16 v16, 0x0

    .line 501
    .local v16, q:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    move v12, v0

    .line 502
    .local v12, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cardid"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cardid"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    move v5, v0

    xor-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 505
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    move v3, v0

    if-ne v12, v3, :cond_1

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "queue"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 510
    :cond_1
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v17, v3

    .line 511
    .local v17, qlen:I
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-le v0, v1, :cond_8

    .line 513
    const/4 v14, 0x0

    .line 514
    .local v14, plen:I
    const/4 v13, 0x0

    .line 515
    .local v13, n:I
    const/16 v21, 0x0

    .line 516
    .local v21, shift:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 517
    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 518
    .local v9, c:C
    const/16 v3, 0x3b

    if-ne v9, v3, :cond_3

    .line 519
    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    move-object v3, v0

    int-to-long v4, v13

    aput-wide v4, v3, v14

    .line 521
    add-int/lit8 v14, v14, 0x1

    .line 522
    const/4 v13, 0x0

    .line 523
    const/16 v21, 0x0

    .line 516
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 510
    .end local v9           #c:C
    .end local v11           #i:I
    .end local v13           #n:I
    .end local v14           #plen:I
    .end local v17           #qlen:I
    .end local v21           #shift:I
    :cond_2
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_0

    .line 525
    .restart local v9       #c:C
    .restart local v11       #i:I
    .restart local v13       #n:I
    .restart local v14       #plen:I
    .restart local v17       #qlen:I
    .restart local v21       #shift:I
    :cond_3
    const/16 v3, 0x30

    if-lt v9, v3, :cond_4

    const/16 v3, 0x39

    if-gt v9, v3, :cond_4

    .line 526
    const/16 v3, 0x30

    sub-int v3, v9, v3

    shl-int v3, v3, v21

    add-int/2addr v13, v3

    .line 534
    :goto_3
    add-int/lit8 v21, v21, 0x4

    goto :goto_2

    .line 527
    :cond_4
    const/16 v3, 0x61

    if-lt v9, v3, :cond_5

    const/16 v3, 0x66

    if-gt v9, v3, :cond_5

    .line 528
    add-int/lit8 v3, v9, 0xa

    const/16 v4, 0x61

    sub-int/2addr v3, v4

    shl-int v3, v3, v21

    add-int/2addr v13, v3

    goto :goto_3

    .line 531
    :cond_5
    const/4 v14, 0x0

    .line 537
    .end local v9           #c:C
    :cond_6
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "curpos"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 540
    .local v15, pos:I
    if-ltz v15, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v3, v0

    if-lt v15, v3, :cond_9

    .line 542
    :cond_7
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 646
    .end local v11           #i:I
    .end local v13           #n:I
    .end local v14           #plen:I
    .end local v15           #pos:I
    .end local v21           #shift:I
    :cond_8
    :goto_4
    return-void

    .line 545
    .restart local v11       #i:I
    .restart local v13       #n:I
    .restart local v14       #plen:I
    .restart local v15       #pos:I
    .restart local v21       #shift:I
    :cond_9
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 552
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    move v7, v0

    aget-wide v6, v6, v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 556
    .local v10, crsr:Landroid/database/Cursor;
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_b

    .line 558
    :cond_a
    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    move v8, v0

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 563
    :cond_b
    if-eqz v10, :cond_c

    .line 564
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_c
    const/16 v3, 0x14

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    .line 580
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/MediaPlaybackService;->mQuietMode:Z

    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    .line 582
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/MediaPlaybackService;->mQuietMode:Z

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_d

    .line 585
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    goto/16 :goto_4

    .line 589
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "seekpos"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 590
    .local v19, seekpos:J
    const-wide/16 v3, 0x0

    cmp-long v3, v19, v3

    if-ltz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->duration()J

    move-result-wide v3

    cmp-long v3, v19, v3

    if-gez v3, :cond_12

    move-wide/from16 v3, v19

    :goto_5
    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 591
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restored queue, currently at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->position()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->duration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (requested "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "repeatmode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 595
    .local v18, repmode:I
    const/4 v3, 0x2

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_e

    .line 596
    const/16 v18, 0x0

    .line 598
    :cond_e
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "shufflemode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 601
    .local v22, shufmode:I
    const/4 v3, 0x2

    move/from16 v0, v22

    move v1, v3

    if-eq v0, v1, :cond_f

    const/4 v3, 0x1

    move/from16 v0, v22

    move v1, v3

    if-eq v0, v1, :cond_f

    .line 602
    const/16 v22, 0x0

    .line 604
    :cond_f
    if-eqz v22, :cond_10

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "history"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 607
    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v17, v3

    .line 608
    :goto_6
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-le v0, v1, :cond_10

    .line 609
    const/4 v14, 0x0

    .line 610
    const/4 v13, 0x0

    .line 611
    const/16 v21, 0x0

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 613
    const/4 v11, 0x0

    :goto_7
    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    .line 614
    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 615
    .restart local v9       #c:C
    const/16 v3, 0x3b

    if-ne v9, v3, :cond_15

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v3, v0

    if-lt v13, v3, :cond_14

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 639
    .end local v9           #c:C
    :cond_10
    :goto_8
    const/4 v3, 0x2

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_11

    .line 640
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v3

    if-nez v3, :cond_11

    .line 641
    const/16 v22, 0x0

    .line 644
    :cond_11
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    goto/16 :goto_4

    .line 590
    .end local v18           #repmode:I
    .end local v22           #shufmode:I
    :cond_12
    const-wide/16 v3, 0x0

    goto/16 :goto_5

    .line 607
    .restart local v18       #repmode:I
    .restart local v22       #shufmode:I
    :cond_13
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_6

    .line 621
    .restart local v9       #c:C
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    move-object v3, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 622
    const/4 v13, 0x0

    .line 623
    const/16 v21, 0x0

    .line 613
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 625
    :cond_15
    const/16 v3, 0x30

    if-lt v9, v3, :cond_16

    const/16 v3, 0x39

    if-gt v9, v3, :cond_16

    .line 626
    const/16 v3, 0x30

    sub-int v3, v9, v3

    shl-int v3, v3, v21

    add-int/2addr v13, v3

    .line 634
    :goto_a
    add-int/lit8 v21, v21, 0x4

    goto :goto_9

    .line 627
    :cond_16
    const/16 v3, 0x61

    if-lt v9, v3, :cond_17

    const/16 v3, 0x66

    if-gt v9, v3, :cond_17

    .line 628
    add-int/lit8 v3, v9, 0xa

    const/16 v4, 0x61

    sub-int/2addr v3, v4

    shl-int v3, v3, v21

    add-int/2addr v13, v3

    goto :goto_a

    .line 631
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    goto :goto_8
.end method

.method private removeTracksInternal(II)I
    .locals 8
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1557
    monitor-enter p0

    .line 1558
    if-ge p2, p1, :cond_0

    .line 1559
    :try_start_0
    monitor-exit p0

    .line 1594
    :goto_0
    return v4

    .line 1560
    :cond_0
    if-gez p1, :cond_1

    .line 1561
    const/4 p1, 0x0

    .line 1562
    :cond_1
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v4, :cond_2

    .line 1563
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int p2, v4, v6

    .line 1565
    :cond_2
    const/4 v0, 0x0

    .line 1566
    .local v0, gotonext:Z
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v4, :cond_4

    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gt v4, p2, :cond_4

    .line 1567
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1568
    const/4 v0, 0x1

    .line 1572
    :cond_3
    :goto_1
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v4, p2

    sub-int v2, v4, v6

    .line 1573
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 1574
    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int v5, p1, v1

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 1573
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1569
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_4
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-le v4, p2, :cond_3

    .line 1570
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1595
    .end local v0           #gotonext:Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1576
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_5
    :try_start_1
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1578
    if-eqz v0, :cond_6

    .line 1579
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-nez v4, :cond_7

    .line 1580
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/miui/player/MediaPlaybackService;->stop(Z)V

    .line 1581
    const/4 v4, -0x1

    iput v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1594
    :cond_6
    :goto_3
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1583
    :cond_7
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    iget v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt v4, v5, :cond_8

    .line 1584
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1586
    :cond_8
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    .line 1587
    .local v3, wasPlaying:Z
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/miui/player/MediaPlaybackService;->stop(Z)V

    .line 1588
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    .line 1589
    if-eqz v3, :cond_6

    .line 1590
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private saveBookmarkIfNeeded()V
    .locals 0

    .prologue
    .line 1467
    .line 1468
    return-void
.end method

.method private saveQueue(Z)V
    .locals 13
    .parameter "full"

    .prologue
    const-wide/16 v9, 0x0

    const-string v12, ";"

    const-string v11, "0;"

    .line 434
    iget-boolean v7, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    if-eqz v7, :cond_0

    .line 496
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 439
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_7

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v6, q:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 449
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 450
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v7, v2

    .line 451
    .local v4, n:J
    cmp-long v7, v4, v9

    if-nez v7, :cond_1

    .line 452
    const-string v7, "0;"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    :cond_1
    :goto_3
    cmp-long v7, v4, v9

    if-eqz v7, :cond_2

    .line 455
    const-wide/16 v7, 0xf

    and-long/2addr v7, v4

    long-to-int v0, v7

    .line 456
    .local v0, digit:I
    const/4 v7, 0x4

    shr-long/2addr v4, v7

    .line 457
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 459
    .end local v0           #digit:I
    :cond_2
    const-string v7, ";"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 464
    .end local v4           #n:J
    :cond_3
    const-string v7, "queue"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    const-string v7, "cardid"

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 466
    iget v7, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    if-eqz v7, :cond_7

    .line 468
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    .line 469
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 470
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_6

    .line 471
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 472
    .local v4, n:I
    if-nez v4, :cond_4

    .line 473
    const-string v7, "0;"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 475
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 476
    and-int/lit8 v0, v4, 0xf

    .line 477
    .restart local v0       #digit:I
    shr-int/lit8 v4, v4, 0x4

    .line 478
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 480
    .end local v0           #digit:I
    :cond_5
    const-string v7, ";"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 483
    .end local v4           #n:I
    :cond_6
    const-string v7, "history"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v6           #q:Ljava/lang/StringBuilder;
    :cond_7
    const-string v7, "curpos"

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 487
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 488
    const-string v7, "seekpos"

    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 490
    :cond_8
    const-string v7, "repeatmode"

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 491
    const-string v7, "shufflemode"

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    return-void
.end method

.method private startForegroundCompat(ILandroid/app/Notification;)V
    .locals 1
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 1206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/MediaPlaybackService;->setForeground(Z)V

    .line 1207
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1208
    return-void
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1220
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1223
    :cond_0
    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1224
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1226
    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1228
    :cond_1
    if-eqz p1, :cond_3

    .line 1229
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState()V

    .line 1233
    :goto_0
    if-eqz p1, :cond_2

    .line 1234
    iput-boolean v1, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1236
    :cond_2
    return-void

    .line 1231
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/MediaPlaybackService;->stopForegroundCompat(IZ)V

    goto :goto_0
.end method

.method private stopForegroundCompat(IZ)V
    .locals 1
    .parameter "id"
    .parameter "removeNotification"

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1216
    invoke-virtual {p0, p2}, Lcom/miui/player/MediaPlaybackService;->setForeground(Z)V

    .line 1217
    return-void
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter "storagePath"

    .prologue
    .line 756
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->stop(Z)V

    .line 757
    const-string v0, "com.miui.player.queuechanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 758
    const-string v0, "com.miui.player.metachanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1766
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 2
    .parameter "list"
    .parameter "action"

    .prologue
    const-string v0, "com.miui.player.queuechanged"

    const-string v0, "com.miui.player.metachanged"

    .line 878
    monitor-enter p0

    .line 879
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 880
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/player/MediaPlaybackService;->addToPlayList([JI)V

    .line 881
    const-string v0, "com.miui.player.queuechanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 895
    :cond_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 896
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 897
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    .line 898
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 899
    const-string v0, "com.miui.player.metachanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 901
    :cond_1
    monitor-exit p0

    .line 902
    :goto_0
    return-void

    .line 885
    :cond_2
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/miui/player/MediaPlaybackService;->addToPlayList([JI)V

    .line 886
    const-string v0, "com.miui.player.queuechanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 887
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 888
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 889
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    .line 890
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 891
    const-string v0, "com.miui.player.metachanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 892
    monitor-exit p0

    goto :goto_0

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumId()J
    .locals 3

    .prologue
    .line 1741
    monitor-enter p0

    .line 1742
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1743
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 1745
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1746
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1732
    monitor-enter p0

    .line 1733
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1734
    const/4 v0, 0x0

    monitor-exit p0

    .line 1736
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1737
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()J
    .locals 3

    .prologue
    .line 1723
    monitor-enter p0

    .line 1724
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1725
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 1727
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1728
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1714
    monitor-enter p0

    .line 1715
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1716
    const/4 v0, 0x0

    monitor-exit p0

    .line 1718
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1719
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 1676
    monitor-enter p0

    .line 1677
    :try_start_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 1681
    :goto_0
    return-wide v0

    .line 1680
    :cond_0
    monitor-exit p0

    .line 1681
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1680
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 1660
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue()[J
    .locals 5

    .prologue
    .line 997
    monitor-enter p0

    .line 998
    :try_start_0
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 999
    .local v1, len:I
    new-array v2, v1, [J

    .line 1000
    .local v2, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1001
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    monitor-exit p0

    return-object v2

    .line 1004
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 1690
    monitor-enter p0

    .line 1691
    :try_start_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 1692
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 1656
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 1645
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1750
    monitor-enter p0

    .line 1751
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1752
    const/4 v0, 0x0

    monitor-exit p0

    .line 1754
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1755
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1271
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 7
    .parameter "index1"
    .parameter "index2"

    .prologue
    const/4 v6, 0x1

    .line 956
    monitor-enter p0

    .line 957
    :try_start_0
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v3, :cond_0

    .line 958
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int p1, v3, v6

    .line 960
    :cond_0
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v3, :cond_1

    .line 961
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int p2, v3, v6

    .line 963
    :cond_1
    if-ge p1, p2, :cond_5

    .line 964
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 965
    .local v1, tmp:J
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 966
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_2
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 969
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_4

    .line 970
    iput p2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 986
    .end local v0           #i:I
    .end local v1           #tmp:J
    :cond_3
    :goto_1
    const-string v3, "com.miui.player.queuechanged"

    invoke-direct {p0, v3}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 987
    monitor-exit p0

    .line 988
    return-void

    .line 971
    .restart local v0       #i:I
    .restart local v1       #tmp:J
    :cond_4
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p2, :cond_3

    .line 972
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 987
    .end local v0           #i:I
    .end local v1           #tmp:J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 974
    :cond_5
    if-ge p2, p1, :cond_3

    .line 975
    :try_start_1
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 976
    .restart local v1       #tmp:J
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_6

    .line 977
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    sub-int v5, v0, v6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 976
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 979
    :cond_6
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 980
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_7

    .line 981
    iput p2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 982
    :cond_7
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p2, :cond_3

    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p1, :cond_3

    .line 983
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 12
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 1334
    monitor-enter p0

    .line 1335
    :try_start_0
    iget-boolean v8, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    if-eqz v8, :cond_0

    .line 1338
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 1339
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1340
    monitor-exit p0

    .line 1431
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-gtz v8, :cond_1

    .line 1344
    const-string v8, "MediaPlaybackService"

    const-string v9, "No play queue"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    monitor-exit p0

    goto :goto_0

    .line 1430
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1350
    :cond_1
    :try_start_1
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-ltz v8, :cond_2

    .line 1351
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v9, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1353
    :cond_2
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_3

    .line 1354
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1357
    :cond_3
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    if-ne v8, v11, :cond_c

    .line 1362
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1363
    .local v4, numTracks:I
    new-array v7, v4, [I

    .line 1364
    .local v7, tracks:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1365
    aput v1, v7, v1

    .line 1364
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1368
    :cond_4
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1369
    .local v3, numHistory:I
    move v5, v4

    .line 1370
    .local v5, numUnplayed:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_6

    .line 1371
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1372
    .local v2, idx:I
    if-ge v2, v4, :cond_5

    aget v8, v7, v2

    if-ltz v8, :cond_5

    .line 1373
    add-int/lit8 v5, v5, -0x1

    .line 1374
    const/4 v8, -0x1

    aput v8, v7, v2

    .line 1370
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1381
    .end local v2           #idx:I
    :cond_6
    if-gtz v5, :cond_9

    .line 1383
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    if-eq v8, v10, :cond_7

    if-eqz p1, :cond_8

    .line 1385
    :cond_7
    move v5, v4

    .line 1386
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_9

    .line 1387
    aput v1, v7, v1

    .line 1386
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1391
    :cond_8
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState()V

    .line 1392
    monitor-exit p0

    goto :goto_0

    .line 1395
    :cond_9
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mRand:Lcom/miui/player/MediaPlaybackService$Shuffler;

    invoke-virtual {v8, v5}, Lcom/miui/player/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v6

    .line 1396
    .local v6, skip:I
    const/4 v0, -0x1

    .line 1398
    .local v0, cnt:I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    aget v8, v7, v0

    if-ltz v8, :cond_a

    .line 1400
    add-int/lit8 v6, v6, -0x1

    .line 1401
    if-gez v6, :cond_a

    .line 1405
    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1425
    .end local v0           #cnt:I
    .end local v1           #i:I
    .end local v3           #numHistory:I
    .end local v4           #numTracks:I
    .end local v5           #numUnplayed:I
    .end local v6           #skip:I
    .end local v7           #tracks:[I
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1426
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/miui/player/MediaPlaybackService;->stop(Z)V

    .line 1427
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    .line 1428
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1429
    const-string v8, "com.miui.player.metachanged"

    invoke-direct {p0, v8}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1430
    monitor-exit p0

    goto/16 :goto_0

    .line 1406
    :cond_c
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    if-ne v8, v10, :cond_d

    .line 1407
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 1408
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_4

    .line 1410
    :cond_d
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    iget v9, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v9, v11

    if-lt v8, v9, :cond_10

    .line 1412
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    if-nez v8, :cond_e

    if-nez p1, :cond_e

    .line 1414
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState()V

    .line 1415
    const-string v8, "com.miui.player.playbackcomplete"

    invoke-direct {p0, v8}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1416
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1417
    monitor-exit p0

    goto/16 :goto_0

    .line 1418
    :cond_e
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    if-eq v8, v10, :cond_f

    if-eqz p1, :cond_b

    .line 1419
    :cond_f
    const/4 v8, 0x0

    iput v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_4

    .line 1422
    :cond_10
    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    .line 652
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 353
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 355
    const-string v5, "Music"

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lcom/miui/player/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 356
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/player/helper/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    .line 358
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->registerExternalStorageListener()V

    .line 362
    new-instance v5, Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-direct {v5, p0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    .line 363
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 365
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->reloadQueue()V

    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 368
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v5, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v5, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v5, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v5, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v5, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v5, "com.miui.player.musicservicecommand.remove"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/miui/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v1, mediaButtonFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v5, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const v5, 0x7ffffffe

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 380
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/miui/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 383
    .local v4, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 384
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 385
    .local v3, pm:Landroid/os/PowerManager;
    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 386
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 391
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 392
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 393
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const-string v1, "MediaPlaybackService"

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->release()V

    .line 405
    iput-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    .line 408
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 411
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 413
    iput-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 416
    :cond_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 417
    .local v0, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 419
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 421
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    iput-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 426
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 427
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    .line 659
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "startId"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 663
    iput p2, p0, Lcom/miui/player/MediaPlaybackService;->mServiceStartId:I

    .line 664
    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 666
    if-eqz p1, :cond_1

    .line 667
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, action:Ljava/lang/String;
    const-string v4, "command"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, cmd:Ljava/lang/String;
    const-string v4, "next"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 671
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    .line 700
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 701
    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 702
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 703
    return-void

    .line 672
    .end local v3           #msg:Landroid/os/Message;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/String;
    :cond_2
    const-string v4, "previous"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 673
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->position()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 674
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 676
    :cond_4
    invoke-virtual {p0, v9, v10}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 677
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    goto :goto_0

    .line 679
    :cond_5
    const-string v4, "togglepause"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 680
    :cond_6
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 681
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 683
    :cond_7
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    goto :goto_0

    .line 685
    :cond_8
    const-string v4, "pause"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 686
    :cond_9
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 687
    :cond_a
    const-string v4, "stop"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 688
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 689
    invoke-virtual {p0, v9, v10}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 690
    :cond_b
    const-string v4, "remove"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "com.miui.player.musicservicecommand.remove"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 691
    :cond_c
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 692
    .local v2, id:I
    if-eqz v2, :cond_1

    .line 693
    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/miui/player/MediaPlaybackService;->removeTrack(J)I

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 707
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    .line 710
    invoke-direct {p0, v4}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    .line 712
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterCall:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    .line 730
    :goto_0
    return v1

    .line 722
    :cond_1
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 723
    :cond_2
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 724
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v4

    .line 725
    goto :goto_0

    .line 729
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->stopSelf(I)V

    move v1, v4

    .line 730
    goto :goto_0
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 10
    .parameter "path"
    .parameter "oneshot"

    .prologue
    const/4 v9, 0x1

    .line 1067
    monitor-enter p0

    .line 1068
    if-nez p1, :cond_0

    .line 1069
    :try_start_0
    monitor-exit p0

    .line 1138
    :goto_0
    return-void

    .line 1072
    :cond_0
    if-eqz p2, :cond_1

    .line 1073
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    .line 1074
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1075
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1076
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1080
    :cond_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_2

    .line 1082
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1086
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://media/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1087
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1088
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1089
    .local v6, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1099
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1101
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 1102
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 1103
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1104
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1116
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #where:Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_2
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1117
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1118
    iput-boolean p2, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    .line 1119
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1120
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->stop(Z)V

    .line 1121
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-le v2, v9, :cond_3

    .line 1124
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    .line 1126
    :cond_3
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v2, :cond_5

    .line 1128
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1129
    iget-boolean v2, p0, Lcom/miui/player/MediaPlaybackService;->mQuietMode:Z

    if-nez v2, :cond_4

    .line 1130
    const v2, 0x7f070045

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1132
    :cond_4
    const-string v2, "MediaPlaybackService"

    const-string v3, "Failed to open file for playback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_5
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1091
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_6
    :try_start_3
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1092
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v6, "_data=?"

    .line 1093
    .restart local v6       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 1106
    :cond_7
    :try_start_4
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1107
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1108
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1109
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v2, v3

    .line 1110
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1113
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1135
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #where:Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    :try_start_5
    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public open([JI)V
    .locals 9
    .parameter "list"
    .parameter "position"

    .prologue
    .line 912
    monitor-enter p0

    .line 913
    :try_start_0
    iget v5, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 914
    const/4 v5, 0x1

    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    .line 916
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 917
    .local v3, oldId:J
    array-length v1, p1

    .line 918
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 919
    .local v2, newlist:Z
    iget v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-ne v5, v1, :cond_1

    .line 921
    const/4 v2, 0x0

    .line 922
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 923
    aget-wide v5, p1, v0

    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v7, v7, v0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 924
    const/4 v2, 0x1

    .line 929
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_2

    .line 930
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/miui/player/MediaPlaybackService;->addToPlayList([JI)V

    .line 931
    const-string v5, "com.miui.player.queuechanged"

    invoke-direct {p0, v5}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 934
    :cond_2
    if-ltz p2, :cond_5

    .line 935
    iput p2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 939
    :goto_1
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 941
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 942
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    .line 943
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    .line 944
    const-string v5, "com.miui.player.metachanged"

    invoke-direct {p0, v5}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 946
    :cond_3
    monitor-exit p0

    .line 947
    return-void

    .line 922
    .restart local v0       #i:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    .end local v0           #i:I
    :cond_5
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mRand:Lcom/miui/player/MediaPlaybackService$Shuffler;

    iget v6, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Lcom/miui/player/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v5

    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 946
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public openAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1042
    monitor-enter p0

    .line 1043
    if-nez p1, :cond_0

    .line 1044
    :try_start_0
    monitor-exit p0

    .line 1057
    :goto_0
    return-void

    .line 1047
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    .line 1048
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1049
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1050
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1052
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1054
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    .line 1056
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1249
    monitor-enter p0

    .line 1250
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1252
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState()V

    .line 1253
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mPausedInCall:Z

    if-eqz v0, :cond_0

    .line 1254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterCall:Z

    .line 1255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mPausedInCall:Z

    .line 1257
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1258
    const-string v0, "com.miui.player.playstatechanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1259
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1261
    :cond_1
    monitor-exit p0

    .line 1262
    return-void

    .line 1261
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 11

    .prologue
    .line 1144
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1146
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v2

    .line 1151
    .local v2, duration:J
    iget v7, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    const-wide/16 v7, 0x1f4

    cmp-long v7, v2, v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v7

    const-wide/16 v9, 0x1f4

    sub-long v9, v2, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 1153
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    .line 1156
    :cond_0
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->start()V

    .line 1158
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030014

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1159
    .local v6, views:Landroid/widget/RemoteViews;
    const v7, 0x7f0b0037

    const v8, 0x7f020066

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1160
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 1162
    const v7, 0x7f0b001b

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1163
    const v7, 0x7f0b0043

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1176
    :goto_0
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 1177
    .local v5, status:Landroid/app/Notification;
    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1178
    iget v7, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/app/Notification;->flags:I

    .line 1179
    const v7, 0x7f020066

    iput v7, v5, Landroid/app/Notification;->icon:I

    .line 1181
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.miui.music.PLAYBACK_VIEWER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v4, intent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1183
    const-string v7, "withtabs_2"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1184
    const-string v7, "acitve_tab_2"

    const v8, 0x7f0b002d

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1185
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1186
    const/4 v7, 0x1

    invoke-direct {p0, v7, v5}, Lcom/miui/player/MediaPlaybackService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 1187
    iget-boolean v7, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v7, :cond_1

    .line 1188
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1189
    const-string v7, "com.miui.player.playstatechanged"

    invoke-direct {p0, v7}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1198
    .end local v2           #duration:J
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #status:Landroid/app/Notification;
    .end local v6           #views:Landroid/widget/RemoteViews;
    :cond_1
    :goto_1
    return-void

    .line 1165
    .restart local v2       #duration:J
    .restart local v6       #views:Landroid/widget/RemoteViews;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, artist:Ljava/lang/String;
    const v7, 0x7f0b001b

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1167
    invoke-static {p0, v1}, Lcom/miui/player/helper/MediaFile;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, album:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/miui/player/helper/MediaFile;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    const v7, 0x7f0b0043

    const v8, 0x7f07005b

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/miui/player/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1192
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #artist:Ljava/lang/String;
    .end local v2           #duration:J
    .end local v6           #views:Landroid/widget/RemoteViews;
    :cond_3
    iget v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-gtz v7, :cond_1

    .line 1196
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/miui/player/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_1
.end method

.method public position()J
    .locals 2

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 1776
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1295
    monitor-enter p0

    .line 1296
    :try_start_0
    iget-boolean v2, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    if-eqz v2, :cond_0

    .line 1299
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 1300
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1301
    monitor-exit p0

    .line 1331
    :goto_0
    return-void

    .line 1303
    :cond_0
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    if-ne v2, v3, :cond_3

    .line 1305
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1306
    .local v0, histsize:I
    if-nez v0, :cond_1

    .line 1308
    monitor-exit p0

    goto :goto_0

    .line 1330
    .end local v0           #histsize:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1310
    .restart local v0       #histsize:I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1311
    .local v1, pos:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1325
    .end local v0           #histsize:I
    .end local v1           #pos:Ljava/lang/Integer;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1326
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->stop(Z)V

    .line 1327
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    .line 1328
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1329
    const-string v2, "com.miui.player.metachanged"

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1330
    monitor-exit p0

    goto :goto_0

    .line 1313
    :cond_3
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-lez v2, :cond_5

    .line 1314
    :goto_2
    sget v2, Lcom/miui/player/MediaPlaybackService;->mPrepareFailedCounter:I

    if-lez v2, :cond_4

    .line 1315
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1316
    sget v2, Lcom/miui/player/MediaPlaybackService;->mPrepareFailedCounter:I

    sub-int/2addr v2, v3

    sput v2, Lcom/miui/player/MediaPlaybackService;->mPrepareFailedCounter:I

    goto :goto_2

    .line 1318
    :cond_4
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1321
    :cond_5
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gez v2, :cond_2

    .line 1322
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 768
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 769
    new-instance v1, Lcom/miui/player/MediaPlaybackService$5;

    invoke-direct {v1, p0}, Lcom/miui/player/MediaPlaybackService$5;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 789
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 790
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 795
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public removeTrack(J)I
    .locals 4
    .parameter "id"

    .prologue
    .line 1605
    const/4 v1, 0x0

    .line 1606
    .local v1, numremoved:I
    monitor-enter p0

    .line 1607
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 1608
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1609
    invoke-direct {p0, v0, v0}, Lcom/miui/player/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1610
    add-int/lit8 v0, v0, -0x1

    .line 1607
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1613
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    if-lez v1, :cond_2

    .line 1615
    const-string v2, "com.miui.player.queuechanged"

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1617
    :cond_2
    return v1

    .line 1613
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1549
    invoke-direct {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 1550
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 1551
    const-string v1, "com.miui.player.queuechanged"

    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1553
    :cond_0
    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1786
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1787
    const-wide/16 p1, 0x0

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 1789
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 1790
    :cond_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 1792
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1701
    monitor-enter p0

    .line 1702
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->stop(Z)V

    .line 1703
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1704
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    .line 1705
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1706
    const-string v0, "com.miui.player.metachanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1707
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1708
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 1710
    :cond_0
    monitor-exit p0

    .line 1711
    return-void

    .line 1710
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 1649
    monitor-enter p0

    .line 1650
    :try_start_0
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    .line 1651
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    .line 1652
    monitor-exit p0

    .line 1653
    return-void

    .line 1652
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter "shufflemode"

    .prologue
    .line 1621
    monitor-enter p0

    .line 1622
    :try_start_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 1623
    monitor-exit p0

    .line 1642
    :goto_0
    return-void

    .line 1625
    :cond_0
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    .line 1626
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1627
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1629
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 1630
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1631
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->openCurrent()V

    .line 1632
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1633
    const-string v0, "com.miui.player.metachanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1634
    monitor-exit p0

    goto :goto_0

    .line 1641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1637
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    .line 1640
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    .line 1641
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1242
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->stop(Z)V

    .line 1243
    return-void
.end method
