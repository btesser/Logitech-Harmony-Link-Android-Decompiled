.class public Lcom/logitech/harmonylink/context/PowerOffHelpActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "PowerOffHelpActivity.java"

# interfaces
.implements Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;


# static fields
.field public static final DEFAULT_POWER_OFF_DELAY:I = 0x1f40


# instance fields
.field private mContinueBtn:Landroid/widget/Button;

.field private mLastTimePressed:J

.field private mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mPowerOffLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mLastTimePressed:J

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/PowerOffHelpActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mLastTimePressed:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/PowerOffHelpActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public onButtonPressed(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mLastTimePressed:J

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iput-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 39
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 42
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03004b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    .line 44
    iget-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0700e0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mContinueBtn:Landroid/widget/Button;

    .line 46
    iget-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0700de

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 48
    .local v2, ll:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/logitech/harmonylink/context/view/FixItView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/logitech/harmonylink/context/view/FixItView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;)V

    .line 49
    .local v0, fixitView:Lcom/logitech/harmonylink/context/view/FixItView;
    invoke-virtual {v0, v5}, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputButton(Z)V

    .line 50
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    invoke-virtual {v0, v3, p0, v2, v4}, Lcom/logitech/harmonylink/context/view/FixItView;->inflateFixItView(Landroid/content/Context;Lcom/logitech/harmonylink/ui/common/BaseActivity;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 52
    iget-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->setContentView(Landroid/view/View;)V

    .line 55
    iget-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mContinueBtn:Landroid/widget/Button;

    new-instance v4, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;

    invoke-direct {v4, p0}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;-><init>(Lcom/logitech/harmonylink/context/PowerOffHelpActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method
