.class Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;
    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$300(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smackx/EntityCapsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #calls: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getEntityCapsVersion()Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$400(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Lorg/jivesoftware/smackx/packet/CapsExtension;

    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    #getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;
    invoke-static {v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$300(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smackx/EntityCapsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/EntityCapsManager;->getNode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sha-1"

    invoke-direct {v1, v2, v0, v3}, Lorg/jivesoftware/smackx/packet/CapsExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Packet;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 268
    :cond_0
    return-void
.end method
