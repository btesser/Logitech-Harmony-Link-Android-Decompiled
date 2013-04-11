.class public Lcom/logitech/harmonylink/model/FavoriteChannel;
.super Ljava/lang/Object;
.source "FavoriteChannel.java"


# instance fields
.field private mChannelIconPath:Ljava/lang/String;

.field private mChannelName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "url"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/logitech/harmonylink/model/FavoriteChannel;->mChannelName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/logitech/harmonylink/model/FavoriteChannel;->mChannelIconPath:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getChannelIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/logitech/harmonylink/model/FavoriteChannel;->mChannelIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/logitech/harmonylink/model/FavoriteChannel;->mChannelName:Ljava/lang/String;

    return-object v0
.end method
