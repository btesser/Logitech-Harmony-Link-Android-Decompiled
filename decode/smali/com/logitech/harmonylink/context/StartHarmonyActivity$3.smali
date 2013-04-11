.class Lcom/logitech/harmonylink/context/StartHarmonyActivity$3;
.super Ljava/lang/Object;
.source "StartHarmonyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/StartHarmonyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$3;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$300()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$3;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$200(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Lcom/logitech/connect/IGlobalResponseObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->addGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V

    .line 123
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$3;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #calls: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->displayLoadingIfNeeded()V
    invoke-static {v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$400(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V

    .line 124
    invoke-static {}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$500()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$3;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->addObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 125
    return-void
.end method
