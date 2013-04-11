.class public Lcom/logitech/harmonylink/model/ImageParams;
.super Ljava/lang/Object;
.source "ImageParams.java"


# instance fields
.field imageHash:Ljava/lang/String;

.field mConnectClient:Lcom/logitech/connect/ConnectClient;

.field mStoreImage:Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;

.field maxHeight:Ljava/lang/String;

.field maxWidth:Ljava/lang/String;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V
    .locals 0
    .parameter "connectClient"
    .parameter "path"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "hash"
    .parameter "is"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/logitech/harmonylink/model/ImageParams;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 17
    iput-object p2, p0, Lcom/logitech/harmonylink/model/ImageParams;->path:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/logitech/harmonylink/model/ImageParams;->maxWidth:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/logitech/harmonylink/model/ImageParams;->maxHeight:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/logitech/harmonylink/model/ImageParams;->imageHash:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/logitech/harmonylink/model/ImageParams;->mStoreImage:Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;

    .line 22
    return-void
.end method
