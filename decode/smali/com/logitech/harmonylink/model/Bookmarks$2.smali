.class Lcom/logitech/harmonylink/model/Bookmarks$2;
.super Ljava/lang/Object;
.source "Bookmarks.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/model/Bookmarks;->retrieveBookmarks(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/model/Bookmarks;

.field final synthetic val$isFromAddMore:Z

.field final synthetic val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/model/Bookmarks;ZLcom/logitech/harmonylink/harmony/OneTouchManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    iput-boolean p2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$isFromAddMore:Z

    iput-object p3, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

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
    .line 141
    invoke-static {}, Lcom/logitech/harmonylink/model/Bookmarks;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving bookmarks content. Error code: "

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

    .line 145
    iget-boolean v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$isFromAddMore:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/model/Bookmarks;->setPopulated(Z)V

    .line 149
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V

    goto :goto_0
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 154
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, responseXml:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    iget-object v3, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    #calls: Lcom/logitech/harmonylink/model/Bookmarks;->getBookmarksContent(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v3, v1}, Lcom/logitech/harmonylink/model/Bookmarks;->access$300(Lcom/logitech/harmonylink/model/Bookmarks;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/logitech/harmonylink/model/Bookmarks;->contents:Ljava/util/ArrayList;

    .line 158
    iget-boolean v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$isFromAddMore:Z

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    iget-object v3, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    iget-object v3, v3, Lcom/logitech/harmonylink/model/Bookmarks;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    .line 176
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/model/Bookmarks;->setPopulated(Z)V

    .line 163
    iget-object v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 167
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-static {}, Lcom/logitech/harmonylink/model/Bookmarks;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception while bookmarks."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    iget-boolean v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$isFromAddMore:Z

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    invoke-virtual {v2, v4}, Lcom/logitech/harmonylink/model/Bookmarks;->setPopulated(Z)V

    .line 172
    iget-object v2, p0, Lcom/logitech/harmonylink/model/Bookmarks$2;->val$oneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V

    goto :goto_0
.end method
