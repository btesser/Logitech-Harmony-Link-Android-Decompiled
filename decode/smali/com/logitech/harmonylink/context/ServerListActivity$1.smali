.class Lcom/logitech/harmonylink/context/ServerListActivity$1;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Lcom/logitech/connect/IConnectClientObserver;


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
    .line 65
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$1;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(IZI)V
    .locals 0
    .parameter "connected"
    .parameter "errorCondition"
    .parameter "mErrorCode"

    .prologue
    .line 63
    return-void
.end method

.method public onTargetsChanged(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity$1;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    #calls: Lcom/logitech/harmonylink/context/ServerListActivity;->updateWith(Ljava/util/ArrayList;)V
    invoke-static {v0, p1}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$000(Lcom/logitech/harmonylink/context/ServerListActivity;Ljava/util/ArrayList;)V

    .line 67
    return-void
.end method
