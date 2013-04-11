.class public Lcom/logitech/harmonylink/model/ImageReceiver;
.super Ljava/lang/Thread;
.source "ImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;,
        Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;
    }
.end annotation


# static fields
.field public static ICONS_TO_PRE_POPULATE:I = 0x0

.field public static IMAGES_PATH:Ljava/lang/String; = null

.field private static final REQUEST_URI:Ljava/lang/String; = "vnd.logitech.gtv/vnd.logitech.liveFolder?get"


# instance fields
.field private final IMAGES_DIR_NAME:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private mImageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x8

    sput v0, Lcom/logitech/harmonylink/model/ImageReceiver;->ICONS_TO_PRE_POPULATE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 41
    const-string v2, "images"

    iput-object v2, p0, Lcom/logitech/harmonylink/model/ImageReceiver;->IMAGES_DIR_NAME:Ljava/lang/String;

    .line 43
    const-class v2, Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/model/ImageReceiver;->LOG_TAG:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, imageDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 55
    .local v0, b:Z
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/logitech/harmonylink/model/ImageReceiver;->IMAGES_PATH:Ljava/lang/String;

    .line 59
    .end local v0           #b:Z
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/logitech/harmonylink/model/ImageReceiver;->IMAGES_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/model/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/model/ImageReceiver;->getIconFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V

    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/model/ImageReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/ImageReceiver;->getBookmarkIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBookmarkIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "responseXml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;-><init>(Lcom/logitech/harmonylink/model/ImageReceiver;Lcom/logitech/harmonylink/model/ImageReceiver$1;)V

    .line 191
    .local v0, saxHandler:Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;
    invoke-static {p1, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 192
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;->getEncodedIcon()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIconFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V
    .locals 9
    .parameter "path"
    .parameter "hash"
    .parameter "storeImagehandler"

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 150
    .local v2, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 152
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 153
    const-string v6, "GET"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 158
    .local v4, responseCode:I
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_0

    .line 159
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    :cond_0
    invoke-interface {p3, p1, p2, v1}, Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;->storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #responseCode:I
    .end local v5           #url:Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 164
    .local v3, e:Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 165
    .end local v3           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 166
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 168
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v6
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "encodedIcon"

    .prologue
    const/4 v4, 0x0

    .line 176
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 177
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    invoke-static {p1}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 180
    .local v0, arr:[B
    array-length v3, v0

    invoke-static {v0, v4, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 183
    array-length v3, v0

    invoke-static {v0, v4, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 184
    return-object v1
.end method

.method public quitLoop()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver;->mImageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver;->mImageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver;->mImageHandler:Landroid/os/Handler;

    .line 225
    :cond_0
    return-void
.end method

.method public retriveIconFromKa(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V
    .locals 4
    .parameter "connectClient"
    .parameter "path"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "imageHash"
    .parameter "storeImageHandler"

    .prologue
    .line 101
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    invoke-direct {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>()V

    .line 102
    .local v0, body:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 103
    const-string v1, "action"

    const-string v2, "retrieveItem"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 104
    const-string v1, "fields"

    const-string v2, "name, extracted_icon"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 105
    const-string v1, "iconMaxWidth"

    invoke-virtual {v0, v1, p3}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 106
    const-string v1, "iconMaxHeight"

    invoke-virtual {v0, v1, p4}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 107
    const-string v1, "KBD"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const-string v1, "vnd.logitech.gtv/vnd.logitech.liveFolder?get"

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/logitech/harmonylink/model/ImageReceiver$2;

    invoke-direct {v3, p0, p6, p2, p5}, Lcom/logitech/harmonylink/model/ImageReceiver$2;-><init>(Lcom/logitech/harmonylink/model/ImageReceiver;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 139
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 64
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 65
    new-instance v0, Lcom/logitech/harmonylink/model/ImageReceiver$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/model/ImageReceiver$1;-><init>(Lcom/logitech/harmonylink/model/ImageReceiver;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver;->mImageHandler:Landroid/os/Handler;

    .line 81
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 82
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver;->mImageHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void
.end method

.method public sendMessageAtFront(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver;->mImageHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 216
    return-void
.end method
