.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$3;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mHostAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPort:I
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$300(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/ConnectClient;->connectTo(Ljava/lang/String;I)V

    .line 132
    return-void
.end method
