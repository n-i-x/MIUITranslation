.class public Lcom/miui/player/PlayerSettings;
.super Ljava/util/Observable;
.source "PlayerSettings.java"


# static fields
.field public static final PREF_DOWNLOAD_ALBUM_AUTO:Ljava/lang/String; = "download_album_auto"

.field public static final PREF_DOWNLOAD_LYRIC_AUTO:Ljava/lang/String; = "download_lyric_auto"

.field private static sSingleton:Lcom/miui/player/PlayerSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/player/PlayerSettings;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/miui/player/PlayerSettings;->sSingleton:Lcom/miui/player/PlayerSettings;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/miui/player/PlayerSettings;

    invoke-direct {v0}, Lcom/miui/player/PlayerSettings;-><init>()V

    sput-object v0, Lcom/miui/player/PlayerSettings;->sSingleton:Lcom/miui/player/PlayerSettings;

    .line 17
    :cond_0
    sget-object v0, Lcom/miui/player/PlayerSettings;->sSingleton:Lcom/miui/player/PlayerSettings;

    return-object v0
.end method
