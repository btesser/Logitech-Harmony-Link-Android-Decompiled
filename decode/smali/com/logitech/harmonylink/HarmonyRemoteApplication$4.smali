.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$4;
.super Ljava/lang/Object;
.source "HarmonyRemoteApplication.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/HarmonyRemoteApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$4;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetupCanceled()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$4;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->unPairAndReturnToSplash()V

    .line 226
    return-void
.end method

.method public onSetupStarted()V
    .locals 3

    .prologue
    .line 210
    sget-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    if-eqz v1, :cond_0

    .line 211
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    const-class v2, Lcom/logitech/harmonylink/context/DPadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v0, openActivityIntent:Landroid/content/Intent;
    sget-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    :goto_0
    return-void

    .line 217
    .end local v0           #openActivityIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$4;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const-class v2, Lcom/logitech/harmonylink/context/DPadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .restart local v0       #openActivityIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$4;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
