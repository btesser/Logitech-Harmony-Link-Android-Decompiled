.class public Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;
.super Ljava/lang/Object;
.source "QueueOverview.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview$Provider;
    }
.end annotation


# static fields
.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static ELEMENT_NAME:Ljava/lang/String;

.field public static NAMESPACE:Ljava/lang/String;


# instance fields
.field private averageWaitTime:I

.field private oldestEntry:Ljava/util/Date;

.field private status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

.field private userCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "notify-queue"

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->ELEMENT_NAME:Ljava/lang/String;

    .line 40
    const-string v0, "http://jabber.org/protocol/workgroup"

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->NAMESPACE:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->averageWaitTime:I

    .line 51
    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->oldestEntry:Ljava/util/Date;

    .line 52
    iput v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->userCount:I

    .line 53
    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public getAverageWaitTime()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->averageWaitTime:I

    return v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->ELEMENT_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->NAMESPACE:Ljava/lang/String;

    return-object v0
.end method

.method public getOldestEntry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->oldestEntry:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    return-object v0
.end method

.method public getUserCount()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->userCount:I

    return v0
.end method

.method setAverageWaitTime(I)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->averageWaitTime:I

    .line 58
    return-void
.end method

.method setOldestEntry(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->oldestEntry:Ljava/util/Date;

    .line 66
    return-void
.end method

.method setStatus(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 86
    return-void
.end method

.method setUserCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->userCount:I

    .line 74
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->ELEMENT_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->userCount:I

    if-eq v1, v4, :cond_0

    .line 101
    const-string v1, "<count>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->userCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</count>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->oldestEntry:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "<oldest>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->oldestEntry:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</oldest>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    iget v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->averageWaitTime:I

    if-eq v1, v4, :cond_2

    .line 107
    const-string v1, "<time>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->averageWaitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</time>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    if-eqz v1, :cond_3

    .line 110
    const-string v1, "<status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</status>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_3
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->ELEMENT_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
