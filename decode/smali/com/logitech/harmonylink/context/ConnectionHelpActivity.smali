.class public Lcom/logitech/harmonylink/context/ConnectionHelpActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;
.source "ConnectionHelpActivity.java"


# static fields
.field public static isConnectSuccess:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->isConnectSuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;-><init>()V

    .line 23
    const-class v0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->LOG_TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$4;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$4;-><init>(Lcom/logitech/harmonylink/context/ConnectionHelpActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/ConnectionHelpActivity;)Lcom/logitech/connect/IGlobalResponseObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    return-object v0
.end method

.method static synthetic access$100()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->requestWindowFeature(I)Z

    .line 29
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->setContentView(I)V

    .line 31
    sget-object v3, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    new-instance v4, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$1;

    invoke-direct {v4, p0}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$1;-><init>(Lcom/logitech/harmonylink/context/ConnectionHelpActivity;)V

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addOneShotServiceStartObserver(Ljava/lang/Runnable;)V

    .line 38
    const v3, 0x7f07003b

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 39
    .local v2, tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f06007b

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'>customer care website.</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 43
    const v3, 0x7f07003a

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, networkSetting:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 46
    new-instance v3, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$2;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$2;-><init>(Lcom/logitech/harmonylink/context/ConnectionHelpActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v3, 0x7f070038

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 59
    .local v1, rescanBtn:Landroid/widget/Button;
    new-instance v3, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$3;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$3;-><init>(Lcom/logitech/harmonylink/context/ConnectionHelpActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 73
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->finish()V

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
