.class public Lcom/miui/player/model/TrackNowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "TrackNowPlayingCursor.java"


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[J

.field private mNowPlaying:[J

.field private mService:Lcom/miui/player/IMediaPlaybackService;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "service"
    .parameter "cols"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContext:Landroid/content/Context;

    .line 19
    iput-object p3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 21
    invoke-direct {p0}, Lcom/miui/player/model/TrackNowPlayingCursor;->makeNowPlayingCursor()V

    .line 22
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 15

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    .line 32
    iget v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_1
    return-void

    .line 28
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 29
    .local v8, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    goto :goto_0

    .line 36
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v14, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    if-ge v9, v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    aget-wide v0, v0, v9

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    iget v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v9, v0, :cond_2

    .line 41
    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 44
    :cond_3
    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 50
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    goto :goto_1

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 56
    .local v11, size:I
    new-array v0, v11, [J

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    .line 57
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 59
    .local v6, colidx:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_5

    .line 60
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v9

    .line 61
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 59
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurPos:I

    .line 71
    const/4 v10, 0x0

    .line 72
    .local v10, removed:I
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    const/4 v1, 0x1

    sub-int v9, v0, v1

    :goto_4
    if-ltz v9, :cond_7

    .line 73
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    aget-wide v12, v0, v9

    .line 74
    .local v12, trackid:J
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v0, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    .line 75
    .local v7, crsridx:I
    if-gez v7, :cond_6

    .line 78
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0, v12, v13}, Lcom/miui/player/IMediaPlaybackService;->removeTrack(J)I

    move-result v0

    add-int/2addr v10, v0

    .line 72
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 81
    .end local v7           #crsridx:I
    .end local v12           #trackid:J
    :cond_7
    if-lez v10, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    .line 83
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    .line 84
    iget v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 89
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 90
    .restart local v8       #ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    goto/16 :goto_1
.end method


# virtual methods
.method public deactivate()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 205
    :cond_0
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 166
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/model/TrackNowPlayingCursor;->onChange(Z)V

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 177
    :goto_0
    return-wide v1

    .line 175
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 176
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/model/TrackNowPlayingCursor;->onChange(Z)V

    .line 177
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/model/TrackNowPlayingCursor;->onChange(Z)V

    .line 152
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0, p1, p2}, Lcom/miui/player/IMediaPlaybackService;->moveQueueItem(II)V

    .line 140
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    .line 141
    const/4 v0, -0x1

    iget v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/model/TrackNowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v4, 0x1

    .line 101
    if-ne p1, p2, :cond_0

    move v3, v4

    .line 117
    :goto_0
    return v3

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    if-nez v3, :cond_2

    .line 105
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    aget-wide v1, v3, p2

    .line 113
    .local v1, newid:J
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 114
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 115
    iput p2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurPos:I

    move v3, v4

    .line 117
    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 5
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/miui/player/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const/4 v1, 0x0

    .line 134
    :goto_0
    return v1

    .line 125
    :cond_0
    move v0, p1

    .line 126
    .local v0, i:I
    iget v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    .line 127
    :goto_1
    iget v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    iget-object v2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/model/TrackNowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #i:I
    :goto_2
    move v1, v4

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/miui/player/model/TrackNowPlayingCursor;->makeNowPlayingCursor()V

    .line 210
    const/4 v0, 0x1

    return v0
.end method
