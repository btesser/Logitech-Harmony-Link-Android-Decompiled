.class Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 2687
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 7
    .parameter

    .prologue
    .line 2690
    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCUser;

    move-object v5, v0

    .line 2693
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->error:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v1, v2, :cond_0

    .line 2696
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/MUCUser;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    move-object v6, v0

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->fireInvitationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V
    invoke-static/range {v1 .. v6}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->access$1200(Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V

    .line 2699
    :cond_0
    return-void
.end method
