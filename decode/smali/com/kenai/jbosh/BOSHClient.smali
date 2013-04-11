.class public final Lcom/kenai/jbosh/BOSHClient;
.super Ljava/lang/Object;
.source "BOSHClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ASSERTIONS:Z = false

.field private static final DEFAULT_EMPTY_REQUEST_DELAY:I = 0x64

.field private static final DEFAULT_PAUSE_MARGIN:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final EMPTY_REQUEST_DELAY:I = 0x0

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final INTERRUPTED:Ljava/lang/String; = "Interrupted"

.field private static final LOG:Ljava/util/logging/Logger; = null

.field private static final NULL_LISTENER:Ljava/lang/String; = "Listener may not be null"

#the value of this static final field might be set in the static constructor
.field private static final PAUSE_MARGIN:I = 0x0

.field private static final TERMINATE:Ljava/lang/String; = "terminate"

.field private static final UNHANDLED:Ljava/lang/String; = "Unhandled Exception"


# instance fields
.field private final cfg:Lcom/kenai/jbosh/BOSHClientConfig;

.field private cmParams:Lcom/kenai/jbosh/CMSessionParams;

.field private final connListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BOSHClientConnListener;",
            ">;"
        }
    .end annotation
.end field

.field private final drained:Ljava/util/concurrent/locks/Condition;

.field private emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final emptyRequestRunnable:Ljava/lang/Runnable;

.field private final exchInterceptor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private exchanges:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/kenai/jbosh/HTTPExchange;",
            ">;"
        }
    .end annotation
.end field

.field private final httpSender:Lcom/kenai/jbosh/HTTPSender;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private pendingRequestAcks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;"
        }
    .end annotation
.end field

.field private pendingResponseAcks:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final procRunnable:Ljava/lang/Runnable;

.field private procThread:Ljava/lang/Thread;

.field private final requestIDSeq:Lcom/kenai/jbosh/RequestIDSequence;

.field private final requestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BOSHClientRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private responseAck:Ljava/lang/Long;

