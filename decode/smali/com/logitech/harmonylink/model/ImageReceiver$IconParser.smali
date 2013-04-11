.class Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/model/ImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconParser"
.end annotation


# instance fields
.field private mEncodedIcon:Ljava/lang/String;

.field final synthetic this$0:Lcom/logitech/harmonylink/model/ImageReceiver;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/model/ImageReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;->this$0:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/model/ImageReceiver;Lcom/logitech/harmonylink/model/ImageReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;-><init>(Lcom/logitech/harmonylink/model/ImageReceiver;)V

    return-void
.end method


# virtual methods
.method public getEncodedIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;->mEncodedIcon:Ljava/lang/String;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 200
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "extracted_icon"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/model/ImageReceiver$IconParser;->mEncodedIcon:Ljava/lang/String;

    .line 203
    :cond_0
    return-void
.end method
