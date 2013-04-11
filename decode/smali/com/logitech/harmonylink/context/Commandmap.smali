.class public Lcom/logitech/harmonylink/context/Commandmap;
.super Ljava/util/HashMap;
.source "Commandmap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "appContext"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 23
    :try_start_0
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/Commandmap;->getCommandsFromXML(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 27
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 29
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCommandsFromXML(Landroid/content/Context;)V
    .locals 10
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 38
    .local v4, res:Landroid/content/res/Resources;
    const/high16 v8, 0x7f04

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 39
    .local v7, xpp:Landroid/content/res/XmlResourceParser;
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    .line 40
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 41
    .local v1, eventType:I
    const/4 v5, 0x0

    .line 42
    .local v5, tag:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x1

    if-eq v1, v8, :cond_3

    .line 43
    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    .line 45
    :cond_1
    const/4 v8, 0x2

    if-ne v1, v8, :cond_2

    .line 47
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 48
    :cond_2
    const/4 v8, 0x3

    if-eq v1, v8, :cond_0

    .line 50
    const/4 v8, 0x4

    if-ne v1, v8, :cond_0

    .line 52
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 53
    .local v6, values:Ljava/lang/String;
    invoke-virtual {p0, v6, v5}, Lcom/logitech/harmonylink/context/Commandmap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 61
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #values:Ljava/lang/String;
    :cond_3
    return-void
.end method