.field private final responseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BOSHClientResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final schedExec:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const-class v0, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/kenai/jbosh/BOSHClient;->$assertionsDisabled:Z

    .line 102
    const-class v0, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".emptyRequestDelay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/kenai/jbosh/BOSHClient;->EMPTY_REQUEST_DELAY:I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pauseMargin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/kenai/jbosh/BOSHClient;->PAUSE_MARGIN:I

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".assertionsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 337
    sget-boolean v0, Lcom/kenai/jbosh/BOSHClient;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    .line 97
    goto/16 :goto_0

    .line 339
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 341
    :goto_1
    sput-boolean v0, Lcom/kenai/jbosh/BOSHClient;->ASSERTIONS:Z

    .line 342
    return-void

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private constructor <init>(Lcom/kenai/jbosh/BOSHClientConfig;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    .line 172
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->requestListeners:Ljava/util/Set;

    .line 178
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseListeners:Ljava/util/Set;

    .line 184
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 189
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 195
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 200
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->drained:Ljava/util/concurrent/locks/Condition;

    .line 210
    new-instance v0, Lcom/kenai/jbosh/BOSHClient$1;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/BOSHClient$1;-><init>(Lcom/kenai/jbosh/BOSHClient;)V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procRunnable:Ljava/lang/Runnable;

    .line 222
    new-instance v0, Lcom/kenai/jbosh/BOSHClient$2;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/BOSHClient$2;-><init>(Lcom/kenai/jbosh/BOSHClient;)V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestRunnable:Ljava/lang/Runnable;

    .line 234
    new-instance v0, Lcom/kenai/jbosh/ApacheHTTPSender;

    invoke-direct {v0}, Lcom/kenai/jbosh/ApacheHTTPSender;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    .line 240
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchInterceptor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    new-instance v0, Lcom/kenai/jbosh/RequestIDSequence;

    invoke-direct {v0}, Lcom/kenai/jbosh/RequestIDSequence;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->requestIDSeq:Lcom/kenai/jbosh/RequestIDSequence;

    .line 251
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->schedExec:Ljava/util/concurrent/ScheduledExecutorService;

    .line 278
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    .line 284
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    .line 290
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    .line 348
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    .line 349
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->init()V

    .line 350
    return-void
.end method

.method static synthetic access$000(Lcom/kenai/jbosh/BOSHClient;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->processMessages()V

    return-void
.end method

.method static synthetic access$100(Lcom/kenai/jbosh/BOSHClient;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->sendEmptyRequest()V

    return-void
.end method

.method private applyFrom(Lcom/kenai/jbosh/ComposableBody$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 882
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHClientConfig;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_0

    .line 884
    sget-object v1, Lcom/kenai/jbosh/Attributes;->FROM:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v1, v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 886
    :cond_0
    return-void
.end method

.method private applyResponseAcknowledgement(Lcom/kenai/jbosh/ComposableBody$Builder;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 925
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 927
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 933
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    sget-object v0, Lcom/kenai/jbosh/Attributes;->ACK:Lcom/kenai/jbosh/BodyQName;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    goto :goto_0
.end method

.method private applyRoute(Lcom/kenai/jbosh/ComposableBody$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 867
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHClientConfig;->getRoute()Ljava/lang/String;

    move-result-object v0

    .line 868
    if-eqz v0, :cond_0

    .line 869
    sget-object v1, Lcom/kenai/jbosh/Attributes;->ROUTE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v1, v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 871
    :cond_0
    return-void
.end method

.method private applySessionCreationRequest(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 841
    invoke-virtual {p3}, Lcom/kenai/jbosh/ComposableBody;->rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    .line 842
    sget-object v1, Lcom/kenai/jbosh/Attributes;->TO:Lcom/kenai/jbosh/BodyQName;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v2}, Lcom/kenai/jbosh/BOSHClientConfig;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 843
    sget-object v1, Lcom/kenai/jbosh/Attributes;->XML_LANG:Lcom/kenai/jbosh/BodyQName;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v2}, Lcom/kenai/jbosh/BOSHClientConfig;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 844
    sget-object v1, Lcom/kenai/jbosh/Attributes;->VER:Lcom/kenai/jbosh/BodyQName;

    invoke-static {}, Lcom/kenai/jbosh/AttrVersion;->getSupportedVersion()Lcom/kenai/jbosh/AttrVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kenai/jbosh/AttrVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 846
    sget-object v1, Lcom/kenai/jbosh/Attributes;->WAIT:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 847
    sget-object v1, Lcom/kenai/jbosh/Attributes;->HOLD:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 848
    sget-object v1, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 849
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->applyRoute(Lcom/kenai/jbosh/ComposableBody$Builder;)V

    .line 850
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->applyFrom(Lcom/kenai/jbosh/ComposableBody$Builder;)V

    .line 851
    sget-object v1, Lcom/kenai/jbosh/Attributes;->ACK:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 854
    sget-object v1, Lcom/kenai/jbosh/Attributes;->SID:Lcom/kenai/jbosh/BodyQName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 855
    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    return-object v0
.end method

.method private applySessionData(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 903
    invoke-virtual {p3}, Lcom/kenai/jbosh/ComposableBody;->rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    .line 904
    sget-object v1, Lcom/kenai/jbosh/Attributes;->SID:Lcom/kenai/jbosh/BodyQName;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v2}, Lcom/kenai/jbosh/CMSessionParams;->getSessionID()Lcom/kenai/jbosh/AttrSessionID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kenai/jbosh/AttrSessionID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 906
    sget-object v1, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 907
    invoke-direct {p0, v0, p1, p2}, Lcom/kenai/jbosh/BOSHClient;->applyResponseAcknowledgement(Lcom/kenai/jbosh/ComposableBody$Builder;J)V

    .line 908
    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    return-object v0
.end method

.method private assertLocked()V
    .locals 2

    .prologue
    .line 1207
    sget-boolean v0, Lcom/kenai/jbosh/BOSHClient;->ASSERTIONS:Z

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Lock is not held by current thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1213
    :cond_0
    return-void
.end method

.method private assertUnlocked()V
    .locals 2

    .prologue
    .line 1219
    sget-boolean v0, Lcom/kenai/jbosh/BOSHClient;->ASSERTIONS:Z

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Lock is held by current thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1225
    :cond_0
    return-void
.end method

.method private blockUntilSendable(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 4
    .parameter

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 820
    :goto_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kenai/jbosh/BOSHClient;->isImmediatelySendable(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 827
    :cond_0
    return-void
.end method

.method private checkForTerminalBindingConditions(Lcom/kenai/jbosh/AbstractBody;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-direct {p0, p2, p1}, Lcom/kenai/jbosh/BOSHClient;->getTerminalBindingCondition(ILcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_0

    .line 1242
    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Terminal binding condition encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kenai/jbosh/TerminalBindingCondition;->getCondition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kenai/jbosh/TerminalBindingCondition;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1247
    :cond_0
    return-void
.end method

.method private clearEmptyRequest()V
    .locals 2

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1132
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1136
    :cond_0
    return-void
.end method

.method public static create(Lcom/kenai/jbosh/BOSHClientConfig;)Lcom/kenai/jbosh/BOSHClient;
    .locals 2
    .parameter

    .prologue
    .line 363
    if-nez p0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client configuration may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    new-instance v0, Lcom/kenai/jbosh/BOSHClient;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/BOSHClient;-><init>(Lcom/kenai/jbosh/BOSHClientConfig;)V

    return-object v0
.end method

.method private dispose(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 684
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 717
    :goto_0
    return-void

    .line 690
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 695
    if-nez p1, :cond_1

    .line 696
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->fireConnectionClosed()V

    .line 701
    :goto_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 703
    :try_start_2
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->clearEmptyRequest()V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    .line 708
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 709
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 710
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->drained:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 712
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 715
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    invoke-interface {v0}, Lcom/kenai/jbosh/HTTPSender;->destroy()V

    .line 716
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->schedExec:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 698
    :cond_1
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/BOSHClient;->fireConnectionClosedOnError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 712
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private fireConnectionClosed()V
    .locals 6

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1504
    const/4 v0, 0x0

    .line 1505
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientConnListener;

    .line 1506
    if-nez v2, :cond_0

    .line 1507
    invoke-static {p0}, Lcom/kenai/jbosh/BOSHClientConnEvent;->createConnectionClosedEvent(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;

    move-result-object v2

    .line 1510
    :cond_0
    :try_start_0
    invoke-interface {v0, v2}, Lcom/kenai/jbosh/BOSHClientConnListener;->connectionEvent(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1511
    :catch_0
    move-exception v0

    .line 1512
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unhandled Exception"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1515
    :cond_1
    return-void
.end method

.method private fireConnectionClosedOnError(Ljava/lang/Throwable;)V
    .locals 6
    .parameter

    .prologue
    .line 1525
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1527
    const/4 v0, 0x0

    .line 1528
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientConnListener;

    .line 1529
    if-nez v2, :cond_0

    .line 1530
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    invoke-static {p0, v2, p1}, Lcom/kenai/jbosh/BOSHClientConnEvent;->createConnectionClosedOnErrorEvent(Lcom/kenai/jbosh/BOSHClient;Ljava/util/List;Ljava/lang/Throwable;)Lcom/kenai/jbosh/BOSHClientConnEvent;

    move-result-object v2

    .line 1535
    :cond_0
    :try_start_0
    invoke-interface {v0, v2}, Lcom/kenai/jbosh/BOSHClientConnListener;->connectionEvent(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unhandled Exception"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1540
    :cond_1
    return-void
.end method

.method private fireConnectionEstablished()V
    .locals 7

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 1474
    if-eqz v1, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1478
    :cond_0
    const/4 v0, 0x0

    .line 1479
    :try_start_0
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientConnListener;

    .line 1480
    if-nez v3, :cond_1

    .line 1481
    invoke-static {p0}, Lcom/kenai/jbosh/BOSHClientConnEvent;->createConnectionEstablishedEvent(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1485
    :cond_1
    :try_start_1
    invoke-interface {v0, v3}, Lcom/kenai/jbosh/BOSHClientConnListener;->connectionEvent(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    :try_start_2
    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Unhandled Exception"

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1491
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1492
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_2
    throw v0

    .line 1491
    :cond_3
    if-eqz v1, :cond_4

    .line 1492
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1495
    :cond_4
    return-void
.end method

.method private fireRequestSent(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 6
    .parameter

    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1432
    const/4 v0, 0x0

    .line 1433
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->requestListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientRequestListener;

    .line 1434
    if-nez v2, :cond_0

    .line 1435
    invoke-static {p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->createRequestSentEvent(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;

    move-result-object v2

    .line 1438
    :cond_0
    :try_start_0
    invoke-interface {v0, v2}, Lcom/kenai/jbosh/BOSHClientRequestListener;->requestSent(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unhandled Exception"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1443
    :cond_1
    return-void
.end method

.method private fireResponseReceived(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 6
    .parameter

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1454
    const/4 v0, 0x0

    .line 1455
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->responseListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientResponseListener;

    .line 1456
    if-nez v2, :cond_0

    .line 1457
    invoke-static {p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->createResponseReceivedEvent(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;

    move-result-object v2

    .line 1461
    :cond_0
    :try_start_0
    invoke-interface {v0, v2}, Lcom/kenai/jbosh/BOSHClientResponseListener;->responseReceived(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1462
    :catch_0
    move-exception v0

    .line 1463
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unhandled Exception"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1466
    :cond_1
    return-void
.end method

.method private getDefaultEmptyRequestDelay()J
    .locals 2

    .prologue
    .line 1145
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1148
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v0}, Lcom/kenai/jbosh/CMSessionParams;->getPollingInterval()Lcom/kenai/jbosh/AttrPolling;

    move-result-object v0

    .line 1150
    if-nez v0, :cond_0

    .line 1151
    sget v0, Lcom/kenai/jbosh/BOSHClient;->EMPTY_REQUEST_DELAY:I

    int-to-long v0, v0

    .line 1155
    :goto_0
    return-wide v0

    .line 1153
    :cond_0
    invoke-virtual {v0}, Lcom/kenai/jbosh/AttrPolling;->getInMilliseconds()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private getTerminalBindingCondition(ILcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/TerminalBindingCondition;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 757
    invoke-static {p2}, Lcom/kenai/jbosh/BOSHClient;->isTermination(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    sget-object v0, Lcom/kenai/jbosh/Attributes;->CONDITION:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p2, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {v0}, Lcom/kenai/jbosh/TerminalBindingCondition;->forString(Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 765
    :goto_0
    return-object v0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v0}, Lcom/kenai/jbosh/CMSessionParams;->getVersion()Lcom/kenai/jbosh/AttrVersion;

    move-result-object v0

    if-nez v0, :cond_1

    .line 763
    invoke-static {p1}, Lcom/kenai/jbosh/TerminalBindingCondition;->forHTTPResponseCode(I)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    goto :goto_0

    .line 765
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 661
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-interface {v0, v1}, Lcom/kenai/jbosh/HTTPSender;->init(Lcom/kenai/jbosh/BOSHClientConfig;)V

    .line 664
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->procRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    .line 665
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 666
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: Receive thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 673
    return-void

    .line 671
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private isImmediatelySendable(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 777
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 779
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    .line 797
    :goto_0
    return v0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v0}, Lcom/kenai/jbosh/CMSessionParams;->getRequests()Lcom/kenai/jbosh/AttrRequests;

    move-result-object v0

    .line 785
    if-nez v0, :cond_1

    move v0, v2

    .line 786
    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {v0}, Lcom/kenai/jbosh/AttrRequests;->intValue()I

    move-result v0

    .line 789
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    move v0, v2

    .line 790
    goto :goto_0

    .line 792
    :cond_2
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-static {p1}, Lcom/kenai/jbosh/BOSHClient;->isTermination(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/kenai/jbosh/BOSHClient;->isPause(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    .line 795
    goto :goto_0

    .line 797
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPause(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 1
    .parameter

    .prologue
    .line 728
    sget-object v0, Lcom/kenai/jbosh/Attributes;->PAUSE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRecoverableBindingCondition(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 2
    .parameter

    .prologue
    .line 1258
    const-string v0, "error"

    sget-object v1, Lcom/kenai/jbosh/Attributes;->TYPE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v1}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isTermination(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 2
    .parameter

    .prologue
    .line 740
    const-string v0, "terminate"

    sget-object v1, Lcom/kenai/jbosh/Attributes;->TYPE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v1}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorking()Z
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 808
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextExchange()Lcom/kenai/jbosh/HTTPExchange;
    .locals 6

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 994
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 995
    const/4 v0, 0x0

    .line 996
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 999
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1012
    :goto_0
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1014
    return-object v0

    .line 1002
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/HTTPExchange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    if-nez v0, :cond_2

    .line 1005
    :try_start_2
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1010
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v2

    .line 1007
    :try_start_3
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "Interrupted"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1012
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private processExchange(Lcom/kenai/jbosh/HTTPExchange;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1024
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1030
    :try_start_0
    invoke-virtual {p1}, Lcom/kenai/jbosh/HTTPExchange;->getHTTPResponse()Lcom/kenai/jbosh/HTTPResponse;

    move-result-object v0

    .line 1031
    invoke-interface {v0}, Lcom/kenai/jbosh/HTTPResponse;->getBody()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v1

    .line 1032
    invoke-interface {v0}, Lcom/kenai/jbosh/HTTPResponse;->getHTTPStatus()I
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1042
    invoke-direct {p0, v1}, Lcom/kenai/jbosh/BOSHClient;->fireResponseReceived(Lcom/kenai/jbosh/AbstractBody;)V

    .line 1045
    invoke-virtual {p1}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v2

    .line 1048
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1050
    :try_start_1
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->isWorking()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1103
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    :try_start_2
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1106
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-direct {p0, v2}, Lcom/kenai/jbosh/BOSHClient;->processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/kenai/jbosh/BOSHClient;->scheduleEmptyRequest(J)V

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1111
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1124
    :cond_1
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Could not obtain response"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1035
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1037
    :catch_1
    move-exception v0

    .line 1038
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1039
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1111
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1056
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    if-nez v3, :cond_3

    .line 1057
    invoke-static {v2, v1}, Lcom/kenai/jbosh/CMSessionParams;->fromSessionInit(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/CMSessionParams;

    move-result-object v3

    iput-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    .line 1060
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->fireConnectionEstablished()V

    .line 1062
    :cond_3
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    .line 1064
    invoke-direct {p0, v1, v0}, Lcom/kenai/jbosh/BOSHClient;->checkForTerminalBindingConditions(Lcom/kenai/jbosh/AbstractBody;I)V

    .line 1065
    invoke-static {v1}, Lcom/kenai/jbosh/BOSHClient;->isTermination(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1067
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1068
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1103
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    :try_start_4
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1106
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1107
    invoke-direct {p0, v2}, Lcom/kenai/jbosh/BOSHClient;->processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/kenai/jbosh/BOSHClient;->scheduleEmptyRequest(J)V

    .line 1109
    :cond_4
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1111
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1072
    :cond_5
    :try_start_5
    invoke-static {v1}, Lcom/kenai/jbosh/BOSHClient;->isRecoverableBindingCondition(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1074
    if-nez v4, :cond_f

    .line 1075
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v0

    .line 1077
    :goto_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/HTTPExchange;

    .line 1078
    new-instance v5, Lcom/kenai/jbosh/HTTPExchange;

    invoke-virtual {v0}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/kenai/jbosh/HTTPExchange;-><init>(Lcom/kenai/jbosh/AbstractBody;)V

    .line 1080
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1097
    :catch_2
    move-exception v0

    .line 1098
    :try_start_6
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Could not process response"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1099
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1100
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1103
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    :try_start_7
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1106
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1107
    invoke-direct {p0, v2}, Lcom/kenai/jbosh/BOSHClient;->processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/kenai/jbosh/BOSHClient;->scheduleEmptyRequest(J)V

    .line 1109
    :cond_6
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1111
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1082
    :cond_7
    :try_start_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/HTTPExchange;

    .line 1083
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v5, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 1103
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1105
    :try_start_9
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1106
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1107
    invoke-direct {p0, v2}, Lcom/kenai/jbosh/BOSHClient;->processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/kenai/jbosh/BOSHClient;->scheduleEmptyRequest(J)V

    .line 1109
    :cond_8
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1111
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_9
    throw v0

    :cond_a
    move-object v0, v1

    .line 1103
    :goto_4
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1105
    :try_start_a
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1106
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1107
    invoke-direct {p0, v2}, Lcom/kenai/jbosh/BOSHClient;->processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/kenai/jbosh/BOSHClient;->scheduleEmptyRequest(J)V

    .line 1109
    :cond_b
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1111
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1116
    :cond_c
    if-eqz v0, :cond_1

    .line 1117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/HTTPExchange;

    .line 1118
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    invoke-virtual {v0}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/kenai/jbosh/HTTPSender;->send(Lcom/kenai/jbosh/CMSessionParams;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/HTTPResponse;

    move-result-object v2

    .line 1120
    invoke-virtual {v0, v2}, Lcom/kenai/jbosh/HTTPExchange;->setHTTPResponse(Lcom/kenai/jbosh/HTTPResponse;)V

    .line 1121
    invoke-virtual {v0}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->fireRequestSent(Lcom/kenai/jbosh/AbstractBody;)V

    goto :goto_5

    .line 1087
    :cond_d
    :try_start_b
    invoke-direct {p0, v2, v1}, Lcom/kenai/jbosh/BOSHClient;->processRequestAcknowledgements(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)V

    .line 1088
    invoke-direct {p0, v2}, Lcom/kenai/jbosh/BOSHClient;->processResponseAcknowledgementData(Lcom/kenai/jbosh/AbstractBody;)V

    .line 1089
    invoke-direct {p0, v1}, Lcom/kenai/jbosh/BOSHClient;->processResponseAcknowledgementReport(Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/HTTPExchange;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_e

    if-nez v4, :cond_e

    .line 1092
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1093
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_b .. :try_end_b} :catch_2

    move-object v0, v1

    goto :goto_4

    .line 1111
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_4
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_e
    move-object v0, v4

    goto/16 :goto_4

    :cond_f
    move-object v1, v4

    goto/16 :goto_1
.end method

.method private processMessages()V
    .locals 6

    .prologue
    .line 947
    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Processing thread starting"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 951
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->nextExchange()Lcom/kenai/jbosh/HTTPExchange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 952
    if-nez v1, :cond_0

    .line 979
    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Processing thread exiting"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 982
    return-void

    .line 957
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchInterceptor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;

    .line 958
    if-eqz v0, :cond_1

    .line 959
    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;->interceptExchange(Lcom/kenai/jbosh/HTTPExchange;)Lcom/kenai/jbosh/HTTPExchange;

    move-result-object v0

    .line 960
    if-nez v0, :cond_2

    .line 961
    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding exchange on request of test hook: RID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v4

    sget-object v5, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v4, v5}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    :try_start_2
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 969
    :try_start_3
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 979
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Processing thread exiting"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    throw v0

    .line 969
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    move-object v0, v1

    .line 976
    :cond_2
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->processExchange(Lcom/kenai/jbosh/HTTPExchange;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J
    .locals 4
    .parameter

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1274
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v0}, Lcom/kenai/jbosh/CMSessionParams;->getMaxPause()Lcom/kenai/jbosh/AttrMaxPause;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1276
    :try_start_0
    sget-object v0, Lcom/kenai/jbosh/Attributes;->PAUSE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kenai/jbosh/AttrPause;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrPause;

    move-result-object v0

    .line 1278
    if-eqz v0, :cond_1

    .line 1279
    invoke-virtual {v0}, Lcom/kenai/jbosh/AttrPause;->getInMilliseconds()I

    move-result v0

    sget v1, Lcom/kenai/jbosh/BOSHClient;->PAUSE_MARGIN:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 1280
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1281
    sget v0, Lcom/kenai/jbosh/BOSHClient;->EMPTY_REQUEST_DELAY:I
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    .line 1290
    :cond_0
    :goto_0
    return-wide v0

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Could not extract"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1290
    :cond_1
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->getDefaultEmptyRequestDelay()J

    move-result-wide v0

    goto :goto_0
.end method

.method private processRequestAcknowledgements(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1304
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1306
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v0}, Lcom/kenai/jbosh/CMSessionParams;->isAckingRequests()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1338
    :cond_0
    return-void

    .line 1311
    :cond_1
    sget-object v0, Lcom/kenai/jbosh/Attributes;->REPORT:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p2, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1316
    sget-object v0, Lcom/kenai/jbosh/Attributes;->ACK:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p2, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    .line 1318
    if-nez v0, :cond_4

    .line 1320
    sget-object v0, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1326
    :goto_0
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1327
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing pending acks up to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1329
    :cond_2
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1330
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1331
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kenai/jbosh/AbstractBody;

    .line 1332
    sget-object v2, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v2}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1334
    invoke-virtual {v2, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    if-gtz v2, :cond_3

    .line 1335
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1322
    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private processResponseAcknowledgementData(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    .line 1350
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1352
    sget-object v0, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1353
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1355
    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    .line 1367
    :cond_0
    return-void

    .line 1357
    :cond_1
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1359
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1361
    :goto_0
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    .line 1363
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 1364
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private processResponseAcknowledgementReport(Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/HTTPExchange;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1383
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1385
    sget-object v0, Lcom/kenai/jbosh/Attributes;->REPORT:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    .line 1386
    if-nez v1, :cond_0

    move-object v0, v6

    .line 1420
    :goto_0
    return-object v0

    .line 1391
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1392
    sget-object v0, Lcom/kenai/jbosh/Attributes;->TIME:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1393
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1394
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received report of missing request (RID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ms)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v6

    .line 1401
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    .line 1402
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/AbstractBody;

    .line 1403
    sget-object v5, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v0, v5}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1405
    invoke-virtual {v2, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    move-object v4, v0

    .line 1408
    goto :goto_1

    .line 1410
    :cond_2
    if-nez v4, :cond_3

    .line 1411
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report of missing message with RID \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but local copy of that request was not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :cond_3
    new-instance v0, Lcom/kenai/jbosh/HTTPExchange;

    invoke-direct {v0, v4}, Lcom/kenai/jbosh/HTTPExchange;-><init>(Lcom/kenai/jbosh/AbstractBody;)V

    .line 1418
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1419
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto/16 :goto_0

    :cond_4
    move-object v0, v4

    goto :goto_2
.end method

.method private scheduleEmptyRequest(J)V
    .locals 4
    .parameter

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1164
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty request delay must be >= 0 (was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1169
    :cond_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->clearEmptyRequest()V

    .line 1170
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->isWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    :goto_0
    return-void

    .line 1175
    :cond_1
    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1176
    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling empty request in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1179
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->schedExec:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestRunnable:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->drained:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto :goto_0

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Could not schedule empty request"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private sendEmptyRequest()V
    .locals 2

    .prologue
    .line 1193
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1195
    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Sending empty request"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1197
    :try_start_0
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :goto_0
    return-void

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addBOSHClientConnListener(Lcom/kenai/jbosh/BOSHClientConnListener;)V
    .locals 2
    .parameter

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public addBOSHClientRequestListener(Lcom/kenai/jbosh/BOSHClientRequestListener;)V
    .locals 2
    .parameter

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->requestListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public addBOSHClientResponseListener(Lcom/kenai/jbosh/BOSHClientResponseListener;)V
    .locals 2
    .parameter

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 599
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "Session explicitly closed by caller"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V

    .line 600
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->disconnect(Lcom/kenai/jbosh/ComposableBody;)V

    .line 570
    return-void
.end method

.method public disconnect(Lcom/kenai/jbosh/ComposableBody;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcom/kenai/jbosh/ComposableBody;->rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    .line 587
    sget-object v1, Lcom/kenai/jbosh/Attributes;->TYPE:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "terminate"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 588
    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V

    .line 589
    return-void
.end method

.method drain()V
    .locals 4

    .prologue
    .line 623
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 625
    :try_start_0
    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Waiting while draining..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 627
    :goto_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->drained:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    :try_start_2
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 635
    :cond_1
    :try_start_3
    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Drained"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 637
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 639
    return-void
.end method

.method public getBOSHClientConfig()Lcom/kenai/jbosh/BOSHClientConfig;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    return-object v0
.end method

.method getCMSessionParams()Lcom/kenai/jbosh/CMSessionParams;
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public pause()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 538
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    .line 559
    :goto_0
    return v0

    .line 545
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v0}, Lcom/kenai/jbosh/CMSessionParams;->getMaxPause()Lcom/kenai/jbosh/AttrMaxPause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 546
    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 553
    :try_start_2
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    sget-object v2, Lcom/kenai/jbosh/Attributes;->PAUSE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v0}, Lcom/kenai/jbosh/AttrMaxPause;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_2
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_2 .. :try_end_2} :catch_0

    .line 559
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Could not send pause"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public removeBOSHClientConnListener(Lcom/kenai/jbosh/BOSHClientConnListener;)V
    .locals 2
    .parameter

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method public removeBOSHClientRequestListener(Lcom/kenai/jbosh/BOSHClientRequestListener;)V
    .locals 2
    .parameter

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->requestListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public removeBOSHClientResponseListener(Lcom/kenai/jbosh/BOSHClientResponseListener;)V
    .locals 2
    .parameter

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method public send(Lcom/kenai/jbosh/ComposableBody;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/BOSHClient;->blockUntilSendable(Lcom/kenai/jbosh/AbstractBody;)V

    .line 488
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->isWorking()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/kenai/jbosh/BOSHClient;->isTermination(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "Cannot send message when session is closed"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 493
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->requestIDSeq:Lcom/kenai/jbosh/RequestIDSequence;

    invoke-virtual {v0}, Lcom/kenai/jbosh/RequestIDSequence;->getNextRID()J

    move-result-wide v0

    .line 495
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    .line 496
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 498
    invoke-direct {p0, v0, v1, p1}, Lcom/kenai/jbosh/BOSHClient;->applySessionCreationRequest(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    .line 505
    :cond_2
    :goto_0
    new-instance v1, Lcom/kenai/jbosh/HTTPExchange;

    invoke-direct {v1, v0}, Lcom/kenai/jbosh/HTTPExchange;-><init>(Lcom/kenai/jbosh/AbstractBody;)V

    .line 506
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 508
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->clearEmptyRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 512
    invoke-virtual {v1}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    .line 513
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    invoke-interface {v3, v2, v0}, Lcom/kenai/jbosh/HTTPSender;->send(Lcom/kenai/jbosh/CMSessionParams;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/HTTPResponse;

    move-result-object v2

    .line 514
    invoke-virtual {v1, v2}, Lcom/kenai/jbosh/HTTPExchange;->setHTTPResponse(Lcom/kenai/jbosh/HTTPResponse;)V

    .line 515
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->fireRequestSent(Lcom/kenai/jbosh/AbstractBody;)V

    .line 516
    return-void

    .line 500
    :cond_3
    :try_start_2
    invoke-direct {p0, v0, v1, p1}, Lcom/kenai/jbosh/BOSHClient;->applySessionData(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v1}, Lcom/kenai/jbosh/CMSessionParams;->isAckingRequests()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method setExchangeInterceptor(Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;)V
    .locals 1
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchInterceptor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 648
    return-void
.end method
