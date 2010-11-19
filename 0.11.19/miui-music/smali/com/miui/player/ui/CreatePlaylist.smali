.class public Lcom/miui/player/ui/CreatePlaylist;
.super Landroid/app/Activity;
.source "CreatePlaylist.java"


# instance fields
.field private mOpenClicked:Landroid/view/View$OnClickListener;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPrompt:Landroid/widget/TextView;

.field private mSaveButton:Landroid/widget/Button;

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    new-instance v0, Lcom/miui/player/ui/CreatePlaylist$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/CreatePlaylist$2;-><init>(Lcom/miui/player/ui/CreatePlaylist;)V

    iput-object v0, p0, Lcom/miui/player/ui/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 157
    new-instance v0, Lcom/miui/player/ui/CreatePlaylist$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/CreatePlaylist$3;-><init>(Lcom/miui/player/ui/CreatePlaylist;)V

    iput-object v0, p0, Lcom/miui/player/ui/CreatePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/CreatePlaylist;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/ui/CreatePlaylist;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method private makePlaylistName()Ljava/lang/String;
    .locals 13

    .prologue
    .line 114
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/CreatePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, template:Ljava/lang/String;
    const/4 v8, 0x1

    .line 117
    .local v8, num:I
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v2, v1

    .line 120
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/player/ui/CreatePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "name != \'\'"

    .line 122
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 154
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #whereclause:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 130
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #whereclause:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .local v9, num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v2           #cols:[Ljava/lang/String;
    move-result-object v3

    .end local v3           #whereclause:Ljava/lang/String;
    aput-object v3, v1, v2

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, suggestedname:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, done:Z
    move v8, v9

    .line 141
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_1
    if-nez v7, :cond_3

    .line 142
    const/4 v7, 0x1

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, playlistname:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 147
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .restart local v9       #num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 148
    const/4 v7, 0x0

    move v8, v9

    .line 150
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 153
    .end local v10           #playlistname:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v11

    .line 154
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/miui/player/ui/CreatePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setFormat(I)V

    .line 51
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/CreatePlaylist;->setVolumeControlStream(I)V

    .line 53
    invoke-virtual {p0, v6}, Lcom/miui/player/ui/CreatePlaylist;->requestWindowFeature(I)Z

    .line 54
    const v3, 0x7f03000d

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/CreatePlaylist;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/player/ui/CreatePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 58
    const v3, 0x7f0b0032

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/player/ui/CreatePlaylist;->mPrompt:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f0b0035

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/miui/player/ui/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 60
    const v3, 0x7f0b0036

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/player/ui/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 61
    iget-object v3, p0, Lcom/miui/player/ui/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/player/ui/CreatePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v3, 0x7f0b0034

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/miui/player/ui/CreatePlaylist$1;

    invoke-direct {v4, p0}, Lcom/miui/player/ui/CreatePlaylist$1;-><init>(Lcom/miui/player/ui/CreatePlaylist;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    if-eqz p1, :cond_0

    const-string v3, "defaultname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 70
    .local v0, defaultname:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/miui/player/ui/CreatePlaylist;->finish()V

    .line 80
    :goto_1
    return-void

    .line 69
    .end local v0           #defaultname:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/ui/CreatePlaylist;->makePlaylistName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 74
    .restart local v0       #defaultname:Ljava/lang/String;
    :cond_1
    const v3, 0x7f07005c

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/CreatePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, promptformat:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, prompt:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/ui/CreatePlaylist;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, p0, Lcom/miui/player/ui/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p0, Lcom/miui/player/ui/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 79
    iget-object v3, p0, Lcom/miui/player/ui/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/player/ui/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 110
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 104
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/miui/player/ui/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
