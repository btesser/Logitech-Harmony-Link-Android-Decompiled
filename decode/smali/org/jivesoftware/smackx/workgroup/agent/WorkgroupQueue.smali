.class public Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
.super Ljava/lang/Object;
.source "WorkgroupQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;
    }
.end annotation


# instance fields
.field private averageWaitTime:I

.field private currentChats:I

.field private maxChats:I

.field private name:Ljava/lang/String;

.field private oldestEntry:Ljava/util/Date;

.field private status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

.field private users:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->averageWaitTime:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->oldestEntry:Ljava/util/Date;

    .line 35
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    .line 37
    iput v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->maxChats:I

    .line 38
    iput v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->currentChats:I

    .line 46
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->name:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getAverageWaitTime()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->averageWaitTime:I

    return v0
.end method

.method public getCurrentChats()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->currentChats:I

    return v0
.end method

.method public getMaxChats()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->maxChats:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOldestEntry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->oldestEntry:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    return-object v0
.end method

.method public getUserCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getUsers()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method setAverageWaitTime(I)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->averageWaitTime:I

    .line 114
    return-void
.end method

.method setCurrentChats(I)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->currentChats:I

    .line 154
    return-void
.end method

.method setMaxChats(I)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->maxChats:I

    .line 141
    return-void
.end method

.method setOldestEntry(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->oldestEntry:Ljava/util/Date;

    .line 128
    return-void
.end method

.method setStatus(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 69
    return-void
.end method

.method setUsers(Ljava/util/Set;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    .line 99
    return-void
.end method
