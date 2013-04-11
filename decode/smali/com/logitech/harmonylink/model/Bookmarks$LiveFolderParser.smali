.class Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Bookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/model/Bookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveFolderParser"
.end annotation


# instance fields
.field private mFolderPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/logitech/harmonylink/model/Bookmarks;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/model/Bookmarks;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;->this$0:Lcom/logitech/harmonylink/model/Bookmarks;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/model/Bookmarks;Lcom/logitech/harmonylink/model/Bookmarks$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;-><init>(Lcom/logitech/harmonylink/model/Bookmarks;)V

    return-void
.end method


# virtual methods
.method public getFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
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
    .line 199
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "title"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bookmarks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "path"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;->mFolderPath:Ljava/lang/String;

    .line 204
    :cond_0
    return-void
.end method
