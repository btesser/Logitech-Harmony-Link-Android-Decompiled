.class Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask$1;->this$1:Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 110
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 9
    .parameter "response"

    .prologue
    const/4 v8, 0x2

    .line 118
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 119
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 121
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/StringReader;

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 123
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 124
    .local v1, eventType:I
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 125
    if-ne v1, v8, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "phonesupportnumber"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 127
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 128
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, phoneTxt:Ljava/lang/String;
    iget-object v5, p0, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask$1;->this$1:Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;

    iget-object v5, v5, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;->this$0:Lcom/logitech/harmonylink/context/HelpActivity;

    iget-object v5, v5, Lcom/logitech/harmonylink/context/HelpActivity;->supportText3:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v5, p0, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask$1;->this$1:Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;

    iget-object v5, v5, Lcom/logitech/harmonylink/context/HelpActivity$DownLoadPhoneNumberTask;->this$0:Lcom/logitech/harmonylink/context/HelpActivity;

    iget-object v5, v5, Lcom/logitech/harmonylink/context/HelpActivity;->supportText3:Landroid/widget/TextView;

    const/16 v6, 0xf

    invoke-static {v5, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 133
    .end local v4           #phoneTxt:Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 136
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method
