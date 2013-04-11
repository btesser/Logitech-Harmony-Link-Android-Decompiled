.class public Lorg/jivesoftware/smackx/ChatStateManager;
.super Ljava/lang/Object;
.source "ChatStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/ChatStateManager$1;,
        Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;,
        Lorg/jivesoftware/smackx/ChatStateManager$OutgoingMessageInterceptor;
    }
.end annotation


# static fields
.field private static final filter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private static final managers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/ChatStateManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chatStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Chat;",
            "Lorg/jivesoftware/smackx/ChatState;",
            ">;"
        }
    .end annotation
.end field

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final incomingInterceptor:Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;

.field private final outgoingInterceptor:Lorg/jivesoftware/smackx/ChatStateManager$OutgoingMessageInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/ChatStateManager;->managers:Ljava/util/Map;

    .line 54
    new-instance v0, Lorg/jivesoftware/smack/filter/NotFilter;

    new-instance v1, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v2, "http://jabber.org/protocol/chatstates"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/ChatStateManager;->filter:Lorg/jivesoftware/smack/filter/PacketFilter;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/jivesoftware/smackx/ChatStateManager$OutgoingMessageInterceptor;

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/ChatStateManager$OutgoingMessageInterceptor;-><init>(Lorg/jivesoftware/smackx/ChatStateManager;Lorg/jivesoftware/smackx/ChatStateManager$1;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->outgoingInterceptor:Lorg/jivesoftware/smackx/ChatStateManager$OutgoingMessageInterceptor;

    .line 84
    new-instance v0, Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;-><init>(Lorg/jivesoftware/smackx/ChatStateManager;Lorg/jivesoftware/smackx/ChatStateManager$1;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->incomingInterceptor:Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;

    .line 89
    new-instance v0, Lorg/jivesoftware/smack/util/collections/ReferenceMap;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/util/collections/ReferenceMap;-><init>(II)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->chatStates:Ljava/util/Map;

    .line 93
    iput-object p1, p0, Lorg/jivesoftware/smackx/ChatStateManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 94
    return-void
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/ChatStateManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/ChatStateManager;Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/ChatStateManager;->updateChatState(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/ChatStateManager;Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/ChatStateManager;->fireNewChatState(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)V

    return-void
.end method

.method private fireNewChatState(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Chat;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/MessageListener;

    .line 156
    instance-of v1, p0, Lorg/jivesoftware/smackx/ChatStateListener;

    if-eqz v1, :cond_0

    .line 157
    check-cast p0, Lorg/jivesoftware/smackx/ChatStateListener;

    invoke-interface {p0, p1, p2}, Lorg/jivesoftware/smackx/ChatStateListener;->stateChanged(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)V

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method public static getInstance(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ChatStateManager;
    .locals 3
    .parameter

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 68
    :cond_0
    sget-object v1, Lorg/jivesoftware/smackx/ChatStateManager;->managers:Ljava/util/Map;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/ChatStateManager;->managers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/ChatStateManager;

    .line 70
    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lorg/jivesoftware/smackx/ChatStateManager;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/ChatStateManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 72
    invoke-direct {v0}, Lorg/jivesoftware/smackx/ChatStateManager;->init()V

    .line 73
    sget-object v2, Lorg/jivesoftware/smackx/ChatStateManager;->managers:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/ChatStateManager;->outgoingInterceptor:Lorg/jivesoftware/smackx/ChatStateManager$OutgoingMessageInterceptor;

    sget-object v2, Lorg/jivesoftware/smackx/ChatStateManager;->filter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/ChatManager;->addOutgoingMessageInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 99
    iget-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/ChatStateManager;->incomingInterceptor:Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ChatManager;->addChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V

    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/chatstates"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private updateChatState(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->chatStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/ChatState;

    .line 147
    if-eq v0, p2, :cond_0

    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->chatStates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 132
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_2
    check-cast p1, Lorg/jivesoftware/smackx/ChatStateManager;

    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p1, Lorg/jivesoftware/smackx/ChatStateManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jivesoftware/smackx/ChatStateManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCurrentState(Lorg/jivesoftware/smackx/ChatState;Lorg/jivesoftware/smack/Chat;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    invoke-direct {p0, p2, p1}, Lorg/jivesoftware/smackx/ChatStateManager;->updateChatState(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 124
    new-instance v1, Lorg/jivesoftware/smackx/packet/ChatStateExtension;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/packet/ChatStateExtension;-><init>(Lorg/jivesoftware/smackx/ChatState;)V

    .line 125
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 127
    invoke-virtual {p2, v0}, Lorg/jivesoftware/smack/Chat;->sendMessage(Lorg/jivesoftware/smack/packet/Message;)V

    goto :goto_0
.end method
