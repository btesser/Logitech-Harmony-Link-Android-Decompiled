.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$3;
.super Ljava/lang/Object;
.source "HarmonyRemoteApplication.java"

# interfaces
.implements Lcom/logitech/connect/ILoginFailObserver;


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
    .line 186
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$3;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFailed(ILjava/lang/String;)V
    .locals 4
    .parameter "errorcode"
    .parameter "errormessage"

    .prologue
    .line 189
    invoke-static {}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login Failed with errorCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/logitech/connect/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$3;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    const-class v2, Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$3;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    return-void
.end method
