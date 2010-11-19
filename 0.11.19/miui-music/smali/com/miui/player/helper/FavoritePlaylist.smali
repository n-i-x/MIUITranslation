.class public Lcom/miui/player/helper/FavoritePlaylist;
.super Ljava/lang/Object;
.source "FavoritePlaylist.java"


# static fields
.field private static final PLAYLIST_NAME:Ljava/lang/String; = "$$miui"

.field private static final TAG:Ljava/lang/String; = "com.miui.player.helper.FavoritePlaylist"

.field private static sFavoritePlaylistId:Ljava/lang/String;

.field private static sFavoriteTracks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    .line 19
    sput-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {p0, v0}, Lcom/miui/player/helper/FavoritePlaylist;->add(Landroid/content/Context;[J)V

    .line 49
    return-void
.end method

.method public static add(Landroid/content/Context;[J)V
    .locals 6
    .parameter "context"
    .parameter "ids"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 37
    sget-object v5, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 38
    move-object v0, p1

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 39
    .local v2, id:J
    sget-object v5, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    invoke-static {v5, v2, v3}, Lcom/miui/player/helper/FavoritePlaylist;->uniqueAdd(Ljava/util/HashMap;J)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v0           #arr$:[J
    .end local v1           #i$:I
    .end local v2           #id:J
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method public static contains(Landroid/content/Context;J)Z
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, ret:Z
    sget-object v2, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 62
    sget-object v2, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 63
    .local v0, count:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 64
    const/4 v1, 0x0

    .line 73
    .end local v0           #count:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v1

    .line 65
    .restart local v0       #count:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 66
    const/4 v1, 0x0

    .line 67
    sget-object v2, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static filter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "where"
    .parameter "isFirst"

    .prologue
    .line 28
    const-string v1, "%s %s %s != \'%s\'"

    .line 29
    .local v1, PATTERN:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, ""

    move-object v0, v2

    .line 31
    .local v0, AND:Ljava/lang/String;
    :goto_0
    const-string v2, "%s %s %s != \'%s\'"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "$$miui"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 29
    .end local v0           #AND:Ljava/lang/String;
    :cond_0
    const-string v2, " AND "

    move-object v0, v2

    goto :goto_0
.end method

.method public static getFavoritePlaylistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->readFavoritePlaylist(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    .line 25
    :cond_0
    return-void
.end method

.method public static isFavoritePlaylistId(J)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 82
    :try_start_0
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    move v0, v2

    .line 86
    goto :goto_0
.end method

.method public static isFavoritePlaylistId(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 77
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readFavoritePlaylist(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v11, "$$miui"

    .line 94
    const-string v10, "$$miui"

    const/4 v10, 0x0

    invoke-static {p0, v11, v10}, Lcom/miui/player/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v9

    .line 95
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_1

    .line 96
    const-string v10, "$$miui"

    invoke-static {p0, v11}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    int-to-long v4, v10

    .line 97
    .local v4, id:J
    invoke-static {p0, v4, v5}, Lcom/miui/player/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v7

    .line 98
    .local v7, memberIdArr:[J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    .line 99
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v8, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object v0, v7

    .local v0, arr$:[J
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-wide v1, v0, v3

    .line 101
    .local v1, i:J
    invoke-static {v8, v1, v2}, Lcom/miui/player/helper/FavoritePlaylist;->uniqueAdd(Ljava/util/HashMap;J)V

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #i:J
    :cond_0
    move-object v10, v8

    .line 107
    .end local v0           #arr$:[J
    .end local v3           #i$:I
    .end local v4           #id:J
    .end local v6           #len$:I
    .end local v7           #memberIdArr:[J
    .end local v8           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_1
    return-object v10

    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public static remove(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 53
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteTracks:Ljava/util/HashMap;

    invoke-static {v0, p1, p2}, Lcom/miui/player/helper/FavoritePlaylist;->uniqueRemove(Ljava/util/HashMap;J)V

    .line 56
    :cond_0
    return-void
.end method

.method private static uniqueAdd(Ljava/util/HashMap;J)V
    .locals 3
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, container:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static uniqueRemove(Ljava/util/HashMap;J)V
    .locals 3
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, container:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
