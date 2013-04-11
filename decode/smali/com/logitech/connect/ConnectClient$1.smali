.class Lcom/logitech/connect/ConnectClient$1;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/ConnectClient;->onCreate()V
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
    .line 160
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$1;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/logitech/connect/client/transport/OaIQ;

    invoke-direct {v0, p1}, Lcom/logitech/connect/client/transport/OaIQ;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method
