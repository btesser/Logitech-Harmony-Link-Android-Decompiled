.class public Lorg/jivesoftware/smackx/search/UserSearchManager;
.super Ljava/lang/Object;
.source "UserSearchManager.java"


# instance fields
.field private con:Lorg/jivesoftware/smack/Connection;

.field private userSearch:Lorg/jivesoftware/smackx/search/UserSearch;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/jivesoftware/smackx/search/UserSearchManager;->con:Lorg/jivesoftware/smack/Connection;

    .line 62
    new-instance v0, Lorg/jivesoftware/smackx/search/UserSearch;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/search/UserSearch;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/search/UserSearchManager;->userSearch:Lorg/jivesoftware/smackx/search/UserSearch;

    .line 63
    return-void
.end method


# virtual methods
.method public getSearchForm(Ljava/lang/String;)Lorg/jivesoftware/smackx/Form;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smackx/search/UserSearchManager;->userSearch:Lorg/jivesoftware/smackx/search/UserSearch;

    iget-object v1, p0, Lorg/jivesoftware/smackx/search/UserSearchManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/search/UserSearch;->getSearchForm(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/Form;

    move-result-object v0

    return-object v0
.end method

.method public getSearchResults(Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)Lorg/jivesoftware/smackx/ReportedData;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smackx/search/UserSearchManager;->userSearch:Lorg/jivesoftware/smackx/search/UserSearch;

    iget-object v1, p0, Lorg/jivesoftware/smackx/search/UserSearchManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, v1, p1, p2}, Lorg/jivesoftware/smackx/search/UserSearch;->sendSearchForm(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)Lorg/jivesoftware/smackx/ReportedData;

    move-result-object v0

    return-object v0
.end method

.method public getSearchServices()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v1, p0, Lorg/jivesoftware/smackx/search/UserSearchManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lorg/jivesoftware/smackx/search/UserSearchManager;->con:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v2

    .line 101
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 113
    :try_start_1
    const-string v4, "jabber:iq:search"

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 122
    :cond_1
    return-object v0

    .line 108
    :catch_1
    move-exception v3

    goto :goto_0
.end method
