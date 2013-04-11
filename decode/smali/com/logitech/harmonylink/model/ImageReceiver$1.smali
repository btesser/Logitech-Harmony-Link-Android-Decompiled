.class Lcom/logitech/harmonylink/model/ImageReceiver$1;
.super Landroid/os/Handler;
.source "ImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/model/ImageReceiver;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/model/ImageReceiver;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/model/ImageReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/logitech/harmonylink/model/ImageReceiver$1;->this$0:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 68
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/logitech/harmonylink/model/ImageParams;

    .line 69
    .local v7, imgParams:Lcom/logitech/harmonylink/model/ImageParams;
    iget-object v0, v7, Lcom/logitech/harmonylink/model/ImageParams;->path:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver$1;->this$0:Lcom/logitech/harmonylink/model/ImageReceiver;

    iget-object v1, v7, Lcom/logitech/harmonylink/model/ImageParams;->path:Ljava/lang/String;

    iget-object v2, v7, Lcom/logitech/harmonylink/model/ImageParams;->imageHash:Ljava/lang/String;

    iget-object v3, v7, Lcom/logitech/harmonylink/model/ImageParams;->mStoreImage:Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;

    #calls: Lcom/logitech/harmonylink/model/ImageReceiver;->getIconFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V
    invoke-static {v0, v1, v2, v3}, Lcom/logitech/harmonylink/model/ImageReceiver;->access$000(Lcom/logitech/harmonylink/model/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver$1;->this$0:Lcom/logitech/harmonylink/model/ImageReceiver;

    iget-object v1, v7, Lcom/logitech/harmonylink/model/ImageParams;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v2, v7, Lcom/logitech/harmonylink/model/ImageParams;->path:Ljava/lang/String;

    iget-object v3, v7, Lcom/logitech/harmonylink/model/ImageParams;->maxWidth:Ljava/lang/String;

    iget-object v4, v7, Lcom/logitech/harmonylink/model/ImageParams;->maxHeight:Ljava/lang/String;

    iget-object v5, v7, Lcom/logitech/harmonylink/model/ImageParams;->imageHash:Ljava/lang/String;

    iget-object v6, v7, Lcom/logitech/harmonylink/model/ImageParams;->mStoreImage:Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;

    invoke-virtual/range {v0 .. v6}, Lcom/logitech/harmonylink/model/ImageReceiver;->retriveIconFromKa(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V

    goto :goto_0
.end method
