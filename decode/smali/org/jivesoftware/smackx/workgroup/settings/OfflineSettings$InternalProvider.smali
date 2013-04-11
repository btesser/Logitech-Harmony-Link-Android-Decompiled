.class public Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings$InternalProvider;
.super Ljava/lang/Object;
.source "OfflineSettings.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    .line 116
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parser not in proper position, or bad XML."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;-><init>()V

    .line 122
    const/4 v1, 0x0

    move-object v3, v2

    move-object v4, v2

    move v5, v1

    move-object v1, v2

    .line 128
    :cond_1
    :goto_0
    if-nez v5, :cond_6

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 130
    if-ne v6, v9, :cond_2

    const-string v7, "redirectPage"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 133
    :cond_2
    if-ne v6, v9, :cond_3

    const-string v7, "subject"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 134
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 136
    :cond_3
    if-ne v6, v9, :cond_4

    const-string v7, "offlineText"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 139
    :cond_4
    if-ne v6, v9, :cond_5

    const-string v7, "emailAddress"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_5
    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    const-string v6, "offline-settings"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    const/4 v5, 0x1

    goto :goto_0

    .line 147
    :cond_6
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setEmailAddress(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setRedirectURL(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setSubject(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setOfflineText(Ljava/lang/String;)V

    .line 151
    return-object v0
.end method
