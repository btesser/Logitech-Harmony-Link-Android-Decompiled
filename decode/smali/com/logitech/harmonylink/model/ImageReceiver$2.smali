.class Lcom/logitech/harmonylink/model/ImageReceiver$2;
.super Ljava/lang/Object;
.source "ImageReceiver.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/model/ImageReceiver;->retriveIconFromKa(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/model/ImageReceiver;

.field final synthetic val$imageHash:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$storeImageHandler:Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/model/ImageReceiver;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/logitech/harmonylink/model/ImageReceiver$2;->this$0:Lcom/logitech/harmonylink/model/ImageReceiver;

    iput-object p2, p0, Lcom/logitech/harmonylink/model/ImageReceiver$2;->val$storeImageHandler:Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;

    iput-object p3, p0, Lcom/logitech/harmonylink/model/ImageReceiver$2;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/logitech/harmonylink/model/ImageReceiver$2;->val$imageHash:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving bookmarks icon. Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Error Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 119
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, responseXml:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/logitech/harmonylink/model/ImageReceiver$2;->this$0:Lcom/logitech/harmonylink/model/ImageReceiver;

    #calls: Lcom/logitech/harmonylink/model/ImageReceiver;->getBookmarkIcon(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/logitech/harmonylink/model/ImageReceiver;->access$100(Lcom/logitech/harmonylink/model/ImageReceiver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, encodedIcon:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 125
    iget-object v4, p0, Lcom/logitech/harmonylink/model/ImageReceiver$2;->this$0:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-virtual {v4, v1}, Lcom/logitech/harmonylink/model/ImageReceiver;->getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 127
    .local v2, icon:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/logitech/harmonylink/model/ImageReceiver$2;->val$storeImageHandler:Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;

    iget-object v5, p0, Lcom/logitech/harmonylink/model/ImageReceiver$2;->val$path:Ljava/lang/String;

    iget-object v6, p0, Lcom/logitech/harmonylink/model/ImageReceiver$2;->val$imageHash:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v2}, Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;->storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1           #encodedIcon:Ljava/lang/String;
    .end local v2           #icon:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 132
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception while gettings bookmarks icon."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
