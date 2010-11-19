.class public Lcom/miui/player/ui/FeedbackDialog;
.super Landroid/preference/DialogPreference;
.source "FeedbackDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FeedbackDialog;->setDialogLayoutResource(I)V

    .line 28
    const v0, 0x7f02003d

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FeedbackDialog;->setDialogIcon(I)V

    .line 29
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FeedbackDialog;->setDialogTitle(I)V

    .line 30
    return-void
.end method

.method private sendFeedback()V
    .locals 7

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/player/ui/FeedbackDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 43
    .local v0, dialog:Landroid/app/Dialog;
    const/high16 v4, 0x7f0b

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 44
    .local v2, feedbackEditText:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, feedbackContent:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 46
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 60
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v3, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "do"

    const-string v6, "addguestbook"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "content"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "from"

    const-string v6, "android"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "product"

    const-string v6, "MPlayer"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "phone_type"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sdk_version"

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070080

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/player/helper/NetworkUtils;->doPostInThreadPool(Ljava/lang/String;Ljava/util/List;)V

    .line 59
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f07007d

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/helper/NetworkUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07007c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/miui/player/ui/FeedbackDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/helper/NetworkUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/miui/player/ui/FeedbackDialog;->sendFeedback()V

    .line 72
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 73
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/FeedbackDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07007c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
