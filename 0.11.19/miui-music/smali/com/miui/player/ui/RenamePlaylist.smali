.class public Lcom/miui/player/ui/RenamePlaylist;
.super Landroid/app/Activity;
.source "RenamePlaylist.java"


# instance fields
.field private mOpenClicked:Landroid/view/View$OnClickListener;

.field private mOriginalName:Ljava/lang/String;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPrompt:Landroid/widget/TextView;

.field private mRenameId:J

.field private mSaveButton:Landroid/widget/Button;

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    new-instance v0, Lcom/miui/player/ui/RenamePlaylist$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/RenamePlaylist$2;-><init>(Lcom/miui/player/ui/RenamePlaylist;)V

    iput-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 172
    new-instance v0, Lcom/miui/player/ui/RenamePlaylist$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/RenamePlaylist$3;-><init>(Lcom/miui/player/ui/RenamePlaylist;)V

    iput-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/RenamePlaylist;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/player/ui/RenamePlaylist;->setSaveButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/RenamePlaylist;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/RenamePlaylist;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    return-wide v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 9
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 126
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 133
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 139
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    return v7
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v5, "name"

    .line 144
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v5, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v0, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 150
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 151
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    return-object v7
.end method

.method private setSaveButton()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, typedname:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/player/ui/RenamePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/miui/player/ui/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f070037

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const-string v6, "rename"

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/player/ui/RenamePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->setFormat(I)V

    .line 56
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/RenamePlaylist;->setVolumeControlStream(I)V

    .line 58
    invoke-virtual {p0, v7}, Lcom/miui/player/ui/RenamePlaylist;->requestWindowFeature(I)Z

    .line 59
    const v3, 0x7f03000d

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/RenamePlaylist;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/miui/player/ui/RenamePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 63
    const v3, 0x7f0b0032

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPrompt:Landroid/widget/TextView;

    .line 64
    const v3, 0x7f0b0035

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 65
    const v3, 0x7f0b0036

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 66
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/player/ui/RenamePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v3, 0x7f0b0034

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/miui/player/ui/RenamePlaylist$1;

    invoke-direct {v4, p0}, Lcom/miui/player/ui/RenamePlaylist$1;-><init>(Lcom/miui/player/ui/RenamePlaylist;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    if-eqz p1, :cond_1

    const-string v3, "rename"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    .line 76
    iget-wide v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    invoke-direct {p0, v3, v4}, Lcom/miui/player/ui/RenamePlaylist;->nameForId(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 77
    if-eqz p1, :cond_2

    const-string v3, "defaultname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 79
    .local v0, defaultname:Ljava/lang/String;
    :goto_1
    iget-wide v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-nez v0, :cond_3

    .line 80
    :cond_0
    const-string v3, "@@@@"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rename failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/miui/player/ui/RenamePlaylist;->finish()V

    .line 98
    :goto_2
    return-void

    .line 74
    .end local v0           #defaultname:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/RenamePlaylist;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "rename"

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_0

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    move-object v0, v3

    goto :goto_1

    .line 86
    .restart local v0       #defaultname:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    const v3, 0x7f07005d

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/RenamePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, promptformat:Ljava/lang/String;
    :goto_3
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, prompt:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 96
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/player/ui/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    invoke-direct {p0}, Lcom/miui/player/ui/RenamePlaylist;->setSaveButton()V

    goto :goto_2

    .line 89
    .end local v1           #prompt:Ljava/lang/String;
    .end local v2           #promptformat:Ljava/lang/String;
    :cond_4
    const v3, 0x7f07005e

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/RenamePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #promptformat:Ljava/lang/String;
    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 163
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "rename"

    iget-wide v1, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 165
    return-void
.end method
