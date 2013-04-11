.class public Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;
.super Ljava/lang/Object;
.source "WorkgroupQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final ACTIVE:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

.field public static final CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

.field public static final OPEN:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    const-string v1, "open"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->OPEN:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 179
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    const-string v1, "active"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->ACTIVE:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 184
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->value:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 194
    if-nez p0, :cond_0

    move-object v0, v2

    .line 208
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 198
    sget-object v1, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->OPEN:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->OPEN:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    goto :goto_0

    .line 201
    :cond_1
    sget-object v1, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->ACTIVE:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->ACTIVE:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    goto :goto_0

    .line 204
    :cond_2
    sget-object v1, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 208
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->value:Ljava/lang/String;

    return-object v0
.end method
