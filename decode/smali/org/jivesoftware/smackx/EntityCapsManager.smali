.class public Lorg/jivesoftware/smackx/EntityCapsManager;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/EntityCapsManager$CapsPacketListener;
    }
.end annotation


# static fields
.field public static final HASH_METHOD:Ljava/lang/String; = "sha-1"

.field public static final HASH_METHOD_CAPS:Ljava/lang/String; = "SHA-1"

.field private static caps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static entityNode:Ljava/lang/String;


# instance fields
.field private capsVerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/CapsVerListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentCapsVersion:Ljava/lang/String;

.field private userCaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    const-string v0, "http://www.igniterealtime.org/projects/smack/"

    sput-object v0, Lorg/jivesoftware/smackx/EntityCapsManager;->entityNode:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/EntityCapsManager;->caps:Ljava/util/Map;

    .line 78
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    const-string v1, "c"

    const-string v2, "http://jabber.org/protocol/caps"

    new-instance v3, Lorg/jivesoftware/smackx/provider/CapsExtensionProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/CapsExtensionProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->userCaps:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->capsVerListeners:Ljava/util/Set;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public static addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-static {p1}, Lorg/jivesoftware/smackx/EntityCapsManager;->cleanupDicsoverInfo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 91
    sget-object v0, Lorg/jivesoftware/smackx/EntityCapsManager;->caps:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method private static capsToHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 228
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 230
    invoke-static {v0}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cleanupDicsoverInfo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setFrom(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setPacketID(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private static formFieldValuesToCaps(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 238
    const-string v0, ""

    .line 239
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 240
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_0
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 246
    :cond_1
    return-object v0
.end method

.method public static getDiscoverInfoByNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 1
    .parameter

    .prologue
    .line 176
    sget-object v0, Lorg/jivesoftware/smackx/EntityCapsManager;->caps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    return-object p0
.end method

.method private notifyCapsVerListeners()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->capsVerListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/CapsVerListener;

    .line 206
    iget-object v2, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/jivesoftware/smackx/CapsVerListener;->capsVerUpdated(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public addCapsVerListener(Lorg/jivesoftware/smackx/CapsVerListener;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->capsVerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/jivesoftware/smackx/CapsVerListener;->capsVerUpdated(Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/Connection;)V
    .locals 6
    .parameter

    .prologue
    .line 186
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v4, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v4, "c"

    const-string v5, "http://jabber.org/protocol/caps"

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 190
    new-instance v1, Lorg/jivesoftware/smackx/EntityCapsManager$CapsPacketListener;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/EntityCapsManager$CapsPacketListener;-><init>(Lorg/jivesoftware/smackx/EntityCapsManager;)V

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 191
    return-void
.end method

.method public addUserCapsNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 103
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->userCaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    return-void
.end method

.method calculateEntityCapsVersion(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jivesoftware/smackx/packet/DataForm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    const-string v0, ""

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "client/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    monitor-enter p4

    .line 261
    :try_start_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 262
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 266
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 269
    :cond_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    if-eqz p5, :cond_6

    .line 272
    monitor-enter p5

    .line 273
    :try_start_2
    new-instance v2, Ljava/util/TreeSet;

    new-instance v0, Lorg/jivesoftware/smackx/EntityCapsManager$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/EntityCapsManager$1;-><init>(Lorg/jivesoftware/smackx/EntityCapsManager;)V

    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 280
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p5}, Lorg/jivesoftware/smackx/packet/DataForm;->getFields()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 284
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FORM_TYPE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 285
    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    :cond_2
    move-object v4, v0

    .line 290
    goto :goto_2

    .line 293
    :cond_3
    if-eqz v4, :cond_5

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/EntityCapsManager;->formFieldValuesToCaps(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_3
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/EntityCapsManager;->formFieldValuesToCaps(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 302
    :cond_4
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    .line 306
    :goto_5
    invoke-static {v0}, Lorg/jivesoftware/smackx/EntityCapsManager;->capsToHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/EntityCapsManager;->setCurrentCapsVersion(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;)V

    .line 307
    return-void

    .line 302
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_5
.end method

.method public getCapsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoverInfoByUser(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->userCaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 136
    if-nez p0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/EntityCapsManager;->getDiscoverInfoByNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lorg/jivesoftware/smackx/EntityCapsManager;->entityNode:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeVersionByUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->userCaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeCapsVerListener(Lorg/jivesoftware/smackx/CapsVerListener;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->capsVerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public removeUserCapsNode(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->userCaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public setCurrentCapsVersion(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p2, p0, Lorg/jivesoftware/smackx/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/EntityCapsManager;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jivesoftware/smackx/EntityCapsManager;->addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 317
    invoke-direct {p0}, Lorg/jivesoftware/smackx/EntityCapsManager;->notifyCapsVerListeners()V

    .line 318
    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    sput-object p1, Lorg/jivesoftware/smackx/EntityCapsManager;->entityNode:Ljava/lang/String;

    .line 167
    return-void
.end method
