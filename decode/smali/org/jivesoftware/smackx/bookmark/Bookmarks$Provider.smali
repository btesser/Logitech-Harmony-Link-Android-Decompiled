.class public Lorg/jivesoftware/smackx/bookmark/Bookmarks$Provider;
.super Ljava/lang/Object;
.source "Bookmarks.java"

# interfaces
.implements Lorg/jivesoftware/smackx/provider/PrivateDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bookmark/Bookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method


# virtual methods
.method public parsePrivateData(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/PrivateData;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 230
    new-instance v0, Lorg/jivesoftware/smackx/bookmark/Bookmarks;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;-><init>()V

    .line 232
    const/4 v1, 0x0

    .line 233
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 234
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 235
    if-ne v2, v5, :cond_1

    const-string v3, "url"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    #calls: Lorg/jivesoftware/smackx/bookmark/Bookmarks;->getURLStorage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;
    invoke-static {p1}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->access$000(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;

    move-result-object v2

    .line 237
    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->addBookmarkedURL(Lorg/jivesoftware/smackx/bookmark/BookmarkedURL;)V

    goto :goto_0

    .line 241
    :cond_1
    if-ne v2, v5, :cond_2

    const-string v3, "conference"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    #calls: Lorg/jivesoftware/smackx/bookmark/Bookmarks;->getConferenceStorage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;
    invoke-static {p1}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->access$100(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;

    move-result-object v2

    .line 245
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/bookmark/Bookmarks;->addBookmarkedConference(Lorg/jivesoftware/smackx/bookmark/BookmarkedConference;)V

    goto :goto_0

    .line 247
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v2, "storage"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const/4 v1, 0x1

    goto :goto_0

    .line 254
    :cond_3
    return-object v0
.end method
