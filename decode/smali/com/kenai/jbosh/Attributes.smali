.class final Lcom/kenai/jbosh/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# static fields
.field static final ACCEPT:Lcom/kenai/jbosh/BodyQName;

.field static final ACK:Lcom/kenai/jbosh/BodyQName;

.field static final AUTHID:Lcom/kenai/jbosh/BodyQName;

.field static final CHARSETS:Lcom/kenai/jbosh/BodyQName;

.field static final CONDITION:Lcom/kenai/jbosh/BodyQName;

.field static final CONTENT:Lcom/kenai/jbosh/BodyQName;

.field static final FROM:Lcom/kenai/jbosh/BodyQName;

.field static final HOLD:Lcom/kenai/jbosh/BodyQName;

.field static final INACTIVITY:Lcom/kenai/jbosh/BodyQName;

.field static final KEY:Lcom/kenai/jbosh/BodyQName;

.field static final MAXPAUSE:Lcom/kenai/jbosh/BodyQName;

.field static final NEWKEY:Lcom/kenai/jbosh/BodyQName;

.field static final PAUSE:Lcom/kenai/jbosh/BodyQName;

.field static final POLLING:Lcom/kenai/jbosh/BodyQName;

.field static final REPORT:Lcom/kenai/jbosh/BodyQName;

.field static final REQUESTS:Lcom/kenai/jbosh/BodyQName;

.field static final RID:Lcom/kenai/jbosh/BodyQName;

.field static final ROUTE:Lcom/kenai/jbosh/BodyQName;

.field static final SECURE:Lcom/kenai/jbosh/BodyQName;

.field static final SID:Lcom/kenai/jbosh/BodyQName;

.field static final STREAM:Lcom/kenai/jbosh/BodyQName;

.field static final TIME:Lcom/kenai/jbosh/BodyQName;

.field static final TO:Lcom/kenai/jbosh/BodyQName;

.field static final TYPE:Lcom/kenai/jbosh/BodyQName;

.field static final VER:Lcom/kenai/jbosh/BodyQName;

.field static final WAIT:Lcom/kenai/jbosh/BodyQName;

.field static final XML_LANG:Lcom/kenai/jbosh/BodyQName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-string v0, "accept"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->ACCEPT:Lcom/kenai/jbosh/BodyQName;

    .line 37
    const-string v0, "authid"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->AUTHID:Lcom/kenai/jbosh/BodyQName;

    .line 38
    const-string v0, "ack"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->ACK:Lcom/kenai/jbosh/BodyQName;

    .line 39
    const-string v0, "charsets"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->CHARSETS:Lcom/kenai/jbosh/BodyQName;

    .line 40
    const-string v0, "condition"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->CONDITION:Lcom/kenai/jbosh/BodyQName;

    .line 41
    const-string v0, "content"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->CONTENT:Lcom/kenai/jbosh/BodyQName;

    .line 42
    const-string v0, "from"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->FROM:Lcom/kenai/jbosh/BodyQName;

    .line 43
    const-string v0, "hold"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->HOLD:Lcom/kenai/jbosh/BodyQName;

    .line 44
    const-string v0, "inactivity"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->INACTIVITY:Lcom/kenai/jbosh/BodyQName;

    .line 45
    const-string v0, "key"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->KEY:Lcom/kenai/jbosh/BodyQName;

    .line 46
    const-string v0, "maxpause"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->MAXPAUSE:Lcom/kenai/jbosh/BodyQName;

    .line 47
    const-string v0, "newkey"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->NEWKEY:Lcom/kenai/jbosh/BodyQName;

    .line 48
    const-string v0, "pause"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->PAUSE:Lcom/kenai/jbosh/BodyQName;

    .line 49
    const-string v0, "polling"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->POLLING:Lcom/kenai/jbosh/BodyQName;

    .line 50
    const-string v0, "report"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->REPORT:Lcom/kenai/jbosh/BodyQName;

    .line 51
    const-string v0, "requests"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->REQUESTS:Lcom/kenai/jbosh/BodyQName;

    .line 52
    const-string v0, "rid"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    .line 53
    const-string v0, "route"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->ROUTE:Lcom/kenai/jbosh/BodyQName;

    .line 54
    const-string v0, "secure"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->SECURE:Lcom/kenai/jbosh/BodyQName;

    .line 55
    const-string v0, "sid"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->SID:Lcom/kenai/jbosh/BodyQName;

    .line 56
    const-string v0, "stream"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->STREAM:Lcom/kenai/jbosh/BodyQName;

    .line 57
    const-string v0, "time"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->TIME:Lcom/kenai/jbosh/BodyQName;

    .line 58
    const-string v0, "to"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->TO:Lcom/kenai/jbosh/BodyQName;

    .line 59
    const-string v0, "type"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->TYPE:Lcom/kenai/jbosh/BodyQName;

    .line 60
    const-string v0, "ver"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->VER:Lcom/kenai/jbosh/BodyQName;

    .line 61
    const-string v0, "wait"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->WAIT:Lcom/kenai/jbosh/BodyQName;

    .line 62
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "lang"

    const-string v2, "xml"

    invoke-static {v0, v1, v2}, Lcom/kenai/jbosh/BodyQName;->createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/Attributes;->XML_LANG:Lcom/kenai/jbosh/BodyQName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method
