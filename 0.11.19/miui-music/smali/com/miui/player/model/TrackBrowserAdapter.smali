.class public Lcom/miui/player/model/TrackBrowserAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "TrackBrowserAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;,
        Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;,
        Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CURSOR_COLS:[Ljava/lang/String; = null

.field private static final PROGRESS_BAR_HEIGHT:I = 0x4


# instance fields
.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

.field private mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mDisableNowPlayingIndicator:Z

.field mDurationIdx:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field private mProgressLP:Landroid/widget/RelativeLayout$LayoutParams;

.field private mQueryHandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

.field mShowArtist:Z

.field mTitleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;Lcom/miui/player/model/TrackBrowserHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "browserSource"
    .parameter "browserHelper"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "disablenowplayingindicator"
    .parameter "artistId"
    .parameter "albumId"

    .prologue
    .line 145
    invoke-interface {p1}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraintIsValid:Z

    .line 146
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    .line 147
    invoke-direct {p0, p4}, Lcom/miui/player/model/TrackBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 148
    iput-boolean p7, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsNowPlaying:Z

    .line 149
    iput-boolean p8, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mDisableNowPlayingIndicator:Z

    .line 151
    new-instance v0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    invoke-interface {p1}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;-><init>(Lcom/miui/player/model/TrackBrowserAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mQueryHandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    .line 153
    if-eqz p9, :cond_0

    if-eqz p10, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mShowArtist:Z

    .line 154
    iput-object p2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    .line 155
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mProgressLP:Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mProgressLP:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/player/model/TrackBrowserAdapter;)Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mTitleIdx:I

    .line 174
    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mArtistIdx:I

    .line 175
    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mDurationIdx:I

    .line 176
    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mAlbumIdx:I

    .line 178
    :try_start_0
    const-string v2, "audio_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mAudioIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v2, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 192
    :cond_0
    :goto_1
    return-void

    .line 180
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 181
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mAudioIdIdx:I

    goto :goto_0

    .line 186
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v2}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v2}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, alpha:Ljava/lang/String;
    new-instance v2, Lcom/miui/player/ui/MusicAlphabetIndexer;

    iget v3, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mTitleIdx:I

    invoke-direct {v2, p1, v3, v0}, Lcom/miui/player/ui/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;

    .line 216
    .local v20, vh:Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mTitleIdx:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 217
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/widget/TextView;->setText([CII)V

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mDurationIdx:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    .line 220
    .local v19, secs:I
    if-nez v19, :cond_4

    .line 221
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object v7, v0

    .line 227
    .local v7, builder:Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mShowArtist:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mArtistIdx:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/miui/player/helper/MediaFile;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 236
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 237
    .local v14, len:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v14

    if-ge v0, v1, :cond_0

    .line 238
    move v0, v14

    new-array v0, v0, [C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    .line 240
    :cond_0
    const/16 v21, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v7

    move/from16 v1, v21

    move v2, v14

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 241
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 243
    const-wide/16 v10, -0x1

    .line 244
    .local v10, id:J
    const/16 v18, 0x0

    .line 245
    .local v18, progress:I
    sget-object v21, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v21, :cond_1

    .line 248
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsNowPlaying:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 249
    sget-object v21, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface/range {v21 .. v21}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide v10, v0

    .line 254
    :goto_2
    sget-object v21, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface/range {v21 .. v21}, Lcom/miui/player/IMediaPlaybackService;->position()J

    move-result-wide v16

    .line 255
    .local v16, pos:J
    sget-object v21, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface/range {v21 .. v21}, Lcom/miui/player/IMediaPlaybackService;->duration()J

    move-result-wide v8

    .line 256
    .local v8, duration:J
    const-wide/16 v21, 0x0

    cmp-long v21, v8, v21

    if-lez v21, :cond_1

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v21, v21, v16

    div-long v21, v21, v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v18, v0

    .line 281
    .end local v8           #duration:J
    .end local v16           #pos:J
    :cond_1
    :goto_3
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->play_icon:Landroid/widget/ImageView;

    move-object v13, v0

    .line 282
    .local v13, iv:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsNowPlaying:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v21, v21, v10

    if-eqz v21, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsNowPlaying:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mDisableNowPlayingIndicator:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mAudioIdIdx:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    cmp-long v21, v21, v10

    if-nez v21, :cond_7

    :cond_3
    const/16 v21, 0x1

    move/from16 v12, v21

    .line 285
    .local v12, isPlayingItem:Z
    :goto_4
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->isEditMode()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 288
    const/16 v21, 0x0

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    const v21, 0x7f020020

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->progressbar:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :goto_5
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    move-object v13, v0

    .line 306
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v16

    .line 307
    .local v16, pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mAudioIdIdx:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 308
    .local v5, audioId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v13

    move-wide v2, v5

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/player/model/TrackBrowserHelper;->setFavoritePlaylistListener(Landroid/view/View;JI)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide v2, v5

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/player/model/TrackBrowserHelper;->setFavoritePlaylistListener(Landroid/view/View;JI)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/FavoritePlaylist;->contains(Landroid/content/Context;J)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 312
    const v21, 0x7f020014

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    :goto_6
    return-void

    .line 223
    .end local v5           #audioId:J
    .end local v7           #builder:Ljava/lang/StringBuilder;
    .end local v10           #id:J
    .end local v12           #isPlayingItem:Z
    .end local v13           #iv:Landroid/widget/ImageView;
    .end local v14           #len:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #pos:I
    .end local v18           #progress:I
    :cond_4
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/miui/player/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 233
    .restart local v7       #builder:Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mAlbumIdx:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 234
    .restart local v15       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/miui/player/helper/MediaFile;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 251
    .restart local v10       #id:J
    .restart local v14       #len:I
    .restart local v18       #progress:I
    :cond_6
    :try_start_1
    sget-object v21, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface/range {v21 .. v21}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    goto/16 :goto_2

    .line 282
    .restart local v13       #iv:Landroid/widget/ImageView;
    :cond_7
    const/16 v21, 0x0

    move/from16 v12, v21

    goto/16 :goto_4

    .line 292
    .restart local v12       #isPlayingItem:Z
    :cond_8
    if-eqz v12, :cond_9

    .line 293
    const v21, 0x7f02005a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 294
    const v21, 0x7f020051

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    const/16 v21, 0x0

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->progressbar:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mProgressLP:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 298
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->progressbar:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mProgressLP:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 300
    :cond_9
    const v21, 0x7f020036

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->progressbar:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 314
    .restart local v5       #audioId:J
    .restart local v16       #pos:I
    :cond_a
    const v21, 0x7f020013

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 259
    .end local v5           #audioId:J
    .end local v12           #isPlayingItem:Z
    .end local v13           #iv:Landroid/widget/ImageView;
    .end local v16           #pos:I
    :catch_0
    move-exception v21

    goto/16 :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->isTrackCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->setTrackCursor(Landroid/database/Cursor;)V

    .line 322
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/miui/player/model/TrackBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 325
    :cond_0
    return-void
.end method

.method public getCursorColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "section"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 352
    .local v0, pos:I
    return v0
.end method

.method public getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mQueryHandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;-><init>()V

    .line 199
    .local v1, vh:Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;
    const v2, 0x7f0b0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->play_icon:Landroid/widget/ImageView;

    .line 200
    const v2, 0x7f0b003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 201
    const v2, 0x7f0b003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 202
    const v2, 0x7f0b0003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 203
    const v2, 0x7f0b000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 204
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 205
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    .line 206
    const v2, 0x7f0b0044

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->progressbar:Landroid/view/View;

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/model/TrackBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 337
    :goto_0
    return-object v2

    .line 334
    :cond_2
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    iget-object v3, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mQueryHandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 335
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 336
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 337
    goto :goto_0
.end method

.method public setBrowserSource(Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;)V
    .locals 0
    .parameter "newSource"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    .line 165
    return-void
.end method
