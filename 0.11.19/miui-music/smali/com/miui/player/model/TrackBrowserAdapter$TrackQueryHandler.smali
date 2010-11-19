.class public Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TrackBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/TrackBrowserAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/model/TrackBrowserAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 103
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 104
    return-void
.end method


# virtual methods
.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "async"

    .prologue
    .line 108
    if-eqz p6, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 113
    .local v3, limituri:Landroid/net/Uri;
    new-instance v2, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;

    invoke-direct {v2, p0}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;-><init>(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;)V

    .line 114
    .local v2, args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    iput-object p1, v2, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    .line 115
    iput-object p2, v2, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    .line 116
    iput-object p3, v2, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    .line 117
    iput-object p4, v2, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 118
    iput-object p5, v2, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    .line 120
    const/4 v1, 0x0

    invoke-static {p3}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    .line 125
    .end local v2           #args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    .end local v3           #limituri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-static {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->access$000(Lcom/miui/player/model/TrackBrowserAdapter;)Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p3}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-static {v1}, Lcom/miui/player/model/TrackBrowserAdapter;->access$000(Lcom/miui/player/model/TrackBrowserAdapter;)Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;

    move-result-object v1

    if-eqz p2, :cond_1

    move v3, v2

    :goto_0
    invoke-interface {v1, p3, v3}, Lcom/miui/player/model/TrackBrowserAdapter$TrackBrowserSource;->init(Landroid/database/Cursor;Z)V

    .line 134
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    .line 135
    move-object v0, p2

    check-cast v0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;

    move-object v9, v0

    .line 136
    .local v9, args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    const/4 v3, 0x0

    iget-object v4, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v1, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v9           #args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    :cond_0
    return-void

    .line 133
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
