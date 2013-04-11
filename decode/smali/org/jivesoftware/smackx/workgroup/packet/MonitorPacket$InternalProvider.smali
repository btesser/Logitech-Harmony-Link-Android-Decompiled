.class public Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket$InternalProvider;
.super Ljava/lang/Object;
.source "MonitorPacket.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parser not in proper position, or bad XML."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;-><init>()V

    move v1, v5

    .line 94
    :cond_1
    :goto_0
    if-nez v1, :cond_4

    .line 95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 96
    if-ne v2, v7, :cond_3

    const-string v3, "isMonitor"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {v0, v5}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setMonitor(Z)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setMonitor(Z)V

    goto :goto_0

    .line 105
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v2, "monitor"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    .line 106
    goto :goto_0

    .line 110
    :cond_4
    return-object v0
.end method
