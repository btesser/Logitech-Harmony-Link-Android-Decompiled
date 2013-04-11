.class Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$1;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Socks5TransferNegotiatorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->initStreamHosts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "<query xmlns=\"http://jabber.org/protocol/bytestreams\"/>"

    return-object v0
.end method
