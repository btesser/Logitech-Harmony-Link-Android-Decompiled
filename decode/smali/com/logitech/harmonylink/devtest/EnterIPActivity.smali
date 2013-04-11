.class public Lcom/logitech/harmonylink/devtest/EnterIPActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "EnterIPActivity.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->mEditText:Landroid/widget/EditText;

    .line 24
    const-class v0, Lcom/logitech/harmonylink/devtest/EnterIPActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->requestWindowFeature(I)Z

    .line 30
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f070066

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->mEditText:Landroid/widget/EditText;

    .line 32
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 34
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    iget-object v2, p0, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->mEditText:Landroid/widget/EditText;

    const-string v3, "ip"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v2, 0x7f070067

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/EnterIPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 37
    .local v1, saveButton:Landroid/widget/Button;
    new-instance v2, Lcom/logitech/harmonylink/devtest/EnterIPActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/logitech/harmonylink/devtest/EnterIPActivity$1;-><init>(Lcom/logitech/harmonylink/devtest/EnterIPActivity;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
