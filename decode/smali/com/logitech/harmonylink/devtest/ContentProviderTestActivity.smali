.class public Lcom/logitech/harmonylink/devtest/ContentProviderTestActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "ContentProviderTestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    sget-object v0, Lcom/logitech/harmonylink/devtest/ContentProviderTestActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->getSupportPhoneNumber()V

    .line 15
    return-void
.end method
