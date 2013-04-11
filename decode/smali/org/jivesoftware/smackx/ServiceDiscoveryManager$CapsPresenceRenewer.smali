.class Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/CapsVerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapsPresenceRenewer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    return-void
.end method


# virtual methods
.method public capsVerUpdated(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$100(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$100(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isSendPresence()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #calls: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->isSendPresence()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$600(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 787
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$100(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 789
    :cond_1
    return-void
.end method
