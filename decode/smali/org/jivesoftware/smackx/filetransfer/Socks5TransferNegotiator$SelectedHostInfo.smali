.class Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;
.super Ljava/lang/Object;
.source "Socks5TransferNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectedHostInfo"
.end annotation


# instance fields
.field protected establishedSocket:Ljava/net/Socket;

.field protected exception:Lorg/jivesoftware/smack/XMPPException;

.field protected selectedHost:Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;Ljava/net/Socket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->selectedHost:Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    .line 544
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->establishedSocket:Ljava/net/Socket;

    .line 545
    return-void
.end method
