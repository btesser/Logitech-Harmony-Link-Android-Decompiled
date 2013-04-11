.class Lcom/logitech/connect/DiscoveryServer$1$1;
.super Ljava/lang/Object;
.source "DiscoveryServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/DiscoveryServer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/connect/DiscoveryServer$1;

.field final synthetic val$t:Lcom/logitech/connect/Target;


# direct methods
.method constructor <init>(Lcom/logitech/connect/DiscoveryServer$1;Lcom/logitech/connect/Target;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/logitech/connect/DiscoveryServer$1$1;->this$1:Lcom/logitech/connect/DiscoveryServer$1;

    iput-object p2, p0, Lcom/logitech/connect/DiscoveryServer$1$1;->val$t:Lcom/logitech/connect/Target;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/connect/DiscoveryServer$1$1;->val$t:Lcom/logitech/connect/Target;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->addTarget(Lcom/logitech/connect/Target;)V

    .line 118
    return-void
.end method
