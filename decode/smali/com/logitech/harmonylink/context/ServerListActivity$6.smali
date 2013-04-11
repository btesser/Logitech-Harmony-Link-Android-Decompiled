.class Lcom/logitech/harmonylink/context/ServerListActivity$6;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ServerListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/ServerListActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$6;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$400()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    .line 144
    .local v0, cc:Lcom/logitech/connect/ConnectClient;
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$6;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    #getter for: Lcom/logitech/harmonylink/context/ServerListActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$500(Lcom/logitech/harmonylink/context/ServerListActivity;)Lcom/logitech/connect/IGlobalResponseObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->addGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V

    .line 145
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->sendDiscoveryProbe()V

    .line 147
    return-void
.end method
