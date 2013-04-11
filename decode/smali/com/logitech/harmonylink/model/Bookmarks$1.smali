.class Lcom/logitech/harmonylink/model/Bookmarks$1;
.super Ljava/lang/Object;
.source "Bookmarks.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/model/Bookmarks;->retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/model/Bookmarks;

.field final synthetic val$bodyContent:Ljava/lang/String;

.field final synthetic val$connectClient:Lcom/logitech/connect/ConnectClient;

.field final synthetic val$isFromAddMore:Z

.field final synthetic val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/model/Bookmarks;ZLcom/logitech/harmonylink/harmony/OneTouchManager;Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    iput-boolean p2, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$isFromAddMore:Z

    iput-object p3, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    iput-object p4, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$connectClient:Lcom/logitech/connect/ConnectClient;

    iput-object p5, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$bodyContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$isFromAddMore:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/model/Bookmarks;->setPopulated(Z)V

    .line 81
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V

    goto :goto_0
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 10
    .parameter "response"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 86
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, responseXml:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    #calls: Lcom/logitech/harmonylink/model/Bookmarks;->getBookmarkPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/logitech/harmonylink/model/Bookmarks;->access$000(Lcom/logitech/harmonylink/model/Bookmarks;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, folderPath:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 92
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    iget-object v1, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$connectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    iget-boolean v3, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$isFromAddMore:Z

    iget-object v5, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$bodyContent:Ljava/lang/String;

    #calls: Lcom/logitech/harmonylink/model/Bookmarks;->retrieveBookmarks(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/logitech/harmonylink/model/Bookmarks;->access$100(Lcom/logitech/harmonylink/model/Bookmarks;Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v4           #folderPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 96
    .restart local v4       #folderPath:Ljava/lang/String;
    :cond_0
    iget-boolean v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$isFromAddMore:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v4           #folderPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 106
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-static {}, Lcom/logitech/harmonylink/model/Bookmarks;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while parsing top level live folder."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    iget-boolean v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$isFromAddMore:Z

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0, v9}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 101
    .end local v6           #e:Lorg/xml/sax/SAXException;
    .restart local v4       #folderPath:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/model/Bookmarks;->setPopulated(Z)V

    .line 102
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    .end local v4           #folderPath:Ljava/lang/String;
    .restart local v6       #e:Lorg/xml/sax/SAXException;
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    invoke-virtual {v0, v8}, Lcom/logitech/harmonylink/model/Bookmarks;->setPopulated(Z)V

    .line 115
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$1;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V

    goto :goto_0
.end method
