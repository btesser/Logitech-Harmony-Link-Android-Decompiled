.class public Lcom/logitech/harmonylink/context/NoActivityControlsActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "NoActivityControlsActivity.java"


# instance fields
.field private mActivityChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    return-void
.end method

.method private showControls()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 18
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->requestWindowFeature(I)Z

    .line 20
    const v2, 0x7f03003b

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    .line 22
    .local v1, dom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->hasPoweredOffByCurrentClient()Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    invoke-virtual {v1, v3}, Lcom/logitech/harmonylink/harmony/Dom;->setHasPoweredOffByCurrentClient(Z)V

    .line 27
    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 33
    :cond_0
    new-instance v2, Lcom/logitech/harmonylink/context/NoActivityControlsActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity$1;-><init>(Lcom/logitech/harmonylink/context/NoActivityControlsActivity;Lcom/logitech/harmonylink/harmony/Dom;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, activityChangeIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.logitech.harmonylink.ACTIVITY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method
