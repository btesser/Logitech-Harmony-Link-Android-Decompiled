.class public Lcom/logitech/harmonylink/context/NoConnectionActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;
.source "NoConnectionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/NoConnectionActivity;Ljava/lang/Class;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/NoConnectionActivity;->openActivityNoHistory(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/NoConnectionActivity;->requestWindowFeature(I)Z

    .line 20
    const v2, 0x7f03003c

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/NoConnectionActivity;->setContentView(I)V

    .line 22
    const v2, 0x7f070038

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/NoConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 23
    .local v1, reScanBtn:Landroid/widget/Button;
    new-instance v2, Lcom/logitech/harmonylink/context/NoConnectionActivity$1;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/NoConnectionActivity$1;-><init>(Lcom/logitech/harmonylink/context/NoConnectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v2, 0x7f0700c6

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/NoConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, helpBtn:Landroid/widget/Button;
    new-instance v2, Lcom/logitech/harmonylink/context/NoConnectionActivity$2;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/NoConnectionActivity$2;-><init>(Lcom/logitech/harmonylink/context/NoConnectionActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
