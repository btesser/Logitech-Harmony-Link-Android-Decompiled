.class Lcom/logitech/connect/ConnectClient$11;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/ConnectClient;->onPresenceReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/ConnectClient;


# direct methods
.method constructor <init>(Lcom/logitech/connect/ConnectClient;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$11;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 765
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient$11;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/logitech/connect/ConnectClient;->mLastPresence:J
    invoke-static {v0, v1, v2}, Lcom/logitech/connect/ConnectClient;->access$1102(Lcom/logitech/connect/ConnectClient;J)J

    .line 766
    return-void
.end method
