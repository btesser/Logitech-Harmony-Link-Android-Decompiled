.class public Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataIQProvider;
.super Ljava/lang/Object;
.source "PrivateDataManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/PrivateDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateDataIQProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 281
    const/4 v0, 0x0

    move-object v1, v0

    move v0, v7

    .line 283
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 285
    if-ne v2, v9, :cond_6

    .line 286
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v1, v2}, Lorg/jivesoftware/smackx/PrivateDataManager;->getPrivateDataProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/provider/PrivateDataProvider;

    move-result-object v3

    .line 291
    if-eqz v3, :cond_1

    .line 292
    invoke-interface {v3, p1}, Lorg/jivesoftware/smackx/provider/PrivateDataProvider;->parsePrivateData(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/PrivateData;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_1
    new-instance v3, Lorg/jivesoftware/smackx/packet/DefaultPrivateData;

    invoke-direct {v3, v1, v2}, Lorg/jivesoftware/smackx/packet/DefaultPrivateData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v7

    .line 298
    :cond_2
    :goto_1
    if-nez v2, :cond_5

    .line 299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 300
    if-ne v4, v9, :cond_4

    .line 301
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/jivesoftware/smackx/packet/DefaultPrivateData;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 309
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 310
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-virtual {v3, v4, v5}, Lorg/jivesoftware/smackx/packet/DefaultPrivateData;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :cond_4
    if-ne v4, v10, :cond_2

    .line 316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v8

    .line 317
    goto :goto_1

    :cond_5
    move-object v1, v3

    .line 321
    goto :goto_0

    .line 324
    :cond_6
    if-ne v2, v10, :cond_0

    .line 325
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v8

    .line 326
    goto :goto_0

    .line 330
    :cond_7
    new-instance v0, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;-><init>(Lorg/jivesoftware/smackx/packet/PrivateData;)V

    return-object v0
.end method
