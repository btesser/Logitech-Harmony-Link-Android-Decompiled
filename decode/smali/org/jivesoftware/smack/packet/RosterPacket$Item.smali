.class public Lorg/jivesoftware/smack/packet/RosterPacket$Item;
.super Ljava/lang/Object;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final groupNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

.field private itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field private name:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 120
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 121
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    .line 122
    return-void
.end method


# virtual methods
.method public addGroupName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public getGroupNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getItemStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    return-object v0
.end method

.method public getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    return-object v0
.end method

.method public removeGroupName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 185
    return-void
.end method

.method public setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 167
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v1, "<item jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eqz v1, :cond_1

    .line 222
    const-string v1, " subscription=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    if-eqz v1, :cond_2

    .line 225
    const-string v1, " ask=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_2
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 229
    const-string v2, "<group>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</group>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_3
    const-string v1, "</item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
