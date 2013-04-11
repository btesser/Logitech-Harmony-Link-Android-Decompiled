.class final Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    new-instance v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 85
    return-void
.end method
