.class public Lcom/miui/player/ui/MediaPlaybackActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;,
        Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;,
        Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;,
        Lcom/miui/player/ui/MediaPlaybackActivity$PlaylistItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTIVE_INDEXER_RES_OFF:[I = null

.field private static final ACTIVE_INDEXER_RES_ON:[I = null

.field private static final ACTIVE_INTERVAL:[I = null

.field private static final DISPLAY_VIEW_LAYOUT_ID:[I = null

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final USE_AS_RINGTONE:I = 0xe


# instance fields
.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private mActiveIndexer:Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;

.field private mAdapterSent:Z

.field private mAlbumController:Lcom/miui/player/helper/AlbumViewController;

.field private mArtistName:Landroid/widget/TextView;

.field private mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDeviceHasDpad:Z

.field private mDisplayAdapter:Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;

.field private mDisplayGallery:Landroid/widget/Gallery;

.field private mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

.field private mDuration:J

.field private mFfwdListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

.field private mFromTouch:Z

.field mGalleryGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSeekEventTime:J

.field private mLyricScroller:Lcom/miui/player/helper/LyricViewController;

.field private mNextButton:Lcom/miui/player/ui/RepeatingImageButton;

.field private mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

.field private mNowPlayingCursor:Landroid/database/Cursor;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mOneShot:Z

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

.field private mPlayingListViewWrap:Landroid/view/View;

.field private mPosOverride:J

.field private mPrevButton:Lcom/miui/player/ui/RepeatingImageButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

.field private mRepeatButton:Landroid/widget/ImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRewListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mService:Lcom/miui/player/IMediaPlaybackService;

.field private mShuffleButton:Landroid/widget/ImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Landroid/widget/TextView;

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field private osc:Landroid/content/ServiceConnection;

.field private paused:Z

.field private seekmethod:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->DISPLAY_VIEW_LAYOUT_ID:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INDEXER_RES_ON:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INDEXER_RES_OFF:[I

    .line 89
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INTERVAL:[I

    return-void

    .line 74
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x3t 0x7ft
        0x8t 0x0t 0x3t 0x7ft
        0x9t 0x0t 0x3t 0x7ft
    .end array-data

    .line 79
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 84
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 89
    :array_3
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    .line 95
    iput-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeeking:Z

    .line 97
    iput-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAdapterSent:Z

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 462
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->keyboard:[[I

    .line 705
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$1;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    .line 763
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J

    .line 765
    iput-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mFromTouch:Z

    .line 832
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$2;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 863
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$3;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 960
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$4;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 970
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$5;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

    .line 977
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$6;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

    .line 1201
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$8;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1244
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$9;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$9;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 1250
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$10;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 1256
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$11;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$11;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1262
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$12;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$12;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRewListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

    .line 1268
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$13;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$13;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mFfwdListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

    .line 138
    return-void

    .line 462
    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/player/ui/MediaPlaybackActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/IMediaPlaybackService;)Lcom/miui/player/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/model/TrackBrowserAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/model/TrackBrowserHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->DISPLAY_VIEW_LAYOUT_ID:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/AlbumViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/LyricViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getListView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->startPlayback()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/player/ui/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/miui/player/ui/MediaPlaybackActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/miui/player/ui/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mFromTouch:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mFromTouch:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/miui/player/ui/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/miui/player/ui/MediaPlaybackActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/miui/player/ui/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic access$2700(Lcom/miui/player/ui/MediaPlaybackActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/ui/MediaPlaybackActivity;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/player/ui/MediaPlaybackActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/ui/MediaPlaybackActivity;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/Gallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->initPlayingList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/ui/TouchInterceptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;

    return-object v0
.end method

.method static synthetic access$3200()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INDEXER_RES_ON:[I

    return-object v0
.end method

.method static synthetic access$3300()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INDEXER_RES_OFF:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1332
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1336
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 1337
    .local v0, mode:I
    if-nez v0, :cond_2

    .line 1338
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1348
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setRepeatButtonImage()V

    goto :goto_0

    .line 1349
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1339
    .restart local v0       #mode:I
    :cond_2
    if-ne v0, v2, :cond_3

    .line 1340
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1341
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1342
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1343
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_1

    .line 1346
    :cond_3
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->setRepeatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private disableSpectrumVisualizer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1501
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumViewController;->enableSpectrumVisualizer(Z)V

    .line 1502
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/LyricViewController;->enableSpectrumVisualizer(Z)V

    .line 1503
    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 1356
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1358
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->pause()V

    .line 1362
    :goto_0
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    .line 1363
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 1367
    :cond_0
    :goto_1
    return-void

    .line 1360
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getListView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 1119
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    if-nez v1, :cond_1

    .line 1120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListViewWrap:Landroid/view/View;

    .line 1123
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListViewWrap:Landroid/view/View;

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/TouchInterceptor;

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    .line 1125
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDropListener:Lcom/miui/player/ui/TouchInterceptor$DropListener;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/TouchInterceptor;->setDropListener(Lcom/miui/player/ui/TouchInterceptor$DropListener;)V

    .line 1126
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRemoveListener:Lcom/miui/player/ui/TouchInterceptor$RemoveListener;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/TouchInterceptor;->setRemoveListener(Lcom/miui/player/ui/TouchInterceptor$RemoveListener;)V

    .line 1128
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    invoke-virtual {v1, p0}, Lcom/miui/player/ui/TouchInterceptor;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1129
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    new-instance v2, Lcom/miui/player/ui/MediaPlaybackActivity$PlaylistItemClickListener;

    invoke-direct {v2, p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity$PlaylistItemClickListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/TouchInterceptor;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1131
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v1, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v1, p0}, Lcom/miui/player/model/TrackBrowserAdapter;->setBrowserSource(Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;)V

    .line 1133
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1136
    :cond_0
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;

    invoke-direct {v0, p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnGestureListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    .line 1137
    .local v0, localScrollGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mGalleryGestureDetector:Landroid/view/GestureDetector;

    .line 1138
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    new-instance v2, Lcom/miui/player/ui/MediaPlaybackActivity$7;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$7;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/TouchInterceptor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1148
    .end local v0           #localScrollGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListViewWrap:Landroid/view/View;

    return-object v1
.end method

.method private initPlayingList()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 992
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1014
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-nez v0, :cond_2

    .line 997
    new-instance v0, Lcom/miui/player/model/TrackBrowserAdapter;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    const v3, 0x7f03000e

    new-array v5, v1, [Ljava/lang/String;

    new-array v6, v1, [I

    move-object v1, p0

    move v8, v7

    move-object v9, v4

    move-object v10, v4

    invoke-direct/range {v0 .. v10}, Lcom/miui/player/model/TrackBrowserAdapter;-><init>(Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;Lcom/miui/player/model/TrackBrowserHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 1001
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v7}, Lcom/miui/player/ui/MediaPlaybackActivity;->getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingCursor:Landroid/database/Cursor;

    .line 1007
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1008
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->init(Landroid/database/Cursor;Z)V

    goto :goto_0

    .line 1010
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v7}, Lcom/miui/player/ui/MediaPlaybackActivity;->getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 778
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->paused:Z

    if-nez v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 780
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 783
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private refreshNow()J
    .locals 14

    .prologue
    .line 786
    const-wide/16 v6, 0x1f4

    .line 787
    .local v6, ret:J
    const/4 v3, 0x0

    .line 789
    .local v3, isPlaying:Z
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayGallery:Landroid/widget/Gallery;

    invoke-virtual {v9}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v8

    .line 790
    .local v8, selected:I
    if-gez v8, :cond_0

    .line 791
    const/4 v8, 0x0

    .line 794
    :cond_0
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v9, :cond_2

    .line 796
    :try_start_0
    iget-wide v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/miui/player/IMediaPlaybackService;->position()J

    move-result-wide v9

    move-wide v4, v9

    .line 798
    .local v4, pos:J
    :goto_0
    sget-object v9, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INTERVAL:[I

    aget v9, v9, v8

    int-to-long v1, v9

    .line 799
    .local v1, interval:J
    rem-long v9, v4, v1

    sub-long v6, v1, v9

    .line 800
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-ltz v9, :cond_5

    iget-wide v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    .line 801
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v10, 0x1f4

    add-long/2addr v10, v4

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const v12, 0x7f070002

    invoke-static {p0, v10, v11, v12}, Lcom/miui/player/MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    .line 805
    if-eqz v3, :cond_4

    .line 806
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    :goto_1
    iget-boolean v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mFromTouch:Z

    if-nez v9, :cond_1

    .line 812
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v4

    iget-wide v12, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDuration:J

    div-long/2addr v10, v12

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 815
    :cond_1
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    invoke-virtual {v9, v4, v5}, Lcom/miui/player/helper/LyricViewController;->refreshLyric(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v1           #interval:J
    .end local v4           #pos:J
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateSpectrumVisualizer()V

    .line 829
    return-wide v6

    .line 796
    :cond_3
    :try_start_1
    iget-wide v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J

    move-wide v4, v9

    goto :goto_0

    .line 808
    .restart local v1       #interval:J
    .restart local v4       #pos:J
    :cond_4
    const-wide/16 v6, 0x1f4

    goto :goto_1

    .line 818
    :cond_5
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-string v10, "--:--"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 822
    .end local v1           #interval:J
    .end local v4           #pos:J
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 823
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private scanBackward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 1370
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1407
    :goto_0
    return-void

    .line 1373
    :cond_0
    if-nez p1, :cond_1

    .line 1374
    :try_start_0
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1375
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1376
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeeking:Z

    goto :goto_0

    .line 1405
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1378
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeeking:Z

    .line 1379
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 1381
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 1386
    :goto_1
    iget-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 1387
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_2

    .line 1389
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/IMediaPlaybackService;->prev()V

    .line 1390
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 1391
    .local v0, duration:J
    iget-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1392
    add-long/2addr v2, v0

    .line 1394
    .end local v0           #duration:J
    :cond_2
    iget-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 1395
    :cond_3
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/miui/player/IMediaPlaybackService;->seek(J)J

    .line 1396
    iput-wide p2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1398
    :cond_4
    if-ltz p1, :cond_6

    .line 1399
    iput-wide v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J

    .line 1403
    :goto_2
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    goto :goto_0

    .line 1384
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 1401
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    .line 1410
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1447
    :goto_0
    return-void

    .line 1413
    :cond_0
    if-nez p1, :cond_1

    .line 1414
    :try_start_0
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1415
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1416
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeeking:Z

    goto :goto_0

    .line 1445
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1418
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeeking:Z

    .line 1419
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 1421
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 1426
    :goto_1
    iget-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 1427
    .local v2, newpos:J
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 1428
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 1430
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/IMediaPlaybackService;->next()V

    .line 1431
    iget-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1432
    sub-long/2addr v2, v0

    .line 1434
    :cond_2
    iget-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 1435
    :cond_3
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/miui/player/IMediaPlaybackService;->seek(J)J

    .line 1436
    iput-wide p2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1438
    :cond_4
    if-ltz p1, :cond_6

    .line 1439
    iput-wide v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J

    .line 1443
    :goto_2
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    goto :goto_0

    .line 1424
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 1441
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private seekMethod1(I)Z
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 486
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_b

    .line 487
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    .line 488
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_9

    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, dir:I
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastX:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    if-ne v2, v3, :cond_1

    .line 492
    const/4 v0, 0x0

    .line 512
    :cond_0
    :goto_2
    iput v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastX:I

    .line 513
    iput v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    .line 515
    :try_start_0
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/miui/player/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_3
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    .line 519
    const/4 v3, 0x1

    .line 525
    .end local v0           #dir:I
    .end local v2           #y:I
    :goto_4
    return v3

    .line 493
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_2

    .line 494
    const/4 v0, 0x1

    goto :goto_2

    .line 495
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_3

    .line 496
    const/4 v0, -0x1

    goto :goto_2

    .line 498
    :cond_3
    if-ne v2, v4, :cond_4

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_4

    .line 499
    const/4 v0, -0x1

    goto :goto_2

    .line 500
    :cond_4
    if-ne v2, v4, :cond_5

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_5

    .line 501
    const/4 v0, 0x1

    goto :goto_2

    .line 503
    :cond_5
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_6

    if-gt v1, v6, :cond_6

    .line 504
    const/4 v0, 0x1

    goto :goto_2

    .line 505
    :cond_6
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_7

    if-lt v1, v7, :cond_7

    .line 506
    const/4 v0, -0x1

    goto :goto_2

    .line 508
    :cond_7
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_8

    if-gt v1, v6, :cond_8

    .line 509
    const/4 v0, -0x1

    goto :goto_2

    .line 510
    :cond_8
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_0

    if-lt v1, v7, :cond_0

    .line 511
    const/4 v0, 0x1

    goto :goto_2

    .line 487
    .end local v0           #dir:I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 523
    .end local v2           #y:I
    :cond_b
    iput v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastX:I

    .line 524
    iput v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->lastY:I

    .line 525
    const/4 v3, 0x0

    goto :goto_4

    .line 516
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private seekMethod2(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 529
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v2, :cond_0

    move v2, v3

    .line 542
    :goto_0
    return v2

    .line 531
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 532
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->keyboard:[[I

    aget-object v2, v2, v3

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 533
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 535
    .local v1, seekpercentage:I
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/miui/player/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_2
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    .line 539
    const/4 v2, 0x1

    goto :goto_0

    .line 531
    .end local v1           #seekpercentage:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 542
    goto :goto_0

    .line 536
    .restart local v1       #seekpercentage:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private setRepeatButtonImage()V
    .locals 2

    .prologue
    .line 1276
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1284
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1289
    :goto_0
    return-void

    .line 1278
    :pswitch_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1281
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShuffleButtonImage()V
    .locals 2

    .prologue
    .line 1293
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1301
    :pswitch_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1306
    :goto_0
    return-void

    .line 1295
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1304
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1298
    :pswitch_2
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startPlayback()V
    .locals 10

    .prologue
    .line 671
    iget-object v7, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v7, :cond_0

    .line 703
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 674
    .local v2, intent:Landroid/content/Intent;
    const-string v1, ""

    .line 675
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 676
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 679
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, scheme:Ljava/lang/String;
    const-string v7, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 681
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 686
    :goto_1
    :try_start_0
    const-string v7, "content"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "media"

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 688
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    .line 690
    :cond_2
    iget-object v7, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/miui/player/IMediaPlaybackService;->stop()V

    .line 691
    iget-object v7, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    iget-boolean v8, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    invoke-interface {v7, v1, v8}, Lcom/miui/player/IMediaPlaybackService;->openFile(Ljava/lang/String;Z)V

    .line 692
    iget-object v7, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/miui/player/IMediaPlaybackService;->play()V

    .line 693
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v5           #scheme:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo()V

    .line 700
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v3

    .line 701
    .local v3, next:J
    invoke-direct {p0, v3, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    goto :goto_0

    .line 683
    .end local v3           #next:J
    .restart local v5       #scheme:Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 694
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 695
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "MediaPlaybackActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t start playback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1309
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1313
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 1314
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 1315
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1316
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1317
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1318
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 1326
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_0

    .line 1327
    .end local v0           #shuffle:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1320
    .restart local v0       #shuffle:I
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 1322
    :cond_3
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->setShuffleMode(I)V

    goto :goto_1

    .line 1324
    :cond_4
    const-string v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSpectrumVisualizer()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1507
    const/4 v0, 0x0

    .line 1509
    .local v0, isPlaying:Z
    :try_start_0
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 1510
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1514
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    move v2, v4

    .line 1515
    .local v2, visibility:I
    :goto_1
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayGallery:Landroid/widget/Gallery;

    invoke-virtual {v3}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    .line 1516
    .local v1, pos:I
    if-gez v1, :cond_1

    .line 1517
    const/4 v1, 0x0

    .line 1520
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1538
    :goto_2
    return-void

    .end local v1           #pos:I
    .end local v2           #visibility:I
    :cond_2
    move v2, v5

    .line 1514
    goto :goto_1

    .line 1522
    .restart local v1       #pos:I
    .restart local v2       #visibility:I
    :pswitch_0
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    invoke-virtual {v3, v0}, Lcom/miui/player/helper/AlbumViewController;->enableSpectrumVisualizer(Z)V

    .line 1523
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    invoke-virtual {v3, v2}, Lcom/miui/player/helper/AlbumViewController;->setSpectrumVisualizerVisible(I)V

    .line 1524
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    invoke-virtual {v3, v4}, Lcom/miui/player/helper/LyricViewController;->enableSpectrumVisualizer(Z)V

    .line 1525
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    invoke-virtual {v3, v5}, Lcom/miui/player/helper/LyricViewController;->setSpectrumVisualizerVisible(I)V

    goto :goto_2

    .line 1528
    :pswitch_1
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    invoke-virtual {v3, v0}, Lcom/miui/player/helper/LyricViewController;->enableSpectrumVisualizer(Z)V

    .line 1529
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    invoke-virtual {v3, v2}, Lcom/miui/player/helper/LyricViewController;->setSpectrumVisualizerVisible(I)V

    .line 1530
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    invoke-virtual {v3, v4}, Lcom/miui/player/helper/AlbumViewController;->enableSpectrumVisualizer(Z)V

    .line 1531
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    invoke-virtual {v3, v5}, Lcom/miui/player/helper/AlbumViewController;->setSpectrumVisualizerVisible(I)V

    goto :goto_2

    .line 1534
    :pswitch_2
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    invoke-virtual {v3, v4}, Lcom/miui/player/helper/AlbumViewController;->enableSpectrumVisualizer(Z)V

    .line 1535
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    invoke-virtual {v3, v4}, Lcom/miui/player/helper/LyricViewController;->enableSpectrumVisualizer(Z)V

    goto :goto_2

    .line 1512
    .end local v1           #pos:I
    .end local v2           #visibility:I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateTrackInfo()V
    .locals 14

    .prologue
    const-string v0, "<unknown>"

    .line 889
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 939
    :goto_0
    return-void

    .line 893
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 894
    .local v8, path:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 895
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 936
    .end local v8           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 937
    .local v7, ex:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V

    goto :goto_0

    .line 899
    .end local v7           #ex:Landroid/os/RemoteException;
    .restart local v8       #path:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v9

    .line 900
    .local v9, trackName:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v6

    .line 901
    .local v6, artistName:Ljava/lang/String;
    const-string v0, "<unknown>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mUnknownArtistName:Ljava/lang/String;

    .line 905
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    .line 906
    .local v5, albumName:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 907
    .local v1, albumid:J
    const-string v0, "<unknown>"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mUnknownAlbumName:Ljava/lang/String;

    .line 909
    const-wide/16 v1, -0x1

    .line 912
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 913
    .local v3, songid:J
    const-wide/16 v10, 0x0

    cmp-long v0, v3, v10

    if-gez v0, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v10, "http://"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 916
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v10, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    new-instance v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .end local v1           #albumid:J
    .end local v3           #songid:J
    invoke-virtual {v10, v0}, Lcom/miui/player/helper/AlbumViewController;->setAlbumInfo(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V

    .line 927
    :goto_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->duration()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDuration:J

    .line 929
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    iget-wide v10, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDuration:J

    invoke-virtual {v0, v9, v6, v10, v11}, Lcom/miui/player/helper/LyricViewController;->updateLyric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 931
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayAdapter:Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 933
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    iget-wide v10, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const v12, 0x7f070002

    invoke-static {p0, v10, v11, v12}, Lcom/miui/player/MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 921
    .restart local v1       #albumid:J
    .restart local v3       #songid:J
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    iget-object v10, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    new-instance v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/miui/player/helper/AlbumViewController;->setAlbumInfo(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private useDpadMusicControl()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDeviceHasDpad:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPrevButton:Lcom/miui/player/ui/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/miui/player/ui/RepeatingImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNextButton:Lcom/miui/player/ui/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/miui/player/ui/RepeatingImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    :cond_0
    const/4 v0, 0x1

    .line 598
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    const-string v1, "nowplaying"

    invoke-virtual {v0, p1, v1}, Lcom/miui/player/model/TrackBrowserHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPlayList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1084
    const-string v0, "nowplaying"

    return-object v0
.end method

.method public getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 4
    .parameter "queryhandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    .line 1023
    if-nez p1, :cond_0

    .line 1024
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1027
    :cond_0
    const/4 v0, 0x0

    .line 1029
    .local v0, ret:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 1030
    new-instance v0, Lcom/miui/player/model/TrackNowPlayingCursor;

    .end local v0           #ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    sget-object v3, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/model/TrackNowPlayingCursor;-><init>(Landroid/content/Context;Lcom/miui/player/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 1034
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 1035
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->init(Landroid/database/Cursor;Z)V

    .line 1038
    :cond_2
    return-object v0
.end method

.method public getTrackListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    return-object v0
.end method

.method public init(Landroid/database/Cursor;Z)V
    .locals 5
    .parameter "cursor"
    .parameter "isCookie"

    .prologue
    const-string v3, "com.miui.player.metachanged"

    .line 1043
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-nez v2, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/player/model/TrackBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1048
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1049
    .local v1, f:Landroid/content/IntentFilter;
    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1050
    const-string v2, "com.miui.player.queuechanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1052
    :try_start_0
    sget-object v2, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 1053
    .local v0, cur:I
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    if-eqz v2, :cond_1

    .line 1054
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    invoke-virtual {v2, v0}, Lcom/miui/player/ui/TouchInterceptor;->setSelection(I)V

    .line 1056
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1057
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.player.metachanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1058
    .end local v0           #cur:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 1064
    const/4 v0, 0x1

    return v0
.end method

.method public isTrackCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingCursor:Landroid/database/Cursor;

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
    .line 446
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 451
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 452
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 453
    const/4 v3, 0x1

    new-array v0, v3, [J

    .line 454
    .local v0, list:[J
    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioId()J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 455
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 456
    .local v1, playlist:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-virtual {v0, v1, p1}, Lcom/miui/player/model/TrackBrowserHelper;->onContextItemSelected(Lcom/miui/player/IMediaPlaybackService;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const/4 v0, 0x1

    .line 1113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const-wide/16 v12, 0x104

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->setVolumeControlStream(I)V

    .line 145
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->setFormat(I)V

    .line 146
    const v4, 0x7f07002d

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mUnknownAlbumName:Ljava/lang/String;

    .line 147
    const v4, 0x7f07002c

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mUnknownArtistName:Ljava/lang/String;

    .line 149
    const v4, 0x7f07007f

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, urlPattern:Ljava/lang/String;
    new-instance v4, Lcom/miui/player/helper/AlbumViewController;

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mUnknownAlbumName:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mUnknownArtistName:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/miui/player/helper/AlbumViewController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    .line 154
    invoke-virtual {p0, v9}, Lcom/miui/player/ui/MediaPlaybackActivity;->requestWindowFeature(I)Z

    .line 155
    const v4, 0x7f030006

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->setContentView(I)V

    .line 156
    const v4, 0x7f0b002d

    invoke-static {p0, v4}, Lcom/miui/player/MusicUtils;->updateButtonBar2(Landroid/app/Activity;I)Z

    .line 158
    const v4, 0x7f0b0019

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 159
    const v4, 0x7f0b001a

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    .line 160
    const v4, 0x102000d

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 162
    const v4, 0x7f0b001d

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    .line 163
    const v4, 0x7f0b001b

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    .line 165
    const v4, 0x7f0b0014

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Gallery;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayGallery:Landroid/widget/Gallery;

    .line 166
    new-instance v4, Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;

    invoke-direct {v4, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayAdapter:Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;

    .line 167
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayGallery:Landroid/widget/Gallery;

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayAdapter:Lcom/miui/player/ui/MediaPlaybackActivity$DisplayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 168
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayGallery:Landroid/widget/Gallery;

    invoke-virtual {v4, v8}, Landroid/widget/Gallery;->setSelection(I)V

    .line 169
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayGallery:Landroid/widget/Gallery;

    new-instance v5, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;

    invoke-direct {v5, p0, v11}, Lcom/miui/player/ui/MediaPlaybackActivity$GalleryOnItemSelected;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 171
    const v4, 0x7f0b002e

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/player/ui/RepeatingImageButton;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPrevButton:Lcom/miui/player/ui/RepeatingImageButton;

    .line 172
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPrevButton:Lcom/miui/player/ui/RepeatingImageButton;

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRewListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

    invoke-virtual {v4, v5, v12, v13}, Lcom/miui/player/ui/RepeatingImageButton;->setRepeatListener(Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;J)V

    .line 173
    const v4, 0x7f0b002f

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    .line 174
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 175
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v4, 0x7f0b0030

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/player/ui/RepeatingImageButton;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNextButton:Lcom/miui/player/ui/RepeatingImageButton;

    .line 177
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNextButton:Lcom/miui/player/ui/RepeatingImageButton;

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mFfwdListener:Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;

    invoke-virtual {v4, v5, v12, v13}, Lcom/miui/player/ui/RepeatingImageButton;->setRepeatListener(Lcom/miui/player/ui/RepeatingImageButton$RepeatListener;J)V

    .line 178
    iput v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->seekmethod:I

    .line 180
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->navigation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v4, v9

    :goto_0
    iput-boolean v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDeviceHasDpad:Z

    .line 182
    const v4, 0x7f0b001c

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 183
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v4, 0x7f0b001e

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    .line 185
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v4, 0x7f0b002c

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, playerCommon:Landroid/view/View;
    invoke-virtual {v1, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 192
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    instance-of v4, v4, Landroid/widget/SeekBar;

    if-eqz v4, :cond_0

    .line 195
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    check-cast v2, Landroid/widget/SeekBar;

    .line 196
    .local v2, seeker:Landroid/widget/SeekBar;
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 198
    .end local v2           #seeker:Landroid/widget/SeekBar;
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 200
    if-eqz p1, :cond_2

    .line 201
    const-string v4, "oneshot"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    .line 206
    :goto_1
    new-instance v4, Lcom/miui/player/helper/LyricViewController;

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayGallery:Landroid/widget/Gallery;

    invoke-direct {v4, p0, v5}, Lcom/miui/player/helper/LyricViewController;-><init>(Landroid/app/Activity;Landroid/widget/Gallery;)V

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricScroller:Lcom/miui/player/helper/LyricViewController;

    .line 208
    new-instance v4, Lcom/miui/player/model/TrackBrowserHelper;

    invoke-direct {v4, p0}, Lcom/miui/player/model/TrackBrowserHelper;-><init>(Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;)V

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    .line 210
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/model/TrackBrowserAdapter;

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 212
    new-instance v4, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;

    invoke-direct {v4, p0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:Lcom/miui/player/ui/MediaPlaybackActivity$ActiveIndexer;

    .line 214
    return-void

    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #playerCommon:Landroid/view/View;
    :cond_1
    move v4, v8

    .line 180
    goto :goto_0

    .line 203
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #playerCommon:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "oneshot"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/player/model/TrackBrowserHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1105
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 322
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 328
    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    if-nez v1, :cond_0

    .line 329
    const/4 v1, 0x6

    const v2, 0x7f070004

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020018

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 331
    const/16 v1, 0x8

    const v2, 0x7f070006

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 334
    const v1, 0x7f070032

    invoke-interface {p1, v5, v6, v5, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 336
    .local v0, sub:Landroid/view/SubMenu;
    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 340
    const/16 v1, 0xe

    const v2, 0x7f07002f

    invoke-interface {p1, v6, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02001c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 342
    const/16 v1, 0xa

    const v2, 0x7f070008

    invoke-interface {p1, v6, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020017

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 344
    const/16 v1, 0xd

    const v2, 0x7f070054

    invoke-interface {p1, v6, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move v1, v6

    .line 347
    .end local v0           #sub:Landroid/view/SubMenu;
    :goto_0
    return v1

    :cond_0
    move v1, v5

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/AlbumViewController;

    invoke-virtual {v1}, Lcom/miui/player/helper/AlbumViewController;->shutdowon()V

    .line 302
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 303
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 305
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 310
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    :cond_1
    iput-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 318
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 603
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 605
    .local v0, repcnt:I
    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->seekmethod:I

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->seekMethod1(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v5

    .line 662
    :goto_0
    return v1

    .line 605
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->seekMethod2(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 662
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 631
    :sswitch_0
    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->seekmethod:I

    sub-int v1, v5, v1

    iput v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->seekmethod:I

    move v1, v5

    .line 632
    goto :goto_0

    .line 635
    :sswitch_1
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPrevButton:Lcom/miui/player/ui/RepeatingImageButton;

    invoke-virtual {v1}, Lcom/miui/player/ui/RepeatingImageButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 639
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPrevButton:Lcom/miui/player/ui/RepeatingImageButton;

    invoke-virtual {v1}, Lcom/miui/player/ui/RepeatingImageButton;->requestFocus()Z

    .line 641
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->scanBackward(IJ)V

    move v1, v5

    .line 642
    goto :goto_0

    .line 644
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 647
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNextButton:Lcom/miui/player/ui/RepeatingImageButton;

    invoke-virtual {v1}, Lcom/miui/player/ui/RepeatingImageButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 648
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNextButton:Lcom/miui/player/ui/RepeatingImageButton;

    invoke-virtual {v1}, Lcom/miui/player/ui/RepeatingImageButton;->requestFocus()Z

    .line 650
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->scanForward(IJ)V

    move v1, v5

    .line 651
    goto :goto_0

    .line 654
    :sswitch_3
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->toggleShuffle()V

    move v1, v5

    .line 655
    goto :goto_0

    .line 659
    :sswitch_4
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->doPauseResume()V

    move v1, v5

    .line 660
    goto :goto_0

    .line 608
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x2f -> :sswitch_3
        0x3e -> :sswitch_4
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    .line 548
    packed-switch p1, :pswitch_data_0

    .line 590
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 550
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 554
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 556
    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->prev()V

    .line 567
    :cond_1
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeeking:Z

    .line 568
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J

    move v0, v5

    .line 569
    goto :goto_1

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/player/IMediaPlaybackService;->seek(J)J

    goto :goto_2

    .line 588
    :catch_0
    move-exception v0

    goto :goto_0

    .line 562
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->scanBackward(IJ)V

    .line 563
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 564
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    goto :goto_2

    .line 571
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_4

    .line 575
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 576
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 577
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->next()V

    .line 584
    :cond_4
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeeking:Z

    .line 585
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPosOverride:J

    move v0, v5

    .line 586
    goto :goto_1

    .line 579
    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->scanForward(IJ)V

    .line 580
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 581
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartSeekPos:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 283
    const-string v0, "oneshot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    .line 284
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x1

    .line 372
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 430
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_1
    return v6

    .line 374
    :pswitch_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v1, intent:Landroid/content/Intent;
    const-class v6, Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V

    goto :goto_0

    .line 428
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 381
    :pswitch_2
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v6, :cond_0

    .line 382
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    :cond_0
    move v6, v11

    .line 384
    goto :goto_1

    .line 387
    :pswitch_3
    invoke-static {}, Lcom/miui/player/MusicUtils;->togglePartyShuffle()V

    .line 388
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_0

    .line 392
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 393
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v6, Lcom/miui/player/ui/CreatePlaylist;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 394
    const/4 v6, 0x4

    invoke-virtual {p0, v1, v6}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v6, v11

    .line 395
    goto :goto_1

    .line 399
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_5
    const/4 v6, 0x1

    new-array v2, v6, [J

    .line 400
    .local v2, list:[J
    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioId()J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 401
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "playlist"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 402
    .local v3, playlist:J
    invoke-static {p0, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    move v6, v11

    .line 403
    goto :goto_1

    .line 407
    .end local v2           #list:[J
    .end local v3           #playlist:J
    :pswitch_6
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v6, :cond_1

    .line 408
    const/4 v6, 0x1

    new-array v2, v6, [J

    .line 409
    .restart local v2       #list:[J
    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioId()J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "description"

    const v7, 0x7f07000d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v6, "items"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 414
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 415
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v6, Lcom/miui/player/ui/DeleteItems;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 416
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 417
    const/4 v6, -0x1

    invoke-virtual {p0, v1, v6}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:[J
    :cond_1
    move v6, v11

    .line 419
    goto/16 :goto_1

    .line 422
    :pswitch_7
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v5, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v11

    .line 424
    goto/16 :goto_1

    .line 372
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 296
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->disableSpectrumVisualizer()V

    .line 297
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f020019

    const/4 v4, 0x1

    .line 352
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 353
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    .line 355
    .local v2, shuffle:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 356
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 357
    const v3, 0x7f070007

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 363
    .end local v2           #shuffle:I
    :cond_0
    :goto_0
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 364
    .local v1, km:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 365
    return v4

    .line 359
    .end local v1           #km:Landroid/app/KeyguardManager;
    .restart local v2       #shuffle:I
    :cond_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 360
    const v3, 0x7f070006

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 364
    .end local v2           #shuffle:I
    .restart local v1       #km:Landroid/app/KeyguardManager;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo()V

    .line 290
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->refreshCommonBar(Landroid/app/Activity;)V

    .line 291
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 231
    .local v0, a:Lcom/miui/player/model/TrackBrowserAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAdapterSent:Z

    .line 232
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 253
    const-string v0, "oneshot"

    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 260
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->paused:Z

    .line 262
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v3}, Lcom/miui/player/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v3, "com.miui.player.metachanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v3, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v3, "com.miui.player.refreshui"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v3, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo()V

    .line 276
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v1

    .line 277
    .local v1, next:J
    invoke-direct {p0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 278
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 237
    iput-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->paused:Z

    .line 238
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getChangingConfigurations()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 249
    return-void

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTrackCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingCursor:Landroid/database/Cursor;

    .line 1075
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayingListView:Lcom/miui/player/ui/TouchInterceptor;

    invoke-virtual {v0}, Lcom/miui/player/ui/TouchInterceptor;->invalidateViews()V

    .line 1100
    :cond_1
    return-void
.end method
