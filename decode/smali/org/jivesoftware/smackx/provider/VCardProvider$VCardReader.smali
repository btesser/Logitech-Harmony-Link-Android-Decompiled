.class Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;
.super Ljava/lang/Object;
.source "VCardProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/provider/VCardProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VCardReader"
.end annotation


# instance fields
.field private final document:Lorg/w3c/dom/Document;

.field private final vCard:Lorg/jivesoftware/smackx/packet/VCard;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard;Lorg/w3c/dom/Document;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    .line 110
    iput-object p2, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    .line 111
    return-void
.end method

.method private appendText(Ljava/lang/StringBuilder;Lorg/w3c/dom/Node;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 248
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 249
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 250
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 251
    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    invoke-direct {p0, p1, v2}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->appendText(Ljava/lang/StringBuilder;Lorg/w3c/dom/Node;)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    return-void
.end method

.method private getTagContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 216
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->appendText(Ljava/lang/StringBuilder;Lorg/w3c/dom/Node;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isWorkHome(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 177
    const-string v0, "HOME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WORK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupAddresses()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 181
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    const-string v1, "ADR"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 182
    if-nez v2, :cond_1

    .line 211
    :cond_0
    return-void

    :cond_1
    move v3, v10

    .line 183
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 184
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 186
    const/4 v1, 0x0

    .line 187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v6, v1

    move v1, v10

    .line 190
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 191
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 192
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 190
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    :cond_2
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 194
    invoke-direct {p0, v8}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->isWorkHome(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v6, v8

    .line 195
    goto :goto_2

    .line 198
    :cond_3
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-direct {p0, v7}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v7, v10

    .line 202
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 203
    const-string v0, "HOME"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    iget-object v8, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setAddressFieldHome(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    .line 207
    :cond_5
    iget-object v8, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setAddressFieldWork(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 183
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0
.end method

.method private setupEmails()V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    const-string v1, "USERID"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 132
    if-nez v1, :cond_1

    .line 142
    :cond_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 134
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 135
    const-string v3, "WORK"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/packet/VCard;->setEmailWork(Ljava/lang/String;)V

    .line 133
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 139
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/packet/VCard;->setEmailHome(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupPhones()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    const-string v1, "TEL"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 146
    if-nez v0, :cond_1

    .line 174
    :cond_0
    return-void

    :cond_1
    move v1, v11

    .line 147
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 148
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v3, v11

    move-object v4, v10

    move-object v5, v10

    move-object v6, v10

    .line 152
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 153
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 154
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 152
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :cond_2
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 156
    const-string v9, "NUMBER"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 157
    invoke-direct {p0, v7}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 159
    :cond_3
    invoke-direct {p0, v8}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->isWorkHome(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v6, v8

    .line 160
    goto :goto_2

    :cond_4
    move-object v5, v8

    .line 163
    goto :goto_2

    .line 166
    :cond_5
    if-eqz v5, :cond_6

    if-nez v4, :cond_7

    .line 147
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_7
    const-string v2, "HOME"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 168
    iget-object v2, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-virtual {v2, v5, v4}, Lorg/jivesoftware/smackx/packet/VCard;->setPhoneHome(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 171
    :cond_8
    iget-object v2, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-virtual {v2, v5, v4}, Lorg/jivesoftware/smackx/packet/VCard;->setPhoneWork(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private setupSimpleFields()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 222
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    move v2, v6

    .line 223
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 224
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 225
    instance-of v3, v0, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 226
    check-cast v0, Lorg/w3c/dom/Element;

    .line 228
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_1

    .line 230
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smackx/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 232
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v4, v4, Lorg/w3c/dom/Text;

    if-eqz v4, :cond_0

    .line 234
    iget-object v4, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/jivesoftware/smackx/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_2
    return-void
.end method


# virtual methods
.method public initializeFields()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string v1, "GIVEN"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setFirstName(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string v1, "FAMILY"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setLastName(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string v1, "MIDDLE"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setMiddleName(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string v1, "BINVAL"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setEncodedImage(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->setupEmails()V

    .line 121
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string v1, "ORGNAME"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setOrganization(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string v1, "ORGUNIT"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setOrganizationUnit(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->setupSimpleFields()V

    .line 126
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->setupPhones()V

    .line 127
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->setupAddresses()V

    .line 128
    return-void
.end method
