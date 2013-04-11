.class Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBMessageSidFilter;
.super Ljava/lang/Object;
.source "IBBTransferNegotiator.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IBBMessageSidFilter"
.end annotation


# instance fields
.field private from:Ljava/lang/String;

.field private final sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBMessageSidFilter;->from:Ljava/lang/String;

    .line 442
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBMessageSidFilter;->sessionID:Ljava/lang/String;

    .line 443
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 446
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-nez v0, :cond_0

    move v0, v2

    .line 455
    :goto_0
    return v0

    .line 449
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBMessageSidFilter;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 450
    goto :goto_0

    .line 453
    :cond_1
    const-string v0, "data"

    const-string v1, "http://jabber.org/protocol/ibb"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;

    .line 455
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;->getSessionID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBMessageSidFilter;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
