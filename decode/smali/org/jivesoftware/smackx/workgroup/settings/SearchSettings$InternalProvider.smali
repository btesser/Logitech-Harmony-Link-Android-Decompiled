.class public Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings$InternalProvider;
.super Ljava/lang/Object;
.source "SearchSettings.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parser not in proper position, or bad XML."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;-><init>()V

    .line 90
    const/4 v1, 0x0

    move v3, v1

    move-object v1, v2

    .line 94
    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 96
    if-ne v4, v7, :cond_2

    const-string v5, "forums"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_2
    if-ne v4, v7, :cond_3

    const-string v5, "kb"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 102
    :cond_3
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const-string v4, "search-settings"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    const/4 v3, 0x1

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->setForumsLocation(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->setKbLocation(Ljava/lang/String;)V

    .line 109
    return-object v0
.end method
