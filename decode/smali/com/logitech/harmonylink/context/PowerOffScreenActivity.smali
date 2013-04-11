.class public Lcom/logitech/harmonylink/context/PowerOffScreenActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "PowerOffScreenActivity.java"


# static fields
.field public static final DEFAULT_POWER_OFF_DELAY:I = 0x1f40


# instance fields
.field private mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAlertShown:Z

.field private mLastTimePressed:J

.field private mPowerOffLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mLastTimePressed:J

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 34
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030048

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    .line 35
    iget-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->setContentView(Landroid/view/View;)V

    .line 37
    const v3, 0x7f0700d7

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 39
    const-wide/16 v3, 0x1f40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mLastTimePressed:J

    sub-long/2addr v5, v7

    sub-long v0, v3, v5

    .line 41
    .local v0, delay:J
    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 43
    iget-boolean v3, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mIsAlertShown:Z

    if-nez v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mPowerOffLayout:Landroid/view/ViewGroup;

    new-instance v4, Lcom/logitech/harmonylink/context/PowerOffScreenActivity$1;

    invoke-direct {v4, p0}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity$1;-><init>(Lcom/logitech/harmonylink/context/PowerOffScreenActivity;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 60
    new-instance v1, Lcom/logitech/harmonylink/context/PowerOffScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity$2;-><init>(Lcom/logitech/harmonylink/context/PowerOffScreenActivity;)V

    iput-object v1, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, activityChangeIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.logitech.harmonylink.ACTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 85
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onStop()V

    .line 91
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Z)V
    .locals 1
    .parameter "detailedMessage"
    .parameter "isActivitySwitcherOff"

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->mIsAlertShown:Z

    .line 99
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method protected startOneTouch()V
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 95
    return-void
.end method
