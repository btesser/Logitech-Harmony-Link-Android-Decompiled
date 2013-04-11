.class Lorg/jivesoftware/smack/Roster$1;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/Roster;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Roster;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster$1;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$1;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->setOfflinePresences()V
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$200(Lorg/jivesoftware/smack/Roster;)V

    .line 131
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$1;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->setOfflinePresences()V
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$200(Lorg/jivesoftware/smack/Roster;)V

    .line 136
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter

    .prologue
    .line 140
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
