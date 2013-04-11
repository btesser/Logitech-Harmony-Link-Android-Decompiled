.class public Lcom/logitech/harmonylink/model/Bookmarks;
.super Lcom/logitech/harmonylink/model/ContentType;
.source "Bookmarks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;,
        Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;
    }
.end annotation


# static fields
.field private static final BOOKMARKS:Ljava/lang/String; = "Bookmarks"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final REQUEST_URI:Ljava/lang/String; = "vnd.logitech.gtv/vnd.logitech.liveFolder?get"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/logitech/harmonylink/model/Bookmarks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/model/Bookmarks;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/logitech/harmonylink/model/ContentType;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/ContentType;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/logitech/harmonylink/model/Bookmarks;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/model/Bookmarks;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/Bookmarks;->getBookmarkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/model/Bookmarks;Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/logitech/harmonylink/model/Bookmarks;->retrieveBookmarks(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/logitech/harmonylink/model/Bookmarks;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/model/Bookmarks;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/Bookmarks;->getBookmarksContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getBookmarkPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "responseXml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;-><init>(Lcom/logitech/harmonylink/model/Bookmarks;Lcom/logitech/harmonylink/model/Bookmarks$1;)V

    .line 190
    .local v0, saxHandler:Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;
    invoke-static {p1, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 191
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/Bookmarks$LiveFolderParser;->getFolderPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBookmarksContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "responseXml"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;-><init>(Lcom/logitech/harmonylink/model/Bookmarks;Lcom/logitech/harmonylink/model/Bookmarks$1;)V

    .line 214
    .local v0, saxHandler:Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;
    invoke-static {p1, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 215
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/Bookmarks$BookmarksParser;->getBookmarks()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private retrieveBookmarks(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "connectClient"
    .parameter "oneTouchManager"
    .parameter "isFromAddMore"
    .parameter "folderPath"
    .parameter "bodyContent"

    .prologue
    .line 128
    if-nez p5, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":action=retrieveContents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":fields=name, extracted_icon_crc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 137
    :goto_0
    const-string v0, "vnd.logitech.gtv/vnd.logitech.liveFolder?get"

    new-instance v1, Lcom/logitech/harmonylink/model/Bookmarks$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/logitech/harmonylink/model/Bookmarks$2;-><init>(Lcom/logitech/harmonylink/model/Bookmarks;ZLcom/logitech/harmonylink/harmony/OneTouchManager;)V

    invoke-virtual {p1, v0, p5, v1}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 179
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":action=retrieveContents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":fields=name, extracted_icon_crc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0
.end method


# virtual methods
.method public retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;Z)V
    .locals 1
    .parameter "connectClient"
    .parameter "oneTouchManager"
    .parameter "isFromAddMore"

    .prologue
    .line 51
    if-eqz p3, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/model/Bookmarks;->setPopulated(Z)V

    goto :goto_0
.end method

.method public retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V
    .locals 9
    .parameter "connectClient"
    .parameter "oneTouchManager"
    .parameter "isFromAddMore"
    .parameter "bodyContent"

    .prologue
    .line 68
    new-instance v6, Lcom/logitech/connect/client/transport/NameValuePairs;

    invoke-direct {v6}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>()V

    .line 69
    .local v6, body:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v0, "path"

    const-string v1, "/"

    invoke-virtual {v6, v0, v1}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 70
    const-string v0, "action"

    const-string v1, "retrieveContents"

    invoke-virtual {v6, v0, v1}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 71
    const-string v7, "vnd.logitech.gtv/vnd.logitech.liveFolder?get"

    invoke-virtual {v6}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/logitech/harmonylink/model/Bookmarks$1;

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/model/Bookmarks$1;-><init>(Lcom/logitech/harmonylink/model/Bookmarks;ZLcom/logitech/harmonylink/harmony/OneTouchManager;Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8, v0}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 123
    return-void
.end method

.method public retriveIcon(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "connectClient"
    .parameter "kaBoxId"
    .parameter "path"
    .parameter "imageView"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "hash"

    .prologue
    .line 184
    return-void
.end method
