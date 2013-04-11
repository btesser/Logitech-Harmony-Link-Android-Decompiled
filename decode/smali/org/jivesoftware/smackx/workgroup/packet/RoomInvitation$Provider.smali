.class public Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Provider;
.super Ljava/lang/Object;
.source "RoomInvitation.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$1;)V

    .line 147
    const-string v1, ""

    const-string v2, "type"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;

    move-result-object v1

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->type:Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$102(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;)Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;

    .line 149
    const/4 v1, 0x0

    .line 150
    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 151
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 154
    const-string v3, "session"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    const-string v2, ""

    const-string v3, "id"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->sessionID:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$202(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_1
    const-string v3, "invitee"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->invitee:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$302(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_2
    const-string v3, "inviter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->inviter:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$402(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_3
    const-string v3, "reason"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->reason:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$502(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_4
    const-string v3, "room"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->room:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->access$602(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v3, "invite"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v1, 0x1

    goto :goto_0

    .line 174
    :cond_6
    return-object v0
.end method
