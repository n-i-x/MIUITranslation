.class public abstract Lcom/miui/player/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.player.IMediaPlaybackService"

.field static final TRANSACTION_duration:I = 0xb

.field static final TRANSACTION_enqueue:I = 0x13

.field static final TRANSACTION_getAlbumId:I = 0x10

.field static final TRANSACTION_getAlbumName:I = 0xf

.field static final TRANSACTION_getArtistId:I = 0x12

.field static final TRANSACTION_getArtistName:I = 0x11

.field static final TRANSACTION_getAudioId:I = 0x18

.field static final TRANSACTION_getMediaMountedCount:I = 0x1f

.field static final TRANSACTION_getPath:I = 0x17

.field static final TRANSACTION_getQueue:I = 0x14

.field static final TRANSACTION_getQueuePosition:I = 0x4

.field static final TRANSACTION_getRepeatMode:I = 0x1e

.field static final TRANSACTION_getShuffleMode:I = 0x1a

.field static final TRANSACTION_getTrackName:I = 0xe

.field static final TRANSACTION_isPlaying:I = 0x5

.field static final TRANSACTION_moveQueueItem:I = 0x15

.field static final TRANSACTION_next:I = 0xa

.field static final TRANSACTION_open:I = 0x3

.field static final TRANSACTION_openFile:I = 0x1

.field static final TRANSACTION_openFileAsync:I = 0x2

.field static final TRANSACTION_pause:I = 0x7

.field static final TRANSACTION_play:I = 0x8

.field static final TRANSACTION_position:I = 0xc

.field static final TRANSACTION_prev:I = 0x9

.field static final TRANSACTION_removeTrack:I = 0x1c

.field static final TRANSACTION_removeTracks:I = 0x1b

.field static final TRANSACTION_seek:I = 0xd

.field static final TRANSACTION_setQueuePosition:I = 0x16

.field static final TRANSACTION_setRepeatMode:I = 0x1d

.field static final TRANSACTION_setShuffleMode:I = 0x19

.field static final TRANSACTION_stop:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/player/IMediaPlaybackService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "com.miui.player.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/player/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/miui/player/IMediaPlaybackService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/player/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/player/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.miui.player.IMediaPlaybackService"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 319
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v6

    .line 58
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->openFile(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 60
    goto :goto_0

    .end local v2           #_arg1:Z
    :cond_0
    move v2, v8

    .line 57
    goto :goto_1

    .line 64
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->openFileAsync(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 69
    goto :goto_0

    .line 73
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 77
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->open([JI)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 80
    goto :goto_0

    .line 84
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_4
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v3

    .line 86
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 88
    goto :goto_0

    .line 92
    .end local v3           #_result:I
    :sswitch_5
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v3

    .line 94
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 96
    goto :goto_0

    :cond_1
    move v5, v8

    .line 95
    goto :goto_2

    .line 100
    .end local v3           #_result:Z
    :sswitch_6
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->stop()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 103
    goto :goto_0

    .line 107
    :sswitch_7
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->pause()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 110
    goto/16 :goto_0

    .line 114
    :sswitch_8
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->play()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 117
    goto/16 :goto_0

    .line 121
    :sswitch_9
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->prev()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 124
    goto/16 :goto_0

    .line 128
    :sswitch_a
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->next()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 131
    goto/16 :goto_0

    .line 135
    :sswitch_b
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v3

    .line 137
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 139
    goto/16 :goto_0

    .line 143
    .end local v3           #_result:J
    :sswitch_c
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->position()J

    move-result-wide v3

    .line 145
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 147
    goto/16 :goto_0

    .line 151
    .end local v3           #_result:J
    :sswitch_d
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 154
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/miui/player/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v3

    .line 155
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 157
    goto/16 :goto_0

    .line 161
    .end local v0           #_arg0:J
    .end local v3           #_result:J
    :sswitch_e
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 165
    goto/16 :goto_0

    .line 169
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 171
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 173
    goto/16 :goto_0

    .line 177
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getAlbumId()J

    move-result-wide v3

    .line 179
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 181
    goto/16 :goto_0

    .line 185
    .end local v3           #_result:J
    :sswitch_11
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 189
    goto/16 :goto_0

    .line 193
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getArtistId()J

    move-result-wide v3

    .line 195
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 197
    goto/16 :goto_0

    .line 201
    .end local v3           #_result:J
    :sswitch_13
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 205
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->enqueue([JI)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 208
    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_14
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getQueue()[J

    move-result-object v3

    .line 214
    .local v3, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    move v5, v6

    .line 216
    goto/16 :goto_0

    .line 220
    .end local v3           #_result:[J
    :sswitch_15
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 227
    goto/16 :goto_0

    .line 231
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_16
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 236
    goto/16 :goto_0

    .line 240
    .end local v0           #_arg0:I
    :sswitch_17
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 244
    goto/16 :goto_0

    .line 248
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_18
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getAudioId()J

    move-result-wide v3

    .line 250
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 252
    goto/16 :goto_0

    .line 256
    .end local v3           #_result:J
    :sswitch_19
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 261
    goto/16 :goto_0

    .line 265
    .end local v0           #_arg0:I
    :sswitch_1a
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v3

    .line 267
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 269
    goto/16 :goto_0

    .line 273
    .end local v3           #_result:I
    :sswitch_1b
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/miui/player/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v3

    .line 279
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 281
    goto/16 :goto_0

    .line 285
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_result:I
    :sswitch_1c
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 288
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/miui/player/IMediaPlaybackService$Stub;->removeTrack(J)I

    move-result v3

    .line 289
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 291
    goto/16 :goto_0

    .line 295
    .end local v0           #_arg0:J
    .end local v3           #_result:I
    :sswitch_1d
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/miui/player/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 300
    goto/16 :goto_0

    .line 304
    .end local v0           #_arg0:I
    :sswitch_1e
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v3

    .line 306
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 308
    goto/16 :goto_0

    .line 312
    .end local v3           #_result:I
    :sswitch_1f
    const-string v5, "com.miui.player.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v3

    .line 314
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 316
    goto/16 :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
