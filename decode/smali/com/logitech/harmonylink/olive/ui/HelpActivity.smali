.class public Lcom/logitech/harmonylink/olive/ui/HelpActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "HelpActivity.java"


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
    .line 16
    const-class v0, Lcom/logitech/harmonylink/olive/ui/HelpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->supportText3:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->supportText2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->requestWindowFeature(I)Z

    .line 27
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->setContentView(I)V

    .line 30
    const v1, 0x7f0700d3

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    .local v0, launchCSLabel:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 33
    const v1, 0x7f0700d4

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->supportText2:Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->supportText2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->supportText2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/HelpActivity;->supportText2:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 37
    return-void
.end method
