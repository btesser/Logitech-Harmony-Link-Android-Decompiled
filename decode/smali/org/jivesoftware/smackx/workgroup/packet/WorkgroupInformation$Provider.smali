.class public Lorg/jivesoftware/smackx/workgroup/packet/WorkgroupInformation$Provider;
.super Ljava/lang/Object;
.source "WorkgroupInformation.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/WorkgroupInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, ""

    const-string v1, "jid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 83
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/packet/WorkgroupInformation;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/workgroup/packet/WorkgroupInformation;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
