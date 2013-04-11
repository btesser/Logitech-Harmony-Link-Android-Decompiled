.class Lcom/logitech/harmonylink/context/ServerListActivity$2;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Lcom/logitech/connect/IConnectivityObserver;


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
    .line 73
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$2;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChange()V
    .locals 5

    .prologue
    .line 75
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity$2;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/ServerListActivity;->ChangeSSID()V

    .line 76
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity$2;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/context/ServerListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 79
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 82
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 83
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity$2;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    const-class v4, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v2, i:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity$2;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v3, v2}, Lcom/logitech/harmonylink/context/ServerListActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity$2;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/ServerListActivity;->finish()V

    .line 90
    .end local v0           #activeNetInfo:Landroid/net/NetworkInfo;
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method
