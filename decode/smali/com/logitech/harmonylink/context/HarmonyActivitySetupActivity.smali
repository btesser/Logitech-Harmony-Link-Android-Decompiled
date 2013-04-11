.class public Lcom/logitech/harmonylink/context/HarmonyActivitySetupActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "HarmonyActivitySetupActivity.java"

# interfaces
.implements Lcom/logitech/connect/pairing/SetupActivityResponseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onSetupNeeded()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onSetupNotNeeded()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
