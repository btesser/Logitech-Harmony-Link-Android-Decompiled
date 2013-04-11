.class Lcom/logitech/harmonylink/context/view/FixItView$1;
.super Ljava/lang/Object;
.source "FixItView.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/FixItView;->getFixItXml(Landroid/content/Context;Lcom/logitech/connect/ConnectClient;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/FixItView;

.field final synthetic val$fixItContext:Landroid/content/Context;

.field final synthetic val$vgrpParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/FixItView;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/FixItView$1;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/FixItView$1;->val$vgrpParent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/logitech/harmonylink/context/view/FixItView$1;->val$fixItContext:Landroid/content/Context;

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
    .line 91
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView$1;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/context/view/FixItView;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/view/FixItView;->access$002(Lcom/logitech/harmonylink/context/view/FixItView;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 92
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 96
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, responseAsString:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 102
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 104
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 107
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "devices"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/FixItView$1;->val$vgrpParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/FixItView$1;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/FixItView$1;->val$fixItContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v6}, Lcom/logitech/harmonylink/context/view/FixItView;->parseDevices(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/FixItView$1;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    const/4 v5, 0x0

    #setter for: Lcom/logitech/harmonylink/context/view/FixItView;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/FixItView;->access$002(Lcom/logitech/harmonylink/context/view/FixItView;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 122
    return-void

    .line 113
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 115
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 118
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
