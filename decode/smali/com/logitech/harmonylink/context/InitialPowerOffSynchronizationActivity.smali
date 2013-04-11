.class public Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "InitialPowerOffSynchronizationActivity.java"

# interfaces
.implements Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;


# instance fields
.field mContinueBtn:Landroid/widget/Button;

.field private mLastTimePressed:J

.field mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mPowerOffLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mLastTimePressed:J

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mLastTimePressed:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public onButtonPressed(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mLastTimePressed:J

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0, v6}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iput-object v4, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 39
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 42
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0600af

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->setTitle(I)V

    .line 45
    const v4, 0x7f03004b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    .line 47
    iget-object v4, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0700dd

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, introText:Landroid/widget/TextView;
    const v4, 0x7f0600b0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v4, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0700e0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mContinueBtn:Landroid/widget/Button;

    .line 51
    iget-object v4, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0700de

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 53
    .local v3, ll:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/logitech/harmonylink/context/view/FixItView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, p0}, Lcom/logitech/harmonylink/context/view/FixItView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;)V

    .line 54
    .local v0, fixitView:Lcom/logitech/harmonylink/context/view/FixItView;
    invoke-virtual {v0, v6}, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputButton(Z)V

    .line 55
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-virtual {v0, v4, p0, v3, v5}, Lcom/logitech/harmonylink/context/view/FixItView;->inflateFixItView(Landroid/content/Context;Lcom/logitech/harmonylink/ui/common/BaseActivity;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 57
    iget-object v4, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->setContentView(Landroid/view/View;)V

    .line 60
    iget-object v4, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mContinueBtn:Landroid/widget/Button;

    new-instance v5, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1;

    invoke-direct {v5, p0}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1;-><init>(Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method
