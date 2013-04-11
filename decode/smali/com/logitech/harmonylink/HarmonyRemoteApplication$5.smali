.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;
.super Ljava/lang/Object;
.source "HarmonyRemoteApplication.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


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
    .line 230
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/high16 v4, 0x2

    .line 231
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    instance-of v1, v1, Lcom/logitech/harmonylink/context/DPadActivity;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    sget-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    if-eqz v1, :cond_2

    .line 238
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .local v0, openActivityIntent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    sget-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 261
    .end local v0           #openActivityIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->finish()V

    .line 263
    :cond_1
    return-void

    .line 250
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .restart local v0       #openActivityIntent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
