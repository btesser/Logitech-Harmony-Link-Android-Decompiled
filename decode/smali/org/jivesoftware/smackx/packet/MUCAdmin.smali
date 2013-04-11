.class public Lorg/jivesoftware/smackx/packet/MUCAdmin;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCAdmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v0, "<query xmlns=\"http://jabber.org/protocol/muc#admin\">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    monitor-enter v2

    .line 69
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;

    .line 71
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCAdmin$Item;->toXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 73
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCAdmin;->getExtensionsXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "</query>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getItems()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    monitor-enter v0

    .line 50
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/MUCAdmin;->items:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
