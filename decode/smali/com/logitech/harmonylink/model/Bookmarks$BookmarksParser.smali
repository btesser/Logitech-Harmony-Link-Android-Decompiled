.class Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Bookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/model/Bookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookmarksParser"
.end annotation


# instance fields
.field mBookmarks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/logitech/harmonylink/model/Bookmarks;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/model/Bookmarks;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;->mBookmarks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/model/Bookmarks;Lcom/logitech/harmonylink/model/Bookmarks$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;-><init>(Lcom/logitech/harmonylink/model/Bookmarks;)V

    return-void
.end method


# virtual methods
.method public getBookmarks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;->mBookmarks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v4, "item"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    const-string v4, "extracted_icon_crc"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, extractedIconHash:Ljava/lang/String;
    const-string v4, "name"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/logitech/harmonylink/util/StringUtil;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, name:Ljava/lang/String;
    const-string v4, "path"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/logitech/harmonylink/util/StringUtil;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, iconPath:Ljava/lang/String;
    new-instance v3, Lcom/logitech/harmonylink/model/OneTouchContent;

    const-string v4, "bookmarks"

    invoke-direct {v3, v2, v4}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v3, oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v3, v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->setIconPath(Ljava/lang/String;)V

    .line 234
    if-nez v0, :cond_0

    .line 235
    const-string v0, "hash"

    .line 237
    :cond_0
    invoke-virtual {v3, v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->setHash(Ljava/lang/String;)V

    .line 238
    const-string v4, "path"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/model/OneTouchContent;->setLauncherParameter(Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;->mBookmarks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v0           #extractedIconHash:Ljava/lang/String;
    .end local v1           #iconPath:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_1
    return-void
.end method
