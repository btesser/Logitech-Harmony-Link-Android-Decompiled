.class Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Workgroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/user/Workgroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JoinQueuePacket"
.end annotation


# instance fields
.field private form:Lorg/jivesoftware/smackx/packet/DataForm;

.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;Ljava/lang/String;Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->userID:Ljava/lang/String;

    .line 596
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->userID:Ljava/lang/String;

    .line 598
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->setTo(Ljava/lang/String;)V

    .line 599
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 601
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->form:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 602
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->form:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 603
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    const-string v1, "<join-queue xmlns=\"http://jabber.org/protocol/workgroup\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v1, "<queue-notifications/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->this$0:Lorg/jivesoftware/smackx/workgroup/user/Workgroup;

    #getter for: Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->access$400(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)Lorg/jivesoftware/smack/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->isAnonymous()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/packet/UserID;

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->userID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/workgroup/packet/UserID;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/UserID;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->form:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DataForm;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v1, "</join-queue>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
