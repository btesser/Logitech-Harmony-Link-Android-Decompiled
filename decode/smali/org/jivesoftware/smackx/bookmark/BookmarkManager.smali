.class public Lorg/jivesoftware/smackx/bookmark/BookmarkManager;
.super Ljava/lang/Object;
.source "BookmarkManager.java"


# static fields
.field private static final bookmarkManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/bookmark/BookmarkManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bookmarkLock:Ljava/lang/Object;

.field private bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

.field private privateDataManager:Lorg/jivesoftware/smackx/PrivateDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarkManagerMap:Ljava/util/Map;

    .line 41
    const-string v0, "storage"

    const-string v1, "storage:bookmarks"

    new-instance v2, Lorg/jivesoftware/smackx/bookmark/Bookmarks$Provider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/bookmark/Bookmarks$Provider;-><init>()V

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smackx/PrivateDataManager;->addPrivateDataProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/provider/PrivateDataProvider;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarkLock:Ljava/lang/Object;

    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Invalid connection."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Lorg/jivesoftware/smackx/PrivateDataManager;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/PrivateDataManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/PrivateDataManager;

    .line 80
    return-void
.end method

.method public static declared-synchronized getBookmarkManager(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/bookmark/BookmarkManager;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 56
    const-class v1, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarkManagerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 59
    sget-object v2, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarkManagerMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private retrieveBookmarks()Lorg/jivesoftware/smackx/bookmark/Bookmarks;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/PrivateDataManager;

    const-string v2, "storage"

    const-string v3, "storage:bookmarks"

    invoke-virtual {v0, v2, v3}, Lorg/jivesoftware/smackx/PrivateDataManager;->getPrivateData(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/PrivateData;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    iput-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    monitor-exit v1

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addBookmarkedConference(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    .line 110
    new-instance v0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->getBookmarkedConferences()Ljava/util/List;

    move-result-object v1

    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;

    .line 115
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->isShared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot modify shared bookmark"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->setAutoJoin(Z)V

    .line 119
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->setName(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p4}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->setNickname(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p5}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->setPassword(Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/PrivateDataManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/PrivateDataManager;->setPrivateData(Lorg/jivesoftware/smackx/packet/PrivateData;)V

    .line 127
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->addBookmarkedConference(Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;)V

    goto :goto_0
.end method

.method public addBookmarkedURL(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    .line 176
    new-instance v0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;

    invoke-direct {v0, p1, p2, p3}, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->getBookmarkedURLS()Ljava/util/List;

    move-result-object v1

    .line 178
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;

    .line 180
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->isShared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot modify shared bookmarks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->setName(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->setRss(Z)V

    .line 189
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/PrivateDataManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/PrivateDataManager;->setPrivateData(Lorg/jivesoftware/smackx/packet/PrivateData;)V

    .line 190
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->addBookmarkedURL(Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;)V

    goto :goto_0
.end method

.method public getBookmarkedConferences()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->getBookmarkedConferences()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getBookmarkedURLs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    .line 162
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->getBookmarkedURLS()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeBookmarkedConference(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    .line 140
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->getBookmarkedConferences()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;

    .line 143
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;->isShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Conference is shared and can\'t be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/PrivateDataManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/PrivateDataManager;->setPrivateData(Lorg/jivesoftware/smackx/packet/PrivateData;)V

    .line 152
    :cond_2
    return-void
.end method

.method public removeBookmarkedURL(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    .line 201
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->getBookmarkedURLS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;

    .line 204
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;->isShared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot delete a shared bookmark."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/PrivateDataManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmark/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/PrivateDataManager;->setPrivateData(Lorg/jivesoftware/smackx/packet/PrivateData;)V

    .line 213
    :cond_2
    return-void
.end method
