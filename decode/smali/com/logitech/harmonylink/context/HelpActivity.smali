.class public Lcom/logitech/harmonylink/context/HelpActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mPhoneNumber:Ljava/lang/String;

.field supportText2:Landroid/widget/TextView;

.field supportText3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/logitech/harmonylink/context/HelpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/HelpActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/logitech/harmonylink/context/HelpActivity;->supportText3:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/logitech/harmonylink/context/HelpActivity;->supportText2:Landroid/widget/TextView;

    .line 100
    return-void
.end method

.method static synthetic access$100()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/logitech/harmonylink/context/HelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$200()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/logitech/harmonylink/context/HelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0xf

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v2, 0x7f060077

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/context/HelpActivity;->mPhoneNumber:Ljava/lang/String;

    .line 42
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/HelpActivity;->requestWindowFeature(I)Z

    .line 44
    const v2, 0x7f03002c

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/HelpActivity;->setContentView(I)V

    .line 48
    sget-object v2, Lcom/logitech/harmonylink/context/HelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/logitech/connect/ConnectClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;-><init>(Lcom/logitech/harmonylink/context/HelpActivity;Lcom/logitech/harmonylink/context/HelpActivity$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    .line 51
    :cond_0
    const v2, 0x7f07009b

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 52
    .local v1, launchCSLabel:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/HelpActivity;->isPairedWithKa()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 54
    const v2, 0x7f07009c

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, laucher:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/HelpActivity;->isPairedWithKa()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 57
    const v2, 0x7f07009e

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/logitech/harmonylink/context/HelpActivity;->supportText3:Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HelpActivity;->supportText3:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/HelpActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v2, 0x7f07009d

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/logitech/harmonylink/context/HelpActivity;->supportText2:Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HelpActivity;->supportText2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/HelpActivity;->supportText2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HelpActivity;->supportText3:Landroid/widget/TextView;

    invoke-static {v2, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 63
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HelpActivity;->supportText2:Landroid/widget/TextView;

    invoke-static {v2, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 65
    new-instance v2, Lcom/logitech/harmonylink/context/HelpActivity$1;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/HelpActivity$1;-><init>(Lcom/logitech/harmonylink/context/HelpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void

    .end local v0           #laucher:Landroid/widget/Button;
    :cond_1
    move v2, v5

    .line 52
    goto :goto_0

    .restart local v0       #laucher:Landroid/widget/Button;
    :cond_2
    move v2, v5

    .line 55
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/HelpActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 86
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    sget-object v1, Lcom/logitech/harmonylink/context/HelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/logitech/harmonylink/context/HelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 89
    const v1, 0x7f07017b

    invoke-interface {p1, v1, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 97
    :cond_0
    :goto_0
    return v3

    .line 91
    :cond_1
    sget-object v1, Lcom/logitech/harmonylink/context/HelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "82"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    const v1, 0x7f070178

    invoke-interface {p1, v1, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method
