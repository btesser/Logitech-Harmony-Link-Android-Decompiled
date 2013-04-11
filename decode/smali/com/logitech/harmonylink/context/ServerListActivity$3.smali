.class Lcom/logitech/harmonylink/context/ServerListActivity$3;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/ServerListActivity;
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
    .line 102
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$3;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$3;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    iput-object p2, v1, Lcom/logitech/harmonylink/context/ServerListActivity;->mConnectClient:Landroid/os/IBinder;

    .line 96
    sget-object v1, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/ServerListActivity$3;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    #getter for: Lcom/logitech/harmonylink/context/ServerListActivity;->mObserver:Lcom/logitech/connect/IConnectClientObserver;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$100(Lcom/logitech/harmonylink/context/ServerListActivity;)Lcom/logitech/connect/IConnectClientObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/logitech/connect/ConnectClient;->addObserver(Lcom/logitech/connect/IConnectClientObserver;)V

    .line 97
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/ServerListActivity$3;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    #getter for: Lcom/logitech/harmonylink/context/ServerListActivity;->mConnectivityObserver:Lcom/logitech/connect/IConnectivityObserver;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$200(Lcom/logitech/harmonylink/context/ServerListActivity;)Lcom/logitech/connect/IConnectivityObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/logitech/connect/ConnectClient;->addConnectivityObserver(Lcom/logitech/connect/IConnectivityObserver;)V

    .line 98
    sget-object v1, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getTargets()Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    .local v0, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$3;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    #calls: Lcom/logitech/harmonylink/context/ServerListActivity;->updateWith(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$000(Lcom/logitech/harmonylink/context/ServerListActivity;Ljava/util/ArrayList;)V

    .line 100
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 103
    return-void
.end method
