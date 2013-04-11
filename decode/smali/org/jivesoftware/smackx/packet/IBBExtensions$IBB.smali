.class abstract Lorg/jivesoftware/smackx/packet/IBBExtensions$IBB;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IBBExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/IBBExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IBB"
.end annotation


# instance fields
.field final sid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/IBBExtensions$IBB;->sid:Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/IBBExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$IBB;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "http://jabber.org/protocol/ibb"

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/IBBExtensions$IBB;->sid:Ljava/lang/String;

    return-object v0
.end method
