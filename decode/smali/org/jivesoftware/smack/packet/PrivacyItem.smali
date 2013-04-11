.class public Lorg/jivesoftware/smack/packet/PrivacyItem;
.super Ljava/lang/Object;
.source "PrivacyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/PrivacyItem$Type;,
        Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;
    }
.end annotation


# instance fields
.field private allow:Z

.field private filterIQ:Z

.field private filterMessage:Z

.field private filterPresence_in:Z

.field private filterPresence_out:Z

.field private order:I

.field private rule:Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterIQ:Z

    .line 33
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterMessage:Z

    .line 35
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_in:Z

    .line 37
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_out:Z

    .line 45
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setRule(Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;)V

    .line 46
    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setAllow(Z)V

    .line 47
    invoke-direct {p0, p3}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setOrder(I)V

    .line 48
    return-void
.end method

.method private getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->rule:Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    return-object v0
.end method

.method private setAllow(Z)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->allow:Z

    .line 67
    return-void
.end method

.method private setOrder(I)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->order:I

    .line 174
    return-void
.end method

.method private setRule(Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->rule:Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    .line 247
    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->order:I

    return v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAllow()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->allow:Z

    return v0
.end method

.method public isFilterEverything()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterIQ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterPresence_in()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterPresence_out()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilterIQ()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterIQ:Z

    return v0
.end method

.method public isFilterMessage()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterMessage:Z

    return v0
.end method

.method public isFilterPresence_in()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_in:Z

    return v0
.end method

.method public isFilterPresence_out()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_out:Z

    return v0
.end method

.method public setFilterIQ(Z)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterIQ:Z

    .line 87
    return-void
.end method

.method public setFilterMessage(Z)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterMessage:Z

    .line 107
    return-void
.end method

.method public setFilterPresence_in(Z)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_in:Z

    .line 127
    return-void
.end method

.method public setFilterPresence_out(Z)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_out:Z

    .line 147
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 189
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->setValue(Ljava/lang/String;)V

    .line 191
    :cond_1
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const-string v1, "<item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isAllow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    const-string v1, " action=\"allow\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :goto_0
    const-string v1, " order=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    const-string v1, " value=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterEverything()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 259
    :cond_2
    const-string v1, " action=\"deny\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :cond_3
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterIQ()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 273
    const-string v1, "<iq/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    const-string v1, "<message/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterPresence_in()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 279
    const-string v1, "<presence-in/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterPresence_out()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 282
    const-string v1, "<presence-out/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_7
    const-string v1, "</item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
