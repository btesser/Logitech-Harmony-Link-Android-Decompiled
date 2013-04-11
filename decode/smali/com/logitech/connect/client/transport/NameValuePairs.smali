.class public Lcom/logitech/connect/client/transport/NameValuePairs;
.super Ljava/util/HashMap;
.source "NameValuePairs.java"


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


# static fields
.field private static final KEY_MODE:I = 0x0

.field private static final VALUE_MODE:I = 0x1

.field private static final serialVersionUID:J = -0x1884cdf35c9aef09L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/logitech/connect/client/transport/NameValuePairs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public static obtainValueKeyPairs(Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;
    .locals 11
    .parameter "body"

    .prologue
    const/16 v10, 0x3d

    const/16 v9, 0x3a

    .line 39
    new-instance v5, Lcom/logitech/connect/client/transport/NameValuePairs;

    invoke-direct {v5}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>()V

    .line 41
    .local v5, result:Lcom/logitech/connect/client/transport/NameValuePairs;
    if-nez p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v5

    .line 47
    :cond_1
    const/4 v4, 0x0

    .line 48
    .local v4, mode:I
    const-string v3, ""

    .line 49
    .local v3, key:Ljava/lang/String;
    const-string v6, ""

    .line 50
    .local v6, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 52
    .local v0, c:C
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v1, v7

    .line 53
    .local v1, cc:C
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 50
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    .end local v1           #cc:C
    :cond_2
    const/16 v7, 0x20

    move v1, v7

    goto :goto_2

    .line 55
    .restart local v1       #cc:C
    :pswitch_0
    if-eq v0, v10, :cond_3

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 58
    :cond_3
    const/4 v4, 0x1

    .line 60
    goto :goto_3

    .line 62
    :pswitch_1
    if-ne v0, v10, :cond_4

    if-ne v1, v10, :cond_4

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 65
    :cond_4
    if-ne v0, v9, :cond_5

    if-ne v1, v9, :cond_5

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 68
    :cond_5
    if-ne v0, v9, :cond_6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 69
    invoke-virtual {v5, v3, v6}, Lcom/logitech/connect/client/transport/NameValuePairs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v3, ""

    .line 71
    const-string v6, ""

    .line 72
    const/4 v4, 0x0

    goto :goto_3

    .line 74
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 79
    .end local v0           #c:C
    .end local v1           #cc:C
    :cond_7
    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 80
    invoke-virtual {v5, v3, v6}, Lcom/logitech/connect/client/transport/NameValuePairs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/logitech/connect/client/transport/NameValuePairs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object p0
.end method

.method public containsPair(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/logitech/connect/client/transport/NameValuePairs;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 98
    .local v1, first:Z
    invoke-virtual {p0}, Lcom/logitech/connect/client/transport/NameValuePairs;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    .local v3, key:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 100
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "="

    const-string v7, "=="

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ":"

    const-string v7, "::"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 105
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
